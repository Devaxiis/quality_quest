
import 'package:equatable/equatable.dart';

class GetScienceModel extends Equatable {
  final int id;
  final int scienceTypeId;
  final int userId;
  final int countQuizzes;
  final String name;
  final String? phoroUrl;

  const GetScienceModel({
    required this.id,
    required this.scienceTypeId,
    required this.userId,
    required this.countQuizzes,
    required this.name,
    this.phoroUrl,
  });

  factory GetScienceModel.fromJson(Map<String, Object?> json) {
    return GetScienceModel(
        id: json["id"] as int,
        scienceTypeId: json["scienceTypeId"] as int,
        userId: json["userId"] as int,
        countQuizzes: json["countQuizzes"] as int,
        name: json["name"] as String,
        phoroUrl: json ["phoroUrl"] as String?,
    );
  }


  @override
  List<Object?> get props => [id, scienceTypeId, userId, countQuizzes, name];

}
