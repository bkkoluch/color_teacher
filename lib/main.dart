import 'package:color_teacher/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Teacher',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        secondaryHeaderColor: Colors.white,
        splashColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}
