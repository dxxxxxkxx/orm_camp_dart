import 'post.dart';
import 'post_repository.dart';

class PostManager {
  final PostRepository _postRepository;

  const PostManager({required PostRepository postRepository})
      : _postRepository = postRepository;

  Future<List<Post?>> getPosts() async => await _postRepository.getPosts();

  Future<void> addPost(final Post post) async =>
      await _postRepository.addPost(post);

  Future<void> deletePost(final Post post) async =>
      await _postRepository.deletePost(post);

  Future<void> updatePost(final Post post) async =>
      await _postRepository.updatePost(post);
}
