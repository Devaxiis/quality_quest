part of 'setimage_bloc.dart';

abstract class SetimageEvent extends Equatable {
  const SetimageEvent();
}

class SetImageOneEvent extends SetimageEvent{
  File? image;

  SetImageOneEvent({required this.image});

  @override
  List<Object?> get props => [image];
}
