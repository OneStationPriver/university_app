import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlists.freezed.dart';
part 'wishlists.g.dart';

@freezed
class Wishlists with _$Wishlists{
  factory Wishlists({
    @JsonKey(name: "url_image") 
    required String urlImage,
    required String title,
    @JsonKey(name: "question_number")
    required String question,
    required String time,
  }) = _Wishlists;

  const Wishlists._();

  factory Wishlists.fromJson(Map<String, dynamic> json) => _$WishlistsFromJson(json);

}