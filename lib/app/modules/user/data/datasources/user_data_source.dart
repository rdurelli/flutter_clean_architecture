import 'package:dio/dio.dart';
import 'package:flutterapphelloback/app/core/api/users/rest_client.dart';
import 'package:flutterapphelloback/app/core/error/failures.dart';
import 'package:flutterapphelloback/app/modules/user/data/models/user_model.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';

class UserDataSource {
  final RestClient client;
  UserDataSource({this.client});

  Future<User> getUserById(String id) async {
    UserModel userModel;
    User user;
    await this
        .client
        .getUserById(id)
        .then((value) => userModel = value)
        .catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          throw Failure();
          break;
      }
    });
    if (userModel != null) {
      user = userModel.toEntity();
    }
    return user;
  }

  Future<List<User>> getAllUsers() async {
    List<UserModel> userModels;
    List<User> users;
    await this.client.getAllUsers().then((value) {
      userModels = value;
    }).catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          throw Failure();
          break;
      }
    });

    if (userModels != null) {
      users = userModels.map((user) => user.toEntity()).toList();
    }

    return users;
  }
}
