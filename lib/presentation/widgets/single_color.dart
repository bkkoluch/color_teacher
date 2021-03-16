import 'package:flutter/material.dart';

class SingleColor extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Function onTap;

  const SingleColor({Key key, this.width, this.height, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: color, boxShadow: [
            BoxShadow(
              offset: const Offset(1.0, 1.0),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            )
          ]),
        ));
  }
}
