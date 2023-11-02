
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/model/get_science/get_science.dart';
import 'package:quality_quest/domain/repository/repository.dart';
import 'package:quality_quest/presentation/bloc/get_science/get_science_bloc.dart';

part 'my_question_event.dart';
part 'my_question_state.dart';

class MyQuestionBloc extends Bloc<MyQuestionEvent, MyQuestionState> {
  MyQuestionBloc() : super(MyQuestionInitial()) {
    on<MyAllQuestions>(_myAllQuestion);
  }
  void _myAllQuestion(MyAllQuestions event, Emitter emit)async{
    emit(MyQuestionLoading());

    final data =await (repository as RepositoryImplementation).network.methodGetAllScience(api: Api.getAllScience);
    final sortList =mySort(data,event.id);

    if(sortList.isNotEmpty){
      emit(GetScienceSuccess(getScience: sortList));
    }else{
      emit(GetScienceFailure("Nimadur muammo chiqardi. Iltimos keyring urinib ko'ring!"));
    }

  }
}

List<GetScienceModel> mySort(List<GetScienceModel> data,int scienceID){
  List<GetScienceModel> sortList = [];
  for(int i = 0;i < data.length;i++){
    if(data[i].userId == scienceID){
      sortList.add(data[i]);
    }
  }
  return sortList;
}
