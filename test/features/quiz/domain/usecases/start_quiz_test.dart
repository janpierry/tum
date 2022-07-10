import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tum/core/error/failures.dart';
import 'package:tum/features/quiz/domain/entities/answer.dart';
import 'package:tum/features/quiz/domain/entities/question.dart';
import 'package:tum/features/quiz/domain/repositories/quiz_repository.dart';
import 'package:tum/features/quiz/domain/usecases/start_quiz.dart';

import 'start_quiz_test.mocks.dart';

@GenerateMocks([QuizRepository])
void main() {
  late StartQuiz usecase;
  late MockQuizRepository mockQuizRepository;

  setUp(() {
    mockQuizRepository = MockQuizRepository();
    usecase = StartQuiz(repository: mockQuizRepository);
  });

  final question = Question(
    text: 'Qual a resposta para esta pergunta?',
    answers: const [
      Answer(text: 'Primeira alternativa'),
      Answer(text: 'Segunda alternativa'),
      Answer(text: 'Terceira alternativa', isCorrect: true),
      Answer(text: 'Quarta alternativa'),
    ],
  );

  test(
    'Should get the first question when the quiz is started successfully',
    () async {
      // arrange
      when(mockQuizRepository.startQuiz())
          .thenAnswer((_) async => Right(question));
      // act
      final result = await usecase();
      // assert
      expect(result, Right(question));
    },
  );

  test(
    'Should return a failure when the quiz start is unsuccessful',
    () async {
      // arrange
      when(mockQuizRepository.startQuiz())
          .thenAnswer((_) async => Left(DefaultFailure()));
      // act
      final result = await usecase();
      // assert
      expect(result, Left(DefaultFailure()));
    },
  );
}
