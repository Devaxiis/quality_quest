part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();
}

class LibraryCount extends LibraryEvent{

  @override
  List<Object?> get props => [];
}
