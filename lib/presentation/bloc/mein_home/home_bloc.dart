
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<MainHomeEvent>(_mainHome);
  }

  void _mainHome(MainHomeEvent event,Emitter emit){
    emit(HomeSuccess(event.index));
  }

}
