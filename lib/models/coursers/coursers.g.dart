// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coursers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursersImpl _$$CoursersImplFromJson(Map<String, dynamic> json) =>
    _$CoursersImpl(
      urlImage: json['url_image'] as String,
      title: json['title'] as String,
      duration: json['duration'] as String,
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$$CoursersImplToJson(_$CoursersImpl instance) =>
    <String, dynamic>{
      'url_image': instance.urlImage,
      'title': instance.title,
      'duration': instance.duration,
      'is_favorite': instance.isFavorite,
    };
