
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'setimage_event.dart';
part 'setimage_state.dart';

class SetimageBloc extends Bloc<SetimageEvent, SetimageState> {
  SetimageBloc() : super(SetimageInitial()) {
    on<SetImageOneEvent>(_setImage);
  }
  
  void _setImage(SetImageOneEvent event, Emitter emit){
    emit(SetImageLoading());
    emit(SetImageSuccess(image: event.image));
  }
}
