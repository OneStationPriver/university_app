import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorys.freezed.dart';
part 'categorys.g.dart';

@freezed
class Categorys with _$Categorys{
  factory Categorys({
    required String icon,
    required String title,
  }) = _Categorys;

  const Categorys._();

  factory Categorys.fromJson(Map<String, dynamic> json) => _$CategorysFromJson(json);

}