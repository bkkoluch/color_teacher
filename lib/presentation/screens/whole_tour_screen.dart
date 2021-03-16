import 'package:color_teacher/data/models/colors/color_entity.dart';
import 'package:color_teacher/data/repositories/color_repository.dart';
import 'package:color_teacher/presentation/screens/single_color_screen.dart';
import 'package:color_teacher/presentation/widgets/single_color.dart';
import 'package:color_teacher/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class WholeTourScreen extends StatefulWidget {
  static void show(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WholeTourScreen()));
  }

  @override
  _WholeTourScreenState createState() => _WholeTourScreenState();
}

class _WholeTourScreenState extends State<WholeTourScreen> {
  final _colorsList = <ColorEntity>[];
  final _colorRepository = ColorRepository();

  bool _isLoading = true;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _hasMore = true;
    _loadMore();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void _loadMore() {
    _isLoading = true;
    _colorRepository.fetchColors().then((List<ColorEntity> colors) {
      if (colors.isEmpty) {
        setState(() {
          _isLoading = false;
          _hasMore = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _colorsList.addAll(colors);
        });
      }
    });
  }

  void _showColorDetails(BuildContext context, ColorEntity colorEntity) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SingleColorScreen(colorEntity)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tap on a color to learn!'),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: _hasMore ? _colorsList.length + 1 : _colorsList.length,
            itemBuilder: (BuildContext context, int index) {
              if (index >= _colorsList.length) {
                if (!_isLoading) {
                  _loadMore();
                }
                return Center(
                  child: SizedBox(
                    child: CircularProgressIndicator(),
                    height: 24,
                    width: 24,
                  ),
                );
              }
              return Column(
                children: [
                  const SizedBox(height: 10.0),
                  Flexible(
                    child: Row(
                      children: [
                        const SizedBox(width: 10.0),
                        Flexible(
                          child: Hero(
                            tag: _colorsList[index].rgb.fraction,
                            child: SingleColor(
                              onTap: () => _showColorDetails(
                                  context, _colorsList[index]),
                              width: 100,
                              height: 100,
                              color: getColorFromEntity(_colorsList[index]),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0)
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              );
            }));
  }
}
