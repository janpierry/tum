import 'package:dartz/dartz.dart';
import 'package:tum/core/error/failures.dart';
import 'package:tum/features/quiz/domain/entities/question.dart';

abstract class QuizRepository {
  Future<Either<Failure, Question>> startQuiz();
}
