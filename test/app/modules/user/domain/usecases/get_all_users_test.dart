import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapphelloback/app/core/usecase/usecase.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:flutterapphelloback/app/modules/user/domain/usecases/get_all_user.dart';
import 'package:mockito/mockito.dart';

//Cria um mock da nossa interface UserRepository
class MockUserRepository extends Mock implements UserRepository {}

void main() {
  GetAllUser useCase;
  MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = GetAllUser(repository: mockUserRepository);
  });

  var faker = new Faker();

  User user1 = User(
    id: faker.guid.toString(),
    name: faker.person.name(),
    avatar: faker.internet.httpUrl(),
    createdAt: faker.date.time(),
  );
  User user2 = User(
    id: faker.guid.toString(),
    name: faker.person.name(),
    avatar: faker.internet.httpUrl(),
    createdAt: faker.date.time(),
  );
  User user3 = User(
    id: faker.guid.toString(),
    name: faker.person.name(),
    avatar: faker.internet.httpUrl(),
    createdAt: faker.date.time(),
  );

  List<User> users = [user1, user2, user3];

  //caminho feliz
  test('deveria retornar uma lista de usuários', () async {
    //arrange
    when(mockUserRepository.getAllUsers())
        .thenAnswer((realInvocation) async => users);

    //act
    final result = await useCase.call(NoParams());

    //assert
    expect(result, users);
    verify(mockUserRepository.getAllUsers());

  });
}
