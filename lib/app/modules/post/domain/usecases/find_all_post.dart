import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';
import 'package:flutterapphelloback/app/modules/post/domain/repositories/post_repository.dart';
import 'package:meta/meta.dart';

class FindAllPost {
  final PostRepository postRepository;

  const FindAllPost({
    @required this.postRepository,
  });

  Future<List<Post>> execute() async {
    return await this.postRepository.findAllPost();
  }
}
