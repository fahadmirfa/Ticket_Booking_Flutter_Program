import 'package:booktcikets/utils/app_layout.dart';
import 'package:booktcikets/utils/app_styles.dart';
import 'package:booktcikets/widgets/icon_text_widget.dart';
import 'package:booktcikets/widgets/ticket_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: (AppLayout.getWidth(20)),vertical: (AppLayout.getHeight(20))),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTab(firstTab: "Airline Ticket",secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
    Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18),horizontal: AppLayout.getWidth(18)),
      decoration: BoxDecoration(
          color: Color(0xD91130CE),
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
      ),
     child: Center(child: Text("Find Tickets",style: Styles.textStyle.copyWith(color: Colors.white,fontSize: 18),)),
    ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: AppLayout.getHeight(400),
        width: size.width*0.42,
        padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(15) ,vertical:AppLayout.getWidth(15) ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
          color: Colors.white
        ),
        child: Column(
          children: [
            Container(
    height: AppLayout.getHeight(190),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),

    image: DecorationImage(
      fit: BoxFit.cover,
    image: AssetImage(
    "assets/images/sit.jpg"
    )
    )
    ),
    ),
            Gap(AppLayout.getHeight(15)),
            Text("20% discount on the early booking of this flight,Don't miss out this chance",
            style: Styles.headLineStyle2.copyWith(color: Colors.grey,fontSize: 20)),
          ],
        ),
      ),
      Column(
        children: [
       Stack(
         children: [
           Container(
             width: size.width*0.44,
             height: AppLayout.getHeight(200),
             decoration: BoxDecoration(
               color: Color(0xFF3AB8B8),
               borderRadius: BorderRadius.circular(18),
             ),
             padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Discount For\n Survey",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                 Gap(AppLayout.getHeight(10)),
                 Text("Take the Survey about our Services and get Disconts",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),


               ],
             ),
           ),
           Positioned(
             top: -40,
             right: -52,
             child:
           Container(
             padding: EdgeInsets.all(AppLayout.getHeight(30)),
             decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(width: 18,color: Color(0xFF189999)),
                 color: Colors.transparent
             ),
           ),
           ),
],
       ),
          Gap(AppLayout.getHeight(10)),
          Container(
            width: size.width*0.44,
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              color: Color(0xFFEC6545),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("Take Love",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                Gap(AppLayout.getHeight(5)),
                Center(
                  child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '1.Good Airline System \n\n',
                        style: TextStyle(fontSize: 15),
                      ),

                      TextSpan(
                        text: '2.Personal televisions \n\n',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextSpan(
                        text: '3.Open and closed suite seats ',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  )),
                )


              ],
            ),
          ),
        ],
      ),
    ],
  ),

        ],
      ),
    );
  }
}
