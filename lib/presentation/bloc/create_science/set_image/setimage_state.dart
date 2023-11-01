part of 'setimage_bloc.dart';

abstract class SetimageState extends Equatable {
  const SetimageState();
}

class SetimageInitial extends SetimageState {

  @override
  List<Object> get props => [];
}

class SetImageLoading extends SetimageState {

  @override
  List<Object> get props => [];
}

class SetImageSuccess extends SetimageState {
 final File? image;

 const SetImageSuccess({required this.image});

  @override
  List<Object> get props => [];
}


class SetImageFailure extends SetimageState {
  @override
  List<Object> get props => [];
}

