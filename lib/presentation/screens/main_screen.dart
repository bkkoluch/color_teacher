import 'package:color_teacher/presentation/screens/random_color_screen.dart';
import 'package:color_teacher/presentation/screens/whole_tour_screen.dart';
import 'package:color_teacher/presentation/widgets/menu_button.dart';
import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = themeCtx(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Teacher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(
              color: theme.secondaryHeaderColor,
              onPressed: () => WholeTourScreen.show(context),
              child: Text(
                'Whole tour!',
                style: TextStyle(color: theme.primaryColor),
              ),
            ),
            const SizedBox(height: 10.0),
            MenuButton(
              color: theme.secondaryHeaderColor,
              onPressed: () => RandomColorScreen.show(context),
              child: Text(
                'Surprise me with one!',
                style: TextStyle(color: theme.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
