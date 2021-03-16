import 'package:json_annotation/json_annotation.dart';

part 'rgb.g.dart';

@JsonSerializable(explicitToJson: true)
class RGB{
  Map<String, dynamic> fraction;
  int r;
  int g;
  int b;
  String value;

  RGB(this.fraction, this.r, this.g, this.b, this.value);

  factory RGB.fromJson(Map<String,dynamic> json) => _$RGBFromJson(json);
  Map<String, dynamic> toJson() => _$RGBToJson(this);
}