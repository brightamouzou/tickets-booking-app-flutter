import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 15, top: 5),
      height: AppLayout.getHeight(350),
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(
          blurRadius: 20,
          spreadRadius:1,
          color: Colors.white 
        )]
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      
        Container(
          height: AppLayout.getHeight(180),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(
                "assets/images/${hotel['image']}",
              ))),

              
        ),
        Gap(15),

        Text("${hotel['place']}", style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
        Gap(5),
        Text("${hotel['destination']}", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
        Gap(5),
        
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color:Colors.orange 
          ),
          child:Text("${hotel['price']} FCFA/Nuit", style: Styles.headLineStyle3.copyWith(color: Colors.white, ),) ,
        )
        ]
    ));
  }
}
