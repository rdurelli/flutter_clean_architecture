import 'package:flutter/cupertino.dart';
import 'package:flutterapphelloback/app/modules/user/data/datasources/user_data_source.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

class UserRepositoryImplementation implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImplementation({@required this.userDataSource});

  @override
  Future<void> deleteUser({String id}) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getAllUsers() async {
    return await this.userDataSource.getAllUsers();
  }

  @override
  Future<User> getUserById({String id}) async {
    return await this.userDataSource.getUserById(id);
  }

  @override
  Future<void> saveUser({User user}) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser({User user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
