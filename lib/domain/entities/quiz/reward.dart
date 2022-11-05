import 'package:equatable/equatable.dart';

class Reward extends Equatable {
  final String description;

  const Reward({required this.description});

  @override
  List<Object?> get props => [description];
}
