part of 'selected_category_bloc.dart';

abstract class SelectedCategoryEvent extends Equatable {
  const SelectedCategoryEvent();
}

class SelectedEvent extends SelectedCategoryEvent{
  final String item;
  final int index;

  const SelectedEvent({required this.item, required this.index});

  @override
  List<Object?> get props => [item,index];
}

