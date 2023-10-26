
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ispublic_event.dart';
part 'ispublic_state.dart';

class IspublicBloc extends Bloc<IspublicEvent, IspublicState> {
  IspublicBloc() : super(IspublicInitial()) {
    on<SelectedIsPublicEvent>(_selectedIsPublic);
  }
  void _selectedIsPublic(SelectedIsPublicEvent event ,Emitter emit){
    emit(SelectedCategoryIsPublicSuccessState(isPublic: event.isPublic));
  }
}
