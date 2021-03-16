import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class SingleColorDetails extends StatelessWidget {
  final ColorEntity colorEntity;

  const SingleColorDetails({Key key, @required this.colorEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Text(
          colorEntity.name.value,
          style: boldCommon(),
        ),
        const SizedBox(height: 10.0),
        Text(
            'RGB: (${colorEntity.rgb.r}, ${colorEntity.rgb.g}, ${colorEntity.rgb.b})')
      ],
    );
  }
}
