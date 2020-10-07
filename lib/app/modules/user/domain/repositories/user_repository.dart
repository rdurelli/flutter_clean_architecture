import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';

abstract class UserRepository {
 Future<List<User>> getAllUsers();
 Future<User> getUserById(String id);
 Future<void> saveUser(User user);
 Future<void> updateUser(User user);
 Future<void> deleteUser(String id);
}