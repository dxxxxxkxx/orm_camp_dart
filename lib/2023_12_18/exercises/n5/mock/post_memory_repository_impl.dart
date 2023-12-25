import 'dart:convert';

import '../post.dart';
import '../post_repository.dart';
import 'json_memory.dart';

class PostMemoryRepositoryImpl implements PostRepository {
  final JsonMemory _jsonMemory;
  List<Post?> _posts;

  PostMemoryRepositoryImpl()
      : _jsonMemory = JsonMemory(),
        _posts = [] {
    _initPosts();
  }

  Future<void> _initPosts() async {
    _posts = await getPosts();
  }

  Future<void> _savePosts() async {
    final String jsonString =
        jsonEncode(_posts.map((final post) => post?.toJson()).toList());

    if (jsonString.isNotEmpty) {
      _jsonMemory.jsonString = jsonString;
    }
  }

  @override
  Future<List<Post?>> getPosts() async {
    final String? jsonString = _jsonMemory.jsonString;
    final List<Post?> postList;

    if (jsonString != null && jsonString.isNotEmpty) {
      try {
        postList = (jsonDecode(jsonString) as List<dynamic>)
            .map((final dynamic post) =>
                Post.fromJson(post as Map<String, dynamic>))
            .toList();
      } catch (e) {
        throw Exception('Can\'t decode json.');
      }
    } else {
      postList = [];
    }

    return Future.value(postList);
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
