// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistsImpl _$$WishlistsImplFromJson(Map<String, dynamic> json) =>
    _$WishlistsImpl(
      urlImage: json['url_image'] as String,
      title: json['title'] as String,
      question: json['question_number'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$WishlistsImplToJson(_$WishlistsImpl instance) =>
    <String, dynamic>{
      'url_image': instance.urlImage,
      'title': instance.title,
      'question_number': instance.question,
      'time': instance.time,
    };
