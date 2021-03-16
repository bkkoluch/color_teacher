import 'package:json_annotation/json_annotation.dart';

part 'color_name.g.dart';

@JsonSerializable(explicitToJson: true)
class ColorName{
  String value;
  String closest_named_hex;
  bool exact_match_name;
  int distance;

  ColorName(
      this.value, this.closest_named_hex, this.exact_match_name, this.distance);

  factory ColorName.fromJson(Map<String,dynamic> json) => _$ColorNameFromJson(json);
  Map<String, dynamic> toJson() => _$ColorNameToJson(this);
}