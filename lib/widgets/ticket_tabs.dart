import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';

class TicketsTab extends StatelessWidget {
  const TicketsTab({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.skyColor,
              ),
              child: Row(children: [
                /* Airplane tickets */
                Container(
                  width: AppLayout.getScreenWidth() * .40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      color: Colors.white
                      ),
                  child: Center(
                      child: Text(
                    "${text1}",
                    style: Styles.headLineStyle4,
                    
                  )),
                ),
                
                /* Hotels */
                Container(
                  width: AppLayout.getScreenWidth() * .44,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      // color: Colors.white
                      ),
                  child: Center(
                      child: Text(
                    "${text2}",
                    style: Styles.headLineStyle4,
                  )),
                ),
              ]),
            );
  }
}