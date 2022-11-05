import 'package:dartz/dartz.dart';
import 'package:tum/core/types/error/failures.dart';
import 'package:tum/core/types/success.dart';
import 'package:tum/domain/entities/quiz/quiz.dart';

abstract class QuizRepository {
  Future<Either<Failure, Quiz>> startQuiz();
  Future<Either<Failure, Success>> saveQuestion();
}
