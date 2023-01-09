import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({super.key, required this.image, this.width, this.height, required this.outlineRounded});
  final String image;
  final double? width;
  final double? height;
  final double outlineRounded;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(outlineRounded)),
      child: Container(
        width: width == null ? Get.width : width,
        height: height == null ? Get.height : height,
        child: FittedBox(
          child: Image.asset(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
