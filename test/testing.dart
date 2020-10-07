import 'dart:collection';

import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:flutterapphelloback/app/core/api/users/rest_client.dart';
import 'package:flutterapphelloback/app/core/usecase/usecase.dart';
import 'package:flutterapphelloback/app/modules/post/data/datasources/post_data_source.dart';
import 'package:flutterapphelloback/app/modules/post/data/repositories/post_repository_implementation.dart';
import 'package:flutterapphelloback/app/modules/post/domain/repositories/post_repository.dart';
import 'package:flutterapphelloback/app/modules/post/domain/usecases/find_all_post.dart';
import 'package:flutterapphelloback/app/modules/post/domain/usecases/find_post_by_id.dart';
import 'package:flutterapphelloback/app/modules/user/data/datasources/user_data_source.dart';
import 'package:flutterapphelloback/app/modules/user/data/repositories/user_repository_implementation.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:flutterapphelloback/app/modules/user/domain/usecases/get_all_user.dart';

void main() async {
  List<Map<String, dynamic>> persons = [
    {'name': 'ARafael', 'age': 18},
    {'name': 'APatricia', 'age': 21},
    {'name': 'AIsabela', 'age': 15}
  ];

//  PostDataSource postDataSource = PostDataSource(client: Dio());
//
//  PostRepository postRepository =
//      PostRepositoryImplementation(postDataSource: postDataSource);
//
//  FindAllPost findAllPost = FindAllPost(postRepository: postRepository);
//
//  var response = await findAllPost.execute();
//
//  print(response);
//
//  print("_______________________________-------------------------------------"
//      "_________________");
//
//  FindPostById findPostById = FindPostById(postRepository: postRepository);
//  var postResponse = await findPostById.execute(id: 2);
//  print(postResponse);
final client = RestClient(Dio());
UserDataSource userDataSource = UserDataSource(client: client);
UserRepository userRepository = UserRepositoryImplementation(userDataSource: userDataSource);
GetAllUser getAllUser = GetAllUser(repository: userRepository);
List<User> allUser = await getAllUser.call(NoParams());

print(allUser);

}
