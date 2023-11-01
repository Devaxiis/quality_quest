
part of 'science_value_bloc.dart';

abstract class ScienceValueEvent extends Equatable {
  const ScienceValueEvent();
}


class ScienceValuePost extends ScienceValueEvent{
  int scienceId;
  String question;
  String correctAnswer;
  String answer1;
  String answer2;
  String answer3;

  ScienceValuePost({
    required this.scienceId,
    required this.question,
    required this.correctAnswer,
    required this.answer1,
    required this.answer2,
    required this.answer3,
  });

  @override
  List<Object?> get props => [scienceId,question,correctAnswer,answer1,answer2,answer3];
}