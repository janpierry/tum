import 'package:equatable/equatable.dart';

abstract class QuestionOption extends Equatable {
  final String text;

  const QuestionOption({required this.text});

  @override
  List<Object?> get props => [text];
}
