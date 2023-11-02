import 'package:equatable/equatable.dart';

final jsonExample = {
  "id": 53,
  "scienceTypeId": 4,
  "userId": 87,
  "countQuizzes": 0,
  "name": "salom",
  "phoroUrl": null,
};

class SearchModel extends Equatable {
  final int id;
  final int scienceTypeId;
  final int userId;
  final int countQuizzes;
  final String name;
  final String? phoroUrl;

  const SearchModel({
    required this.id,
    required this.scienceTypeId,
    required this.userId,
    required this.countQuizzes,
    required this.name,
    this.phoroUrl,
  });

  factory SearchModel.fromJson(Map<String, Object?> json) {
    return SearchModel(
      id: json["id"] as int,
      scienceTypeId: json["scienceTypeId"] as int,
      userId: json["userId"] as int,
      countQuizzes: json["countQuizzes"] as int,
      name: json["name"] as String,
      phoroUrl: json["phoroUrl"] as String?,
    );
  }

  @override
  List<Object?> get props => [id, scienceTypeId, userId, name];
}
