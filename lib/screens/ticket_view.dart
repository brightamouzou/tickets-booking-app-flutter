import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/LayoutBuilderWidget.dart';
import 'package:untitled/widgets/column_layout.dart';
import 'package:untitled/widgets/tick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.isColor});
  final Map<String, dynamic> ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width*0.85,
        height: isColor==null? AppLayout.getHeight(200):null,
        child: Container(
          margin: isColor==null?EdgeInsets.only(right: 16):null,
          child: Column(
            children: [
              //Showing the blue part of the the card/ticket
              Container(
                padding: EdgeInsets.all(16) ,
                decoration: BoxDecoration(
                  color:isColor==null? const Color(0xFF526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        "${ticket['from']['code']}",
                        style:isColor==null?
                            Styles.headLineStyle3.copyWith(color: Colors.white):
                            Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      TickContainer(isColor: isColor,),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilderWidget(sections: 6, isColor: isColor, width: 5,),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor==null? Colors.white:Color(0xFF8FCCF7),
                            ),
                          ),
                        ),
                      ])),
                      TickContainer(isColor: isColor,),

                      Expanded(child: Container()),
                      Text(
                        "${ticket['to']['code']}",
                        style:
                            isColor==null?
                            Styles.headLineStyle3.copyWith(color: Colors.white):
                            Styles.headLineStyle3,
                      ),
                    ]),
                    Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${ticket['from']['name']}",
                            style: isColor==null? Styles.headLineStyle4
                                .copyWith(color: Colors.white): Styles.headLineStyle4
                                ,
                          ),
                        ),
                        Text("${ticket['flying_time']}",
                            style: isColor==null? Styles.headLineStyle4
                                .copyWith(color: Colors.white): Styles.headLineStyle4
                                ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${ticket['to']['name']}",
                            style:isColor==null? Styles.headLineStyle4
                                .copyWith(color: Colors.white): Styles.headLineStyle4
                                ,
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              //Showing the orange part of the card/ticket
              Container(
                // padding: EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: isColor==null? Styles.orangeColor:Colors.white,
                ),

                child: Row(
                  children: [
                    //Left half-circle
                    SizedBox(
                      height:  AppLayout.getHeight(20),
                      width:  AppLayout.getWidth(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.white)),
                    ),

                    Expanded(child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: isColor==null? Colors.white:Styles.kakiColor),
                                  )),
                        ));
                      },
                    )),
                    //Right half-circle
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getHeight(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              color: Colors.white)),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 10, bottom: 16, left: 16, right: 16),
                decoration: BoxDecoration(
                  color:isColor==null? Styles.orangeColor:Colors.white,
                  borderRadius: isColor==null? BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)):null,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ColumnLayout(alignment: CrossAxisAlignment.start,bigText:ticket['departure_date'], smallText: "Départ", isColor: isColor,),
                    ColumnLayout(alignment: CrossAxisAlignment.center,bigText:ticket['departure_time'], smallText: "Heure de départ", isColor: isColor,),
                    ColumnLayout(alignment: CrossAxisAlignment.end,bigText:"${ticket['number']}", smallText: "Numéro", isColor: isColor,),
                  
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
