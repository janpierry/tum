import 'package:dartz/dartz.dart';
import 'package:tum/core/error/failures.dart';
import 'package:tum/features/quiz/domain/entities/question.dart';
import 'package:tum/features/quiz/domain/repositories/quiz_repository.dart';

class StartQuiz {
  final QuizRepository repository;

  StartQuiz({required this.repository});

  Future<Either<Failure, Question>> call() async {
    return await repository.startQuiz();
  }
}
