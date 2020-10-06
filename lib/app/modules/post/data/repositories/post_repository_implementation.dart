import 'package:flutterapphelloback/app/modules/post/data/datasources/post_data_source.dart';
import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';
import 'package:flutterapphelloback/app/modules/post/domain/repositories/post_repository.dart';
import 'package:meta/meta.dart';

class PostRepositoryImplementation extends PostRepository {
  final PostDataSource postDataSource;

  PostRepositoryImplementation({@required this.postDataSource});

  @override
  Future<List<Post>> findAllPost() async{
    return await this.postDataSource.findAllPost();
  }

  @override
  Future<Post> findPostById(int id) async {
    return await this.postDataSource.findPostById(id);
  }
}
