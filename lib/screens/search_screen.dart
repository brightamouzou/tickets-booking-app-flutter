
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/utils/double_text_row_widget.dart';
import 'package:untitled/widgets/icon_text.dart';
import 'package:untitled/widgets/rounded_box_widget.dart';
import 'package:untitled/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);  
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Que cherchez vous?",
            style: Styles.headLineStyle.copyWith(color: Colors.black, fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: TicketsTab(text1:"Billets d'avion", text2:"Hotels")
          ),
          Gap(AppLayout.getHeight(20)),
          IconText(icon:Icons.flight_takeoff_rounded, text:"Départ"),
          Gap(AppLayout.getHeight(20)),
          IconText(icon:Icons.flight_land_rounded, text:"Destination"),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              color:Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              
            ),
            child: Center(
              child:Text("Trouver des billets", style: Styles.headLineStyle3.copyWith(color: Colors.white),), ),
          ),
          Gap(AppLayout.getHeight(40)),

          /* Upcoming flights */
          DoubleTextRowWidget(bigText: 'Prochains vols', smallText: "Voir tout"),

          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:EdgeInsets.symmetric(horizontal: 12) ,
                width: size.width*.44,
                height: AppLayout.getHeight(425 ),
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/passengers.jpg")
                        )
                      ),
                    ),

                    Gap(AppLayout.getHeight(10)),
                    Text("20% de réduction sur les 20 premiers billets achetés pour ce vol", style: Styles.headLineStyle2,)
                  ],
                ),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                      RoundedBoxWidget(color: Colors.blue.shade400,
                
                       width: size.width*.44,
                    height: 200,
                       child: Column(
                        children: [
                          Text("Remises sur enquêtes", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                          Gap(AppLayout.getHeight(10)),
                          Text("Faites des enquêtes sur nos services et gagnez des remises", style: Styles.textStyle.copyWith(color: Colors.white),)
                        ]
                      ),),
                
                      Positioned(
                        right: -30,
                        top: -25,
                        child: Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color:  Color(0xFF189999))
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  RoundedBoxWidget(
                    color: Color.fromARGB(255, 255, 91, 49),
                    height: 200,
                       width: size.width*.44,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nous vous \napprécions", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text:TextSpan(
                            children:[
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 30)
                  
                              ),
                              TextSpan(
                                text: "🥰",
                                style: TextStyle(fontSize: 40)
                              ),
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 30)
                  
                              )
                            ] ) )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
