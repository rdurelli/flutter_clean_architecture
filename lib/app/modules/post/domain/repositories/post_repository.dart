import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';

abstract class PostRepository {
  Future<List<Post>> findAllPost();
  Future<Post> findPostById(int id);
}