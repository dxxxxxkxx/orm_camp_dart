import 'dart:convert';
import 'dart:io';

import '../post.dart';
import '../post_repository.dart';

class PostFileRepositoryImpl implements PostRepository {
  final File _jsonFile;
  List<Post?> _posts;

  PostFileRepositoryImpl()
      : _jsonFile = File('lib/2023_12_18/exercises/n5/mock/json_file.txt'),
        _posts = [] {
    _initPosts();
  }

  Future<void> _initPosts() async {
    _posts = await getPosts();
  }

  Future<void> _savePosts() async {
    if (await _jsonFile.exists()) {
      final String jsonString =
          jsonEncode(_posts.map((final post) => post?.toJson()).toList());

      if (jsonString.isNotEmpty) {
        await _jsonFile.writeAsString(jsonString);
      }
    } else {
      throw Exception('No such file to write');
    }
  }

  @override
  Future<List<Post?>> getPosts() async {
    if (await _jsonFile.exists()) {
      final String jsonString = await _jsonFile.readAsString();
      final List<Post?> postList;

      try {
        if (jsonString.isNotEmpty && jsonString != '\'\'') {
          postList = (jsonDecode(jsonString) as List<dynamic>)
              .map((final dynamic post) =>
                  Post.fromJson(post as Map<String, dynamic>))
              .toList();
        } else {
          postList = [];
        }

        return postList;
      } catch (e) {
        throw Exception('Can\'t decode json.');
      }
    } else {
      throw Exception('No such file to read');
    }
  }

  @override
  Future<void> addPost(Post post) async {
    post.index = _posts.isNotEmpty ? _posts.first?.index ?? 1 : 1;

    for (int i = 0; i < _posts.length - 1; i++) {
      int nextIndex = (_posts[i + 1]?.index ?? 1);

      if ((_posts[i]?.index ?? 1) <= nextIndex) {
        post.index = nextIndex + 1;
      }
    }

    _posts.add(post);
    await _savePosts();
  }

  @override
  Future<void> deletePost(Post post) async {
    Post? userPost = _posts.cast<Post?>().firstWhere(
        (final Post? p) =>
            (p?.index == post.index) && (p?.userId == post.userId),
        orElse: () => null);

    if (userPost != null) {
      _posts.remove(userPost);
      await _savePosts();
    } else {
      print('No such post to delete.');
    }
  }

  @override
  Future<void> updatePost(Post post) async {
    final Post? userPost = _posts.cast<Post?>().firstWhere(
        (final Post? p) =>
            (p?.index == post.index) && (p?.userId == post.userId),
        orElse: () => null);

    if (userPost != null) {
      userPost.title = post.title;
      userPost.body = post.body;
      await _savePosts();
    } else {
      print('No such post to update.');
    }
  }
}
