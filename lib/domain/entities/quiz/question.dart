import 'package:equatable/equatable.dart';
import 'package:tum/domain/entities/quiz/question_option/question_option.dart';
import 'package:tum/domain/entities/quiz/reward.dart';

class Question extends Equatable {
  final String text;
  final bool isAnswered;
  final QuestionType questionType;
  final List<QuestionOption> options;
  final Reward? reward;

  const Question({
    required this.text,
    this.isAnswered = false,
    required this.questionType,
    required this.options,
    this.reward,
  });

  @override
  List<Object?> get props => [text, isAnswered, questionType, options, reward];
}

enum QuestionType { singleAnswer, multiAnswer, orderAnswer }
