import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final Text child;

  const MenuButton({Key key, this.color, this.onPressed, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: themeCtx(context).primaryColor),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        splashColor: themeCtx(context).splashColor,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: child,
        ),
      ),
    );
  }
}
