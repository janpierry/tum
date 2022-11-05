import 'package:flutter_test/flutter_test.dart';
import 'package:tum/domain/entities/quiz/question_option/options/sort_question_option.dart';

void main() {
  group(
    'Test entity equatable props',
    () {
      test(
        'Two entities with same props should be equal',
        () {
          const first = SortQuestionOption(text: 'text', sortPosition: 1);
          const second = SortQuestionOption(text: 'text', sortPosition: 1);
          assert(first == second);
        },
      );
      test(
        'Two entities with different [text] should not be equal',
        () {
          const first = SortQuestionOption(text: 'text', sortPosition: 1);
          const second = SortQuestionOption(text: 'text1', sortPosition: 1);
          assert(first != second);
        },
      );
      test(
        'Two entities with different [sortPosition] should not be equal',
        () {
          const first = SortQuestionOption(text: 'text', sortPosition: 1);
          const second = SortQuestionOption(text: 'text', sortPosition: 2);
          assert(first != second);
        },
      );
    },
  );
}
