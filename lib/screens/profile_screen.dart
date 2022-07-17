import 'package:booktcikets/utils/app_layout.dart';
import 'package:booktcikets/utils/app_styles.dart';
import 'package:booktcikets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
           Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      height: AppLayout.getHeight(86),
      width: AppLayout.getHeight(86),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img_1.png")
          )
      ),
    ),
    Gap(AppLayout.getHeight(12)),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Book Tickets",style: Styles.headLineStyle1,),
        Gap(AppLayout.getHeight(4)),
        Text("IRAN",style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500)),
        Gap(AppLayout.getHeight(8)),
        Container(
padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical: AppLayout.getHeight(3)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
            color: Color(0xFFFEF4F3),
            ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF526799),
                ),
                child: Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),

              ),
              Gap(AppLayout.getHeight(5)),
              Text("Premium Status",style: TextStyle(
                fontWeight: FontWeight.w600,color: Color(0xFF526799),
              ),)
            ],
          ),
        ),
        Gap(AppLayout.getHeight(5)),

      ],
    ),
    const Spacer(),
    Column(
      children: [
        InkWell(
          onTap: (){
            print("you are tapped edit button");
          },
            child: Text("Edit",style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500,color: Styles.primaryColor),)),

      ],
    ),
  ],
),
          Gap(AppLayout.getHeight(10)),
          Divider(color: Colors.grey.shade500,),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Styles.primaryColor,
                ),
              ),
             Positioned(
               top: -40,
               right: -45,
               child:
             Container(
               padding: EdgeInsets.all(AppLayout.getHeight(30)),
               decoration: BoxDecoration(
                 color: Colors.transparent,
                   shape: BoxShape.circle,
                   border: Border.all(width: 18,color: Color(0xFF264CD2))
               ),
             ),
             ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,color: Styles.primaryColor,size: 32,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("you\'ve got a new reward",style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,color: Colors.white,fontSize: 23
                        ),),
                        Text("you\'ve 95 flights in this year",style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),fontSize: 16
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
                         ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles",style: Styles.headLineStyle1,),
          Gap(AppLayout.getHeight(25)),
          Container(
  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
    color: Styles.bgColor,
    boxShadow: [
      BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 1,
        spreadRadius: 1,
      )
    ],
  ),
  child:   Column(

    children: [

      Gap(AppLayout.getHeight(25)),

      Text("198260",

      style: TextStyle(

        fontSize: 40,fontWeight: FontWeight.w600,

      ),),

      Gap(AppLayout.getHeight(25)),

      Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Text("Miles Occured",style: Styles.headLineStyle4.copyWith(fontSize: 16),),

          Text("17 july 2022",style: Styles.headLineStyle4.copyWith(fontSize: 16),),

        ],

      ),



      Divider(color: Colors.grey.shade500,),



      Gap(AppLayout.getHeight(18)),

      Row(



        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [



          AppColumnLayout(firstText: "933", secondText: "miles", alignment: CrossAxisAlignment.start),

          AppColumnLayout(firstText: "Airline CO", secondText: "Recived from", alignment: CrossAxisAlignment.end),

        ],

      ),



      Divider(color: Colors.grey.shade500,),



      Gap(AppLayout.getHeight(18)),

      Row(



        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [



          AppColumnLayout(firstText: "24", secondText: "miles", alignment: CrossAxisAlignment.start),

          AppColumnLayout(firstText: "MacDonal\'s", secondText: "Recived from", alignment: CrossAxisAlignment.end),

        ],

      ),



      Divider(color: Colors.grey.shade500,),



      Gap(AppLayout.getHeight(18)),

      Row(



        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [



          AppColumnLayout(firstText: "232", secondText: "miles", alignment: CrossAxisAlignment.start),

          AppColumnLayout(firstText: "Excuma", secondText: "Recived from", alignment: CrossAxisAlignment.end),

        ],

      ),

    ],

  ),
),
          Gap(AppLayout.getHeight(25)),

          InkWell(
            onTap: (){
              print("you are tapped to know about miles");
            },
            child: Center(
              child: Text("How to get more miles",
                style: Styles.textStyle.copyWith(color: Styles.primaryColor,
                fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
