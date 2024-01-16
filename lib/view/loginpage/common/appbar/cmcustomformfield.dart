import 'package:flutter/material.dart';

class Cmformfield extends StatelessWidget {
  const Cmformfield({Key? key, this.color, this.width, this.height})
      : super(key: key);

  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
