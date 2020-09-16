import 'dart:io';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final File file;
  final bool circleCrop;
  final BoxFit fit;
  final Color color;
  final double radius;

  const ImageView(
      {Key key,
      this.path,
      this.width,
      this.height,
      this.file,
      this.circleCrop = false,
      this.fit,
      this.radius = 20.0,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    if (path == "") {
      imageWidget = Image.asset(
        "ic_account",
        width: width,
        height: height,
        color: Color(0xFF3a3a3b),
        fit: BoxFit.contain,
      );
    } else if (path?.startsWith('images/') ?? false) {
      imageWidget = Image.asset(
        path,
        width: width,
        height: height,
        fit: fit,
        color: color,
      );
    } else if (file != null) {
      imageWidget = Image.file(
        file,
        width: width,
        height: height,
        fit: fit,
      );
    } else {
      imageWidget = Image.file(
        File(path),
        width: width,
        height: height,
        fit: fit,
      );
    }
    return circleCrop
        ? CircleAvatar(radius: radius, child: ClipOval(child: imageWidget))
        : imageWidget;
  }
}
