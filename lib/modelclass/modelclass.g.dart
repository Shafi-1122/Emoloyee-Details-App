// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Modelclass _$ModelclassFromJson(Map<String, dynamic> json) => Modelclass(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      profileImage: json['profile_image'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'],
      website: json['website'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelclassToJson(Modelclass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'profile_image': instance.profileImage,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
