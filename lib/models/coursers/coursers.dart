import 'package:freezed_annotation/freezed_annotation.dart';

part 'coursers.freezed.dart';
part 'coursers.g.dart';

@freezed
class Coursers with _$Coursers{
  factory Coursers({
    @JsonKey(name: "url_image") 
    required String urlImage,
    required String title,
    required String duration,
    @JsonKey(name: "is_favorite")
    required bool isFavorite,
  }) = _Coursers;

  const Coursers._();

  factory Coursers.fromJson(Map<String, dynamic> json) => _$CoursersFromJson(json);

}