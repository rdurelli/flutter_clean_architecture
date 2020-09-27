// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NumberTriviaController = BindInject(
  (i) => NumberTriviaController(
      getConcreteNumberTrivia: i<GetConcreteNumberTrivia>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NumberTriviaController on _NumberTriviaControllerBase, Store {
  final _$numberTriviaAtom =
      Atom(name: '_NumberTriviaControllerBase.numberTrivia');

  @override
  NumberTrivia get numberTrivia {
    _$numberTriviaAtom.reportRead();
    return super.numberTrivia;
  }

  @override
  set numberTrivia(NumberTrivia value) {
    _$numberTriviaAtom.reportWrite(value, super.numberTrivia, () {
      super.numberTrivia = value;
    });
  }

  final _$isLoadedAtom = Atom(name: '_NumberTriviaControllerBase.isLoaded');

  @override
  bool get isLoaded {
    _$isLoadedAtom.reportRead();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.reportWrite(value, super.isLoaded, () {
      super.isLoaded = value;
    });
  }

  final _$getConcreteNumberAsyncAction =
      AsyncAction('_NumberTriviaControllerBase.getConcreteNumber');

  @override
  Future<void> getConcreteNumber({@required int number}) {
    return _$getConcreteNumberAsyncAction
        .run(() => super.getConcreteNumber(number: number));
  }

  @override
  String toString() {
    return '''
numberTrivia: ${numberTrivia},
isLoaded: ${isLoaded}
    ''';
  }
}
