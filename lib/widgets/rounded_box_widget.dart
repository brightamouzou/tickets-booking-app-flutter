import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/utils/app_layout.dart';

class RoundedBoxWidget extends StatelessWidget {
  const RoundedBoxWidget({super.key, this.shape,required this.color, required this.child, this.borderRadius, this.height,  this.width});
  final Color color;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Widget child;
  final BoxShape? shape;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(12)),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius??BorderRadius.circular(15),
        // shape: shape!

      ),
      child:child
    );
  }
}