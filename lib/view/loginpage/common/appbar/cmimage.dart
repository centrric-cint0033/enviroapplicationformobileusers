import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonImage extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final String? imageUrl;
  final String? imagepath;

  const CommonImage({
    this.color,
    this.width,
    this.height,
    this.alignment,
    this.imageUrl,
    this.imagepath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagepath!,
      width: width,
      height: height,
    );
  }
}
