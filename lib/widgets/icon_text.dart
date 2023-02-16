import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10) 
            ),
            child: Row(
              children: [
                Icon(icon, color: Styles.iconsColor1,),
                Gap(AppLayout.getWidth(10)),
                Text(text)
              ]),
          );
  }
}