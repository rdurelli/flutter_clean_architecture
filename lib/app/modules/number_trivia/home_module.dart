import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapphelloback/app/core/http/dio_connectivity_request_retrier.dart';
import 'package:flutterapphelloback/app/core/http/retry_interceptor.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/data/repositories/number_trivia_repository_implementation.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/presentation/mobx/number_trivia_controller.dart';

import 'presentation/page/home_page.dart';

class HomeModule extends ChildModule {
  final Dio _dio = Dio();

  HomeModule(){
    _dio.interceptors.add(RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
            dio: Dio(), connectivity: Connectivity())));
  }


  @override
  List<Bind> get binds => [
        Bind((_) => Connectivity()),
        $NumberTriviaRemoteDataSource,
        $NumberTriviaRepositoryImplementation,
        $GetConcreteNumberTrivia,
        $NumberTriviaController,
        Bind((i) => _dio)
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
