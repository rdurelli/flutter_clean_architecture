import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapphelloback/app/core/const/urls.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/number_trivia.dart';
import '../models/number_trivia_model.dart';

part 'number_trivia_remote_data_source.g.dart';

@Injectable()
class NumberTriviaRemoteDataSource {
  final Dio client;
  final Map<String, dynamic> headers = {'Content-Type': 'application/json'};
  NumberTriviaRemoteDataSource({@required this.client});

  Future<NumberTrivia> getConcreteNumberTrivia(int number) async {
    var response = await client.get(BASE_URL + '$number/trivia',
        options: Options(headers: headers));
    print(response.data);
    if (response.statusCode == 200) {
      NumberTrivia numberTrivia = NumberTrivialModel.fromJson(response.data).toEntity();
      return numberTrivia;
    } else if (response.statusCode == 404) {
      throw NotFoundFailure();
    }
  }
}
