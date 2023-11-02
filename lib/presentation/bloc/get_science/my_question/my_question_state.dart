part of 'my_question_bloc.dart';

abstract class MyQuestionState extends Equatable {
  const MyQuestionState();
}

class MyQuestionInitial extends MyQuestionState {
  @override
  List<Object> get props => [];
}
class MyQuestionLoading extends MyQuestionState {
  @override
  List<Object> get props => [];
}

class MyQuestionFailure extends MyQuestionState {
  @override
  List<Object> get props => [];
}

class MyQuestionSuccess extends MyQuestionState {
  final List<GetScienceModel> myScience;

  const MyQuestionSuccess({required this.myScience});

  @override
  List<Object> get props => [myScience];
}
