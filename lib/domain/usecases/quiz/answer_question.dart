import 'package:dartz/dartz.dart';
import 'package:tum/core/types/error/failures.dart';
import 'package:tum/core/types/success.dart';
import 'package:tum/domain/entities/quiz/question.dart';
import 'package:tum/domain/repositories/quiz/quiz_repository.dart';

class AnswerQuestion {
  final QuizRepository _repository;

  AnswerQuestion({required QuizRepository repository})
      : _repository = repository;

  Future<Either<Failure, Success>> call({required Question question}) async {
    return await _repository.saveQuestion();
  }
}
