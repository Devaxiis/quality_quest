class ScienceType {
  final int id;
  final String name;
  final String? photoUrl;

  ScienceType({required this.id, required this.name, this.photoUrl});

  factory ScienceType.fromJson(Map<String, dynamic> json) {
    return ScienceType(
      id: json['id'],
      name: json['name'],
      photoUrl: json['photoUrl'],
    );
  }
}
