import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';
import 'package:flutterapphelloback/app/modules/post/domain/repositories/post_repository.dart';
import 'package:meta/meta.dart';

class FindPostById {
  final PostRepository postRepository;

  const FindPostById({
    @required this.postRepository,
  });

  Future<Post> execute({@required int id}) async {
    return await this.postRepository.findPostById(id);
  }
}
