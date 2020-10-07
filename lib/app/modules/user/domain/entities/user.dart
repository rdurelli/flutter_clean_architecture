import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String id;
  final String createdAt;
  final String name;
  final String avatar;

  User(
      {@required this.id,
      @required this.createdAt,
      @required this.name,
      @required this.avatar});

  @override
  List<Object> get props => [this.id, this.name, this.createdAt];

  @override
  bool get stringify => true;
}
