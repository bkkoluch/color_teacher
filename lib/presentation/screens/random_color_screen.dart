import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:color_teacher/data/repositories/color_repository.dart';
import 'package:color_teacher/presentation/widgets/single_color.dart';
import 'package:color_teacher/presentation/widgets/single_color_details.dart';
import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomColorScreen extends StatefulWidget {
  static void show(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RandomColorScreen()));
  }

  @override
  _RandomColorScreenState createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  ColorRepository _colorEntityRepository;
  ColorEntity _colorEntity;
  Color _color;

  @override
  void initState() {
    _colorEntityRepository = ColorRepository();
    _colorEntityRepository.fetchRandomColor().then((ColorEntity color) => {
          this.setState(() {
            _colorEntity = color;
          }),
          _color = getColorFromEntity(_colorEntity)
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _colorEntity != null
                ? ColorInstanceColumn(color: _color, colorEntity: _colorEntity)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class ColorInstanceColumn extends StatefulWidget {
  const ColorInstanceColumn({
    Key key,
    @required Color color,
    @required ColorEntity colorEntity,
  })  : _color = color,
        _colorEntity = colorEntity,
        super(key: key);

  final Color _color;
  final ColorEntity _colorEntity;

  @override
  _ColorInstanceColumnState createState() => _ColorInstanceColumnState();
}

class _ColorInstanceColumnState extends State<ColorInstanceColumn>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: Column(
        children: [
          SingleColor(
            width: 200,
            height: 200,
            color: widget._color,
          ),
            SingleColorDetails(colorEntity: widget._colorEntity)
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
