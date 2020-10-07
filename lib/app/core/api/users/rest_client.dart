import 'package:dio/dio.dart';
import 'package:flutterapphelloback/app/core/const/urls.dart';
import 'package:flutterapphelloback/app/modules/user/data/models/user_model.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: BASE_URL_MOCK_API)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/users')
  Future<List<UserModel>> getAllUsers();

  @GET('users/{id}')
  Future<UserModel> getUserById(@Path('id') String id);

  @POST("/users")
  Future<UserModel> createUser(@Body() UserModel user);

  @DELETE("/users/{id}")
  Future<void> deleteUser(@Path() String id);

}