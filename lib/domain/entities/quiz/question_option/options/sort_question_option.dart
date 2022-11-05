import 'package:tum/domain/entities/quiz/question_option/question_option.dart';

class SortQuestionOption extends QuestionOption {
  final int sortPosition;

  const SortQuestionOption({
    required super.text,
    required this.sortPosition,
  });

  @override
  List<Object?> get props => [text, sortPosition];
}
