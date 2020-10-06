import 'package:flutterapphelloback/app/modules/post/domain/entities/post.dart';
import 'package:meta/meta.dart';

class PostModel {
  int userId;
  int id;
  String title;
  bool completed;

  PostModel({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.completed,
  });

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }

  Post toEntity() => Post(
      id: this.userId,
      title: this.title,
      userId: this.userId,
      completed: this.completed);
}
