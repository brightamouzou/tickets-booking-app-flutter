import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TickContainer extends StatelessWidget {
  const TickContainer({super.key, this.isColor});

  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor==null? Colors.white:Color(0xFF8FCCF7))
      ),
    );
  }
}