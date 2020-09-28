import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repository.dart';
import '../../data/datasources/number_trivia_remote_data_source.dart';


part 'number_trivia_repository_implementation.g.dart';

@Injectable()
class NumberTriviaRepositoryImplementation implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remote;

  NumberTriviaRepositoryImplementation({@required this.remote});

  @override
  Future<NumberTrivia> getConcreteNumberTrivia(int number) async{
    NumberTrivia numberTrivia = await this.remote.getConcreteNumberTrivia(number);
    return numberTrivia;
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
