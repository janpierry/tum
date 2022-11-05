import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class DefaultFailure extends Failure {
  const DefaultFailure();

  @override
  List<Object?> get props => [];
}
