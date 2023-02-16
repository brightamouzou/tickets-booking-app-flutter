import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key, required this.alignment, required this.bigText, required this.smallText, this.isColor});
    final CrossAxisAlignment alignment;
    final String bigText;
    final String smallText;
    final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: alignment,
                      children: [
                        Text(
                          '${bigText}',
                          style: isColor==null? Styles.headLineStyle3
                              .copyWith(color: Colors.white): Styles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          '${smallText}',
                          style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,
                        ),
                      ],
                    );
  }
}