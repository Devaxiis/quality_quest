
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'library_event.dart';
part 'library_state.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc() : super(LibraryInitial()) {
    on<LibraryCount>(_counterLibrary);
  }

  void _counterLibrary(LibraryCount event ,Emitter emit){


    emit(LibrarySuccess());
  }
}
