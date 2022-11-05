import 'package:flutter_test/flutter_test.dart';
import 'package:tum/domain/entities/quiz/question.dart';
import 'package:tum/domain/entities/quiz/question_option/options/default_question_option.dart';
import 'package:tum/domain/entities/quiz/reward.dart';

void main() {
  group(
    'Test entity equatable props',
    () {
      test(
        'Two entities with same props should be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          assert(first == second);
        },
      );
      test(
        'Two entities with different [text] should not be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text1',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          assert(first != second);
        },
      );
      test(
        'Two entities with different [questionType] should not be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text',
            questionType: QuestionType.multiAnswer,
            options: [],
          );
          assert(first != second);
        },
      );
      test(
        'Two entities with different [options] should not be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [DefaultQuestionOption(text: 'text')],
          );
          assert(first != second);
        },
      );
      test(
        'Two entities with different [isAnswered] should not be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
            isAnswered: true,
          );
          assert(first != second);
        },
      );
      test(
        'Two entities with different [reward] should not be equal',
        () {
          const first = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
          );
          const second = Question(
            text: 'text',
            questionType: QuestionType.singleAnswer,
            options: [],
            reward: Reward(description: 'description'),
          );
          assert(first != second);
        },
      );
    },
  );
}
