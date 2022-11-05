import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tum/core/types/error/failures.dart';
import 'package:tum/domain/entities/quiz/question.dart';
import 'package:tum/domain/entities/quiz/question_option/options/default_question_option.dart';
import 'package:tum/domain/entities/quiz/quiz.dart';
import 'package:tum/domain/repositories/quiz/quiz_repository.dart';
import 'package:tum/domain/usecases/quiz/start_quiz.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

void main() {
  late StartQuiz usecase;
  late MockQuizRepository mockQuizRepository;

  setUp(() {
    mockQuizRepository = MockQuizRepository();
    usecase = StartQuiz(repository: mockQuizRepository);
  });

  const quiz = Quiz(questions: [
    Question(
      text: 'Qual a resposta para esta pergunta?',
      questionType: QuestionType.singleAnswer,
      options: [
        DefaultQuestionOption(text: 'Primeira alternativa'),
        DefaultQuestionOption(text: 'Segunda alternativa'),
        DefaultQuestionOption(text: 'Terceira alternativa', isCorrect: true),
        DefaultQuestionOption(text: 'Quarta alternativa'),
      ],
    ),
  ]);

  test(
    'Should return a [Quiz] when repository call is successfull',
    () async {
      // arrange
      when(() => mockQuizRepository.startQuiz())
          .thenAnswer((_) async => const Right(quiz));
      // act
      final result = await usecase();
      // assert
      expect(result, const Right(quiz));
    },
  );

  test(
    'Should return [Failure] when repository call fails',
    () async {
      // arrange
      when(() => mockQuizRepository.startQuiz())
          .thenAnswer((_) async => const Left(DefaultFailure()));
      // act
      final result = await usecase();
      // assert
      expect(result, const Left(DefaultFailure()));
    },
  );
}
