
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/library.dart';

part 'create_science_event.dart';
part 'create_science_state.dart';

class CreateScienceBloc extends Bloc<CreateScienceEvent, CreateScienceState> {
  CreateScienceBloc() : super(CreateScienceInitial()) {
    on<CreateScienceNameEvent>(_createScience);
  }
  
  void _createScience(CreateScienceNameEvent event, Emitter emit)async{
    emit(CreateScienceLoading());

    final data = {
     "name": event.name,
     "isPrivate":event.isPrivate,
     "scienceTypeId":event.scienceTypeId,
     "userId":event.userId,
     // "phoroUrl":event.phoroUrl,
    };
    
    final repo = await HttpService.createScience(api: Api.getScience, data: data);
    if(repo){
      emit(CreateScienceSuccess());
    }else{
      emit(CreateScienceFailure());
    }
  }
}
