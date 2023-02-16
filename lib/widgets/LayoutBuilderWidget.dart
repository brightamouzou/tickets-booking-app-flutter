import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key,  this.sections=1, this.isColor, this.width=3});
  final int sections;
  final bool? isColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("he width is ${constraints.constrainWidth()}");
      return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              height: AppLayout.getHeight(1),
              width: AppLayout.getWidth(width),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null ? Colors.white : Styles.kakiColor),
              ),
            ),
          ));
    });
  }
}
