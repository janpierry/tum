import 'package:equatable/equatable.dart';

class Answer extends Equatable {
  final String text;
  final bool isCorrect;

  const Answer({required this.text, this.isCorrect = false});

  @override
  List<Object?> get props => [text, isCorrect];
}
