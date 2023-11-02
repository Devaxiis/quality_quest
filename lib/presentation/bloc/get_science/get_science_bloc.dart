import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/model/get_science/get_science.dart';
import 'package:quality_quest/domain/repository/repository.dart';

part 'get_science_event.dart';
part 'get_science_state.dart';

class GetScienceBloc extends Bloc<GetScienceEvent, GetScienceState> {
  GetScienceBloc() : super(GetScienceInitial()) {
    on<GetAllScience>(_getScience);
  }


  void _getScience(GetAllScience event, Emitter emit)async{
    emit(GetScienceLoading());

    final data =await (repository as RepositoryImplementation).network.methodGetAllScience(api: Api.getAllScience);
    final sortList =mySort(data,event.scienceID);

    if(sortList.isNotEmpty){
      emit(GetScienceSuccess(getScience: sortList));
    }else{
      emit(GetScienceFailure("Nimadur muammo chiqardi. Iltimos keyring urinib ko'ring!"));
    }
  }
}

List<GetScienceModel> mySort(List<GetScienceModel> data,String scienceID){
  Map scienceName = {'Ona Tili':'8', 'Adabiyot':'9','Ingliz tili':'10','Matematika':'11','Fizika':'12','Kimyo':'13','Biologiya':'14','Geografiya':'15','Tarix':'16'};
  List<GetScienceModel> sortList = [];
    final String? index = scienceName[scienceID];
  for(int i = 0;i < data.length;i++){
    if(data[i].scienceTypeId.toString() == index){
      sortList.add(data[i]);
    }
  }
  return sortList;
}
