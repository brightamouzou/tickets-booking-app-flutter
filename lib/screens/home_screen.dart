import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/screens/hotel_screen.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/utils/double_text_row_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          // Banner
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bonjour",
                          style: Styles.headLineStyle4,
                        ),
                        Gap(5),
                        Text(
                          "Reserver des billets",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/logo.png"))),
                    )
                  ],
                ),
                const Gap(25),
                // Search
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("Rechercher")
                    ],
                  ),
                ),
                const Gap(45),

                // Upcoming flights
               DoubleTextRowWidget(bigText: "Prochains vols", smallText: "Voir tout")
              ],
            ),
          ),
          Gap(15),

          // List of tickets
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(children:ticketsList.map((singleTicket) => TicketView(ticket:singleTicket)).toList(),
          )),

          Gap(15),

          Container(
            padding: EdgeInsets.all(16),
           child: DoubleTextRowWidget(bigText: "Hotels", smallText: "Voir tout"),
           
          ),
          // List of hotels
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(children:hotelList.map((singleHotel) => HotelScreen(hotel:singleHotel,)).toList()),
          )
        ],
      ),
    );
  }
}
