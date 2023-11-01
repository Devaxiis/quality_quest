part of 'ispublic_bloc.dart';

abstract class IspublicState extends Equatable {
  const IspublicState();
}

class IspublicInitial extends IspublicState {
  @override
  List<Object> get props => [];
}

class SelectedCategoryIsPublicSuccessState extends IspublicState{
  final bool? isPublic;

  const SelectedCategoryIsPublicSuccessState({required this.isPublic});

  @override
  List<Object?> get props => [isPublic];

}
