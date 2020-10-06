import 'dart:collection';

import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:flutterapphelloback/app/modules/post/data/datasources/post_data_source.dart';
import 'package:flutterapphelloback/app/modules/post/data/repositories/post_repository_implementation.dart';
import 'package:flutterapphelloback/app/modules/post/domain/repositories/post_repository.dart';
import 'package:flutterapphelloback/app/modules/post/domain/usecases/find_all_post.dart';
import 'package:flutterapphelloback/app/modules/post/domain/usecases/find_post_by_id.dart';

void main() async {
  List<Map<String, dynamic>> persons = [
    {'name': 'ARafael', 'age': 18},
    {'name': 'APatricia', 'age': 21},
    {'name': 'AIsabela', 'age': 15}
  ];

  PostDataSource postDataSource = PostDataSource(client: Dio());

  PostRepository postRepository =
      PostRepositoryImplementation(postDataSource: postDataSource);

  FindAllPost findAllPost = FindAllPost(postRepository: postRepository);

  var response = await findAllPost.execute();

  print(response);

  print("_______________________________-------------------------------------"
      "_________________");

  FindPostById findPostById = FindPostById(postRepository: postRepository);
  var postResponse = await findPostById.execute(id: 2);
  print(postResponse);
}
