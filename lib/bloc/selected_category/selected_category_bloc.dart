import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selected_category_event.dart';
part 'selected_category_state.dart';

class SelectedCategoryBloc extends Bloc<SelectedCategoryEvent, SelectedCategoryState> {
  SelectedCategoryBloc() : super(SelectedCategoryInitial()) {
    on<SelectedEvent>(_selectedCategory);

  }

  void _selectedCategory(SelectedEvent event, Emitter emit){
  emit(SelectedCategoryLoading());

  emit(SelectedCategorySuccess(item: event.item,index: event.index));
  }



}
