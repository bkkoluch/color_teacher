// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorName _$ColorNameFromJson(Map<String, dynamic> json) {
  return ColorName(
    json['value'] as String,
    json['closest_named_hex'] as String,
    json['exact_match_name'] as bool,
    json['distance'] as int,
  );
}

Map<String, dynamic> _$ColorNameToJson(ColorName instance) => <String, dynamic>{
      'value': instance.value,
      'closest_named_hex': instance.closest_named_hex,
      'exact_match_name': instance.exact_match_name,
      'distance': instance.distance,
    };
