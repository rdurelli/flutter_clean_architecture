import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Post extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Post({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.completed,
  });

  @override
  List<Object> get props => [userId, id, title, completed];

  @override
  bool get stringify => true;
}