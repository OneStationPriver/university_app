// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountsImpl _$$AccountsImplFromJson(Map<String, dynamic> json) =>
    _$AccountsImpl(
      yourName: json['your_name'] as String,
      educationLevel: json['education_level'] as String,
      address: json['address'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AccountsImplToJson(_$AccountsImpl instance) =>
    <String, dynamic>{
      'your_name': instance.yourName,
      'education_level': instance.educationLevel,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'title': instance.title,
    };
