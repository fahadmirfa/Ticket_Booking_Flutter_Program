import 'package:booktcikets/screens/ticket_view.dart';
import 'package:booktcikets/utils/app_info_list.dart';
import 'package:booktcikets/utils/app_styles.dart';
import 'package:booktcikets/widgets/column_layout.dart';
import 'package:booktcikets/widgets/ticket_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/layout_buider_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",style: Styles.headLineStyle1.copyWith(fontSize: 32),),
                     Gap(AppLayout.getHeight(20)),
              AppTicketTab(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
               SizedBox(height: 1,),
               Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical:AppLayout.getWidth(20) ),
                  margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),

                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                        AppColumnLayout(firstText: "Flutter Dash", secondText: "Passengers",alignment: CrossAxisAlignment.start,),
                          AppColumnLayout(firstText: "5995-8267", secondText: "Passport",alignment: CrossAxisAlignment.end,)
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                       AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(firstText: "5478 458 98542", secondText: "Number of E-Ticket",alignment: CrossAxisAlignment.start,),
                          AppColumnLayout(firstText: "B48E56", secondText: "Booking Code",alignment: CrossAxisAlignment.end,)
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            children:[
                              Row(
                                children: [
                                  Image.asset("assets/images/visa.png",scale: 11,),
                                  Text(" *** 8014",style: Styles.headLineStyle3,)
                                ],
                              ),
                              Gap(5),
                              Text("Payment Method",style: Styles.headLineStyle4,)
                            ],
                          ),
                          AppColumnLayout(firstText: "42,000 PKR", secondText: "Price",alignment: CrossAxisAlignment.end,),

                        ],
                      ),

                    ],
                  ),
                ),
              /*
              Here we draw a barcode bar
               */
              SizedBox(height: AppLayout.getHeight(1),),
            Container(

              decoration:  BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(21)),
                bottomLeft: Radius.circular(AppLayout.getHeight(21)))
              ),
              margin: EdgeInsets.only(right: AppLayout.getHeight(15),left: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom: AppLayout.getHeight(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppLayout.getWidth(15)),
                  child: BarcodeWidget(barcode: Barcode.code128(),
                    drawText: false,color: Styles.textColor,width: double.infinity,
                    height: 70, data: 'https://github.com/fahadmirfa',

                  ),
                ),
              ),
            ),

              Gap(AppLayout.getHeight(20)),

              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], ),
              ),

            ],
          ),
          Positioned(
            left: AppLayout.getHeight(24),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(24),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
