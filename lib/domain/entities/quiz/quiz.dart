import 'package:equatable/equatable.dart';
import 'package:tum/domain/entities/quiz/question.dart';

class Quiz extends Equatable {
  final List<Question> questions;
  final bool isFinished;

  const Quiz({required this.questions, this.isFinished = false});

  @override
  List<Object?> get props => [questions, isFinished];
}
