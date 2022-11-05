import 'package:flutter_test/flutter_test.dart';
import 'package:tum/domain/entities/quiz/question.dart';
import 'package:tum/domain/entities/quiz/quiz.dart';

void main() {
  group(
    'Test entity equatable props',
    () {
      test(
        'Two entities with same props should be equal',
        () {
          const first = Quiz(questions: []);
          const second = Quiz(questions: []);
          assert(first == second);
        },
      );

      test(
        'Two entities with different [questions] should not be equal',
        () {
          const first = Quiz(questions: []);
          const second = Quiz(questions: [
            Question(
              text: 'text',
              questionType: QuestionType.singleAnswer,
              options: [],
            )
          ]);
          assert(first != second);
        },
      );

      test(
        'Two entities with different [isFinished] should not be equal',
        () {
          const first = Quiz(questions: []);
          const second = Quiz(questions: [], isFinished: true);
          assert(first != second);
        },
      );
    },
  );
}
