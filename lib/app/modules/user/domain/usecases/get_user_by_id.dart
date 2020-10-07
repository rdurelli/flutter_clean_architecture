import 'package:equatable/equatable.dart';
import 'package:flutterapphelloback/app/core/usecase/usecase.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

class GetUserById implements UseCase<User, Params> {
  final UserRepository repository;

  GetUserById({@required this.repository});

  @override
  Future<User> call(Params params) async {
    return await this.repository.getUserById(id: params.id);
  }
}

class Params extends Equatable {
  String id;

  Params({@required this.id});

  @override
  List<Object> get props => [this.id];
}
