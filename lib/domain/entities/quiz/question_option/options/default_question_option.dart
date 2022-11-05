import 'package:tum/domain/entities/quiz/question_option/question_option.dart';

class DefaultQuestionOption extends QuestionOption {
  final bool isCorrect;

  const DefaultQuestionOption({
    required super.text,
    this.isCorrect = false,
  });

  @override
  List<Object?> get props => [text, isCorrect];
}
