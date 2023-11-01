part of 'selected_category_bloc.dart';

abstract class SelectedCategoryState extends Equatable {
  const SelectedCategoryState();
}

class SelectedCategoryInitial extends SelectedCategoryState {
  @override
  List<Object> get props => [];
}

class SelectedCategoryLoading extends SelectedCategoryState {
  @override
  List<Object> get props => [];
}
class SelectedCategoryFailure extends SelectedCategoryState {
  final String message;

  const SelectedCategoryFailure({required this.message});

  @override
  List<Object> get props => [message];
}
class SelectedCategorySuccess extends SelectedCategoryState {
  final String item;
  final int index;
  const SelectedCategorySuccess({required this.item,required this.index});

  @override
  List<Object> get props => [item,index];
}



