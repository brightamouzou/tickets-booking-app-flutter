import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/utils/app_styles.dart';
class DoubleTextRowWidget extends StatelessWidget {
  const DoubleTextRowWidget({super.key, required this.bigText,required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${bigText}",
                      style: Styles.headLineStyle2,
                    ),

                    InkWell(
                      onTap: (){
                        print("You have tapped");
                      },
                      child:Text("Voir tout",
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                        )), 
                    )
                  
                  ],
                );
  }
}