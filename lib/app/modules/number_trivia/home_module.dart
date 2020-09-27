import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/data/repositories/number_trivia_repository_implementation.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/presentation/mobx/number_trivia_controller.dart';


import 'presentation/page/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $NumberTriviaRemoteDataSource,
        $NumberTriviaRepositoryImplementation,
        $GetConcreteNumberTrivia,
        $NumberTriviaController,
        Bind((_) => Dio())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
