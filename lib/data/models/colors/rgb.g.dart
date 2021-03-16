// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rgb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RGB _$RGBFromJson(Map<String, dynamic> json) {
  return RGB(
    json['fraction'] as Map<String, dynamic>,
    json['r'] as int,
    json['g'] as int,
    json['b'] as int,
    json['value'] as String,
  );
}

Map<String, dynamic> _$RGBToJson(RGB instance) => <String, dynamic>{
      'fraction': instance.fraction,
      'r': instance.r,
      'g': instance.g,
      'b': instance.b,
      'value': instance.value,
    };
