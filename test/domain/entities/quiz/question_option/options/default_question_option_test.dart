import 'package:flutter_test/flutter_test.dart';
import 'package:tum/domain/entities/quiz/question_option/options/default_question_option.dart';

void main() {
  group(
    'Test entity equatable props',
    () {
      test(
        'Two entities with same props should be equal',
        () {
          const first = DefaultQuestionOption(text: 'text', isCorrect: true);
          const second = DefaultQuestionOption(text: 'text', isCorrect: true);
          assert(first == second);
        },
      );
      test(
        'Two entities with different [text] should not be equal',
        () {
          const first = DefaultQuestionOption(text: 'text');
          const second = DefaultQuestionOption(text: 'text1');
          assert(first != second);
        },
      );
      test(
        'Two entities with different [isCorrect] should not be equal',
        () {
          const second = DefaultQuestionOption(text: 'text');
          const first = DefaultQuestionOption(text: 'text', isCorrect: true);
          assert(first != second);
        },
      );
    },
  );
}
