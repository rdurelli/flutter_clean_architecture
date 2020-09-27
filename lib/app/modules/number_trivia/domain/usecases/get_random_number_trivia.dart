import 'package:flutter_modular/flutter_modular.dart';

import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia {
  final NumberTriviaRepository _repository;

  GetRandomNumberTrivia(this._repository);

  Future<NumberTrivia> execute() async {
    return await this._repository.getRandomNumberTrivia();
  }
}
