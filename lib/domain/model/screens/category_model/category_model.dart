class ScienceType {
  final int id;
  final String name;
  final String? photoUrl;

  ScienceType({
    required this.id,
    required this.name,
    required this.photoUrl,
   });

  factory ScienceType.fromJson(Map<String, Object?> json) {
    return ScienceType(
      id: json['id'] as int,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String?,
    );
  }
}
