import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/repository/repository.dart';

part 'science_value_event.dart';
part 'science_value_state.dart';

class ScienceValueBloc extends Bloc<ScienceValueEvent, ScienceValueState> {
  ScienceValueBloc() : super(ScienceValueInitial()) {
    on<ScienceValuePost>(_scienceValue);
  }

  void _scienceValue(ScienceValuePost event, Emitter emit)async{
    emit(ScienceValueLoading());

    final data = {
      "scienceId": event.scienceId,
      "question": event.question,
      "correctAnswer": event.correctAnswer,
      "answer1": event.answer1,
      "answer2": event.answer2,
      "answer3": event.answer3
    };

    final repo = await (repository as RepositoryImplementation).network.methodMakeTest(api: Api.postCreateScience, data: data);
    print('CreateScienceBloc:::===>$repo <====');
    if(repo){
      emit(ScienceValueSuccess());
    }
  }
}
