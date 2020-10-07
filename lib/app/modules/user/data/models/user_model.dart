import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(nullable: false)
class UserModel {
  String id;
  String createdAt;
  String name;
  String avatar;

  UserModel(
      {@required this.id,
      @required this.createdAt,
      @required this.name,
      @required this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity() => User(
      id: this.id,
      createdAt: this.createdAt,
      avatar: this.avatar,
      name: this.name);
}
