import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tum/core/types/error/failures.dart';
import 'package:tum/core/types/success.dart';
import 'package:tum/domain/entities/quiz/question.dart';
import 'package:tum/domain/entities/quiz/question_option/options/default_question_option.dart';
import 'package:tum/domain/repositories/quiz/quiz_repository.dart';
import 'package:tum/domain/usecases/quiz/answer_question.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

void main() {
  late AnswerQuestion usecase;
  late MockQuizRepository mockQuizRepository;

  setUp(() {
    mockQuizRepository = MockQuizRepository();
    usecase = AnswerQuestion(repository: mockQuizRepository);
  });

  const question = Question(
    text: 'Qual a resposta para esta pergunta?',
    questionType: QuestionType.singleAnswer,
    options: [
      DefaultQuestionOption(text: 'Primeira alternativa'),
      DefaultQuestionOption(text: 'Segunda alternativa'),
      DefaultQuestionOption(text: 'Terceira alternativa', isCorrect: true),
      DefaultQuestionOption(text: 'Quarta alternativa'),
    ],
    isAnswered: true,
  );
  const success = Success();
  const failure = DefaultFailure();

  test(
    'Should return [Success] when repository call is successfull',
    () async {
      // arrange
      when(() => mockQuizRepository.saveQuestion())
          .thenAnswer((_) async => const Right(success));
      // act
      final result = await usecase(question: question);
      // assert
      expect(result, const Right(success));
    },
  );

  test(
    'Should return [Failure] when repository call fails',
    () async {
      // arrange
      when(() => mockQuizRepository.saveQuestion())
          .thenAnswer((_) async => const Left(failure));
      // act
      final result = await usecase(question: question);
      // assert
      expect(result, const Left(failure));
    },
  );
}
