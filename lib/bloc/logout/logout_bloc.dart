
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/library.dart';



part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LogoOutEvent>(_logoOut);
  }

  void _logoOut(LogoOutEvent event,Emitter emit)async{
    emit(LogoutLoading());

    final respons =await HttpService.logoOut();
    if(respons){
      emit(LogoutSuccess());
    }else{
      emit(LogoutFailure());
    }
  }
}
