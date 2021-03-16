import 'dart:convert';
import 'dart:math';

import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:http/http.dart' as http;

abstract class IColorRepository {
  Future<ColorEntity> fetchColor(String colorId);

  Future<ColorEntity> fetchRandomColor();

  Future<List<ColorEntity>> fetchColors();
}

class ColorRepository extends IColorRepository {
  @override
  Future<ColorEntity> fetchColor(String colorId) async {
    String url = "https://www.thecolorapi.com/id?rgb=rgb$colorId";
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      ColorEntity color = ColorEntity.fromJson(jsonResponse);
      return color;
    } else {
      print('Request failed with status code: ${response.statusCode}');
    }
    ;
    return null;
  }

  @override
  Future<ColorEntity> fetchRandomColor() async {
    String colorId;
    ColorEntity colorFromResponse;
    var random = new Random();
    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);

    colorId = "($r,$g,$b)";
    colorFromResponse = await fetchColor(colorId);
    return colorFromResponse;
  }

  @override
  Future<List<ColorEntity>> fetchColors() async {
    List<ColorEntity> colorsList = [];
    await fetchRandomColor().then((color) {
      colorsList.add(color);
    });
    return colorsList;
  }
}
