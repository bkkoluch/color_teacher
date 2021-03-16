import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:color_teacher/presentation/widgets/single_color.dart';
import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class SingleColorScreen extends StatelessWidget {
  final ColorEntity colorEntity;

  SingleColorScreen(this.colorEntity);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getColorFromEntity(colorEntity),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: colorEntity.rgb.fraction,
              child: SingleColor(
                width: 300,
                height: 300,
                color: getColorFromEntity(colorEntity),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              colorEntity.name.value,
              style: boldCommon(),
            ),
            const SizedBox(height: 10.0),
            Text(
                'RGB: (${colorEntity.rgb.r}, ${colorEntity.rgb.g}, ${colorEntity.rgb.b})')
          ],
        ),
      ),
    );
  }
}
