part of 'my_question_bloc.dart';

abstract class MyQuestionEvent extends Equatable {
  const MyQuestionEvent();
}

class MyAllQuestions extends MyQuestionEvent{
  int id;

  MyAllQuestions({required this.id});

  @override
  List<Object?> get props => [id];
}