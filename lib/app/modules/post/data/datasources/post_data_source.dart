import 'package:dio/dio.dart';
import 'package:flutterapphelloback/app/core/const/urls.dart';
import 'package:flutterapphelloback/app/modules/post/data/models/post_model.dart';
import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';

class PostDataSource {
  final Dio client;
  final Map<String, dynamic> headers = {'Content-Type': 'application/json'};

  PostDataSource({this.client});

  Future<List<Post>> findAllPost() async {
    List<Post> toSend;
    var response = await client.get(BASE_URL_JSON_PLACE,
        options: Options(headers: headers));

    if (response.statusCode == 200) {
      toSend = (response.data as List).map((post) {
        return PostModel.fromJson(post).toEntity();
      }).toList();
    }

    return toSend;
  }

  Future<Post> findPostById(int id) async {
    Post toSend;
    var response = await client.get('$BASE_URL_JSON_PLACE/$id',
        options: Options(headers: headers));

    if (response.statusCode == 200) {
      toSend = PostModel.fromJson(response.data).toEntity();
    }

    return toSend;

  }
}
