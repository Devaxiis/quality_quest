
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/data/store.dart';



part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LogoOutEvent>(_logoOut);
  }

  void _logoOut(LogoOutEvent event,Emitter emit)async{
    emit(LogoutLoading());


  }
}
