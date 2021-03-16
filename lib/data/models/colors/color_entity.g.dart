// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorEntity _$ColorEntityFromJson(Map<String, dynamic> json) {
  return ColorEntity(
    name: json['name'] == null
        ? null
        : ColorName.fromJson(json['name'] as Map<String, dynamic>),
    rgb: json['rgb'] == null
        ? null
        : RGB.fromJson(json['rgb'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ColorEntityToJson(ColorEntity instance) =>
    <String, dynamic>{
      'name': instance.name?.toJson(),
      'rgb': instance.rgb?.toJson(),
    };
