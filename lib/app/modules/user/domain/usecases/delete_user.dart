import 'package:flutterapphelloback/app/core/usecase/usecase.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

class DeleteUser implements UseCase<User, ParamsDeleteUser> {
  final UserRepository repository;

  DeleteUser({this.repository});

  @override
  Future<User> call(ParamsDeleteUser params) async{
    return await this.repository.deleteUser(id: params.id);
  }
}

class ParamsDeleteUser {
  final String id;

  ParamsDeleteUser({this.id});
}
