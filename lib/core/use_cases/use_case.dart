part of '../index.dart';

abstract class UseCase<Type, FirstParam, SecondParam> {
  Future<Either<Failure, Type>> call([
    FirstParam firstParam,
    SecondParam secondParam,
  ]);
}
