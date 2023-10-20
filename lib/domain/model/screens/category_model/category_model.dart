import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class Category with _$Category {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Category({
    required int id,
    required String name,
    required String? photoUrl,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
