import 'package:dartz/dartz.dart';
import 'package:tum/core/types/error/failures.dart';
import 'package:tum/domain/entities/quiz/quiz.dart';
import 'package:tum/domain/repositories/quiz/quiz_repository.dart';

class StartQuiz {
  final QuizRepository _repository;

  StartQuiz({required QuizRepository repository}) : _repository = repository;

  Future<Either<Failure, Quiz>> call() async {
    return await _repository.startQuiz();
  }
}
