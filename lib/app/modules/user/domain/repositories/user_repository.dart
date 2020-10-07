import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:meta/meta.dart';

abstract class UserRepository {
  Future<List<User>> getAllUsers();
  Future<User> getUserById({@required String id});
  Future<void> saveUser({@required User user});
  Future<void> updateUser({@required User user});
  Future<void> deleteUser({@required String id});
}
