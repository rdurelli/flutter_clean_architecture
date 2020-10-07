import 'package:flutterapphelloback/app/core/usecase/usecase.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

class GetAllUser implements UseCase<List<User>, NoParams>{
  final UserRepository repository;

  GetAllUser({@required this.repository});

  @override
  Future<List<User>> call(NoParams params) async {
    return await this.repository.getAllUsers();
  }
}
