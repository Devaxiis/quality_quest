part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchScienceEvent extends SearchEvent {
  final String title;

  const SearchScienceEvent({required this.title});

  @override
  List<Object?> get props => [title];
}
