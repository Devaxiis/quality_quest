
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/repository/repository.dart';
import 'package:quality_quest/library.dart';



part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LogoOutEvent>(_logoOut);
  }

  void _logoOut(LogoOutEvent event,Emitter emit)async{
    emit(LogoutLoading());

    final respons =await (repository as RepositoryImplementation).network.logoOut();
    if(respons){
      emit(LogoutSuccess());
    }else{
      emit(LogoutFailure());
    }
  }
}
