import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/column_layout.dart';
import 'package:untitled/widgets/rounded_box_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(11),
            vertical: AppLayout.getHeight(50)),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedBoxWidget(
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                    height: 58,
                  )),
              Gap(AppLayout.getWidth(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reservation des billets",
                    style: Styles.headLineStyle,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "Lomé",
                    style: Styles.headLineStyle4,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF526799)),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text("Premium")
                        // RoundedBoxWidget(color: T, child: child)
                        // Icon(FluentSystemIcons.ic_fluent_shield_filled),
                      ],
                    ),
                  )
                ],
              ),
              // Gap(AppLayout.getWidth(10)),
              InkWell(
                child: Text(
                  "Edit",
                  style: Styles.headLineStyle4,
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Positioned(
                right: -35,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons
                          .ic_fluent_lightbulb_filament_filled),
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                    ),
                    Gap(AppLayout.getWidth(15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vous avez un nouveau prix",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Vous avez effectué 21 vols  dans l'année",
                          style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getWidth(25)),
          Text(
            "Total kilomètres parcourus",
            style: Styles.headLineStyle2.copyWith(),
          ),
          Gap(AppLayout.getWidth(25)),
          Column(
            children: [
              Text(
                "182507",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: Styles.headLineStyle4,
                  ),
                  Text(
                    "Feb 15, 2023",
                    style: Styles.headLineStyle4,
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                alignment: CrossAxisAlignment.start,
                bigText: "99750",
                smallText: "Km",
                isColor: true,
              ),
              ColumnLayout(
                alignment: CrossAxisAlignment.end,
                bigText: "Ethiopian Airlines",
                smallText: "Received from",
                isColor: true,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                alignment: CrossAxisAlignment.start,
                bigText: "26221",
                smallText: "Km",
                isColor: true,
              ),
              ColumnLayout(
                alignment: CrossAxisAlignment.end,
                bigText: "Air France",
                smallText: "Received from",
                isColor: true,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                alignment: CrossAxisAlignment.start,
                bigText: "56536",
                smallText: "Km",
                isColor: true,
              ),
              ColumnLayout(
                alignment: CrossAxisAlignment.end,
                bigText: "Brussells Airlines",
                smallText: "Received from",
                isColor: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
