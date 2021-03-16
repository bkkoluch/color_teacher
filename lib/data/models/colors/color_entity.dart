import 'package:color_teacher/data/models/colors/color_name.dart';
import 'package:color_teacher/data/models/colors/rgb.dart';
import 'package:json_annotation/json_annotation.dart';

part 'color_entity.g.dart';
@JsonSerializable(explicitToJson: true)
class ColorEntity {
  final ColorName name;
  final RGB rgb;

  ColorEntity({this.name, this.rgb});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorEntity &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          rgb == other.rgb;

  @override
  int get hashCode => name.hashCode ^ rgb.hashCode;

  factory ColorEntity.fromJson(Map<String,dynamic> json) => _$ColorEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ColorEntityToJson(this);
}
