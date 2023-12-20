import 'post.dart';

abstract interface class PostRepository {
  Future<List<Post?>> getPosts();

  Future<void> addPost(final Post post);

  Future<void> deletePost(final Post post);

  Future<void> updatePost(final Post post);
}
