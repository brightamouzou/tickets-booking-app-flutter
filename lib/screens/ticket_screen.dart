import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/LayoutBuilderWidget.dart';
import 'package:untitled/widgets/column_layout.dart';
import 'package:untitled/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(30),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Tickets",
            style: Styles.headLineStyle
                .copyWith(color: Colors.black, fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketsTab(text1: "Prochains", text2: "Précédents"),
          Gap(AppLayout.getHeight(20)),
          TicketView(
            ticket: ticketsList[0],
            isColor: true,
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            // margin: EdgeInsets.all(0),
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(24),
                horizontal: AppLayout.getWidth(20)),
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getWidth(25)), bottomRight: Radius.circular(AppLayout.getWidth(25))),
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    bigText: "Bright AMZ",
                    smallText: "Passager",
                    isColor: true,
                  ),
                  ColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    bigText: "5254 1452 2015 8520",
                    smallText: "Passeport",
                    isColor: true,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              LayoutBuilderWidget(
                sections: 15,
                width: 5,
                isColor: true,
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    bigText: "B2DE50",
                    smallText: "Code",
                    isColor: true,
                  ),
                  ColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    bigText: "5254 1452 2015 8520",
                    smallText: "Passeport",
                    isColor: true,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
                LayoutBuilderWidget(
                sections: 15,
                width: 5,
                isColor: true,),

                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/visa.png", scale: 11,),
                            Text("  **** 5241", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          ],
                        ),
                        // Gap(AppLayout.getHeight(5)),
                        Text("Mode paiement", style: Styles.headLineStyle4,)
                      ],

                    ),

                    ColumnLayout(alignment: CrossAxisAlignment.end, bigText: "\$399", smallText: "Prix", isColor: false,),
                    
                  ],
                ),

              
              
            Gap(AppLayout.getHeight(20)),

                


              

            ]),
          ),
            
  SizedBox(
            height: 1,
          ),
              



               Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(20), horizontal: AppLayout.getHeight(20)),
                decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getWidth(25)), bottomRight: Radius.circular(AppLayout.getWidth(25))),
            ),
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                   child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://brightamouzou.tech',
                          height: 100,
                          drawText: false,
                        ),
                 ),
               ),

            Gap(AppLayout.getHeight(20)),

         Container(margin: EdgeInsets.only(),width: double.infinity, child: TicketView(ticket: ticketsList[0]),)

        ],
      ),
    );
  }
}
