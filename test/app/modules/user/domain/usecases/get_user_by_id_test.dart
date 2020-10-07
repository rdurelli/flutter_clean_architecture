import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapphelloback/app/modules/user/domain/entities/user.dart';
import 'package:flutterapphelloback/app/modules/user/domain/repositories/user_repository.dart';
import 'package:flutterapphelloback/app/modules/user/domain/usecases/get_user_by_id.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  GetUserById useCase;
  MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = GetUserById(repository: mockUserRepository);
  });

  var faker = new Faker();
  User user = User(
    id: faker.guid.toString(),
    name: faker.person.name(),
    avatar: faker.internet.httpUrl(),
    createdAt: faker.date.time(),
  );

  test('deveria retornar um usuário', () async {
    //arrange
    when(mockUserRepository.getUserById(id: anyNamed("id")))
        .thenAnswer((realInvocation) async => user);

    //act
    final result = await useCase.call(Params(id: user.id));

    //assert
    expect(result, user);
    verify(mockUserRepository.getUserById(id: anyNamed("id")));
  });
}
