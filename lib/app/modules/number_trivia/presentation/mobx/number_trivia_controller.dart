import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/number_trivia.dart';
import '../../domain/usecases/get_concrete_number_trivia.dart';

part 'number_trivia_controller.g.dart';

@Injectable()
class NumberTriviaController = _NumberTriviaControllerBase
    with _$NumberTriviaController;

abstract class _NumberTriviaControllerBase with Store {
  GetConcreteNumberTrivia getConcreteNumberTrivia;

  _NumberTriviaControllerBase({@required this.getConcreteNumberTrivia});

  @observable
  NumberTrivia numberTrivia;

  @observable
  bool isLoaded;

  @action
  Future<void> getConcreteNumber({@required int number}) async {
    this.isLoaded = false;
    this.numberTrivia =
        await this.getConcreteNumberTrivia.execute(number: number);
    this.isLoaded = true;
  }
}
