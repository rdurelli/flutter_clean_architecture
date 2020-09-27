import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

part 'get_concrete_number_trivia.g.dart';

@Injectable()
class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<NumberTrivia> execute({@required int number}) async {
    return await this.repository.getConcreteNumberTrivia(number);
  }
}
