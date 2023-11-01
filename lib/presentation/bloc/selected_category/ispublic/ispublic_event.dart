part of 'ispublic_bloc.dart';

abstract class IspublicEvent extends Equatable {
  const IspublicEvent();
}

class SelectedIsPublicEvent extends IspublicEvent{
  final bool? isPublic;

  const SelectedIsPublicEvent({required this.isPublic});

  @override
  List<Object?> get props => [isPublic];
}
