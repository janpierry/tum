import 'package:equatable/equatable.dart';
import 'package:tum/features/quiz/domain/entities/answer.dart';

class Question extends Equatable {
  final String text;
  final QuestionType type;
  final List<Answer> answers;

  const Question({
    required this.text,
    this.type = QuestionType.singleAnswer,
    required this.answers,
  }) : assert(answers.length == numberOfAnswers);

  @override
  List<Object?> get props => [text, type, answers];
}

enum QuestionType {
  singleAnswer,
  multiAnswer,
  orderAnswer,
}

const numberOfAnswers = 4;
