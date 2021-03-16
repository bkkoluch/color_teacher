import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:flutter/material.dart';

Size screenSize(BuildContext context) => MediaQuery.of(context).size;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

ThemeData themeCtx(BuildContext context) => Theme.of(context);

Color getColorFromEntity(ColorEntity colorEntity) => Color.fromRGBO(
    colorEntity.rgb.r, colorEntity.rgb.g, colorEntity.rgb.b, 1.0);

TextStyle boldCommon() =>
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
