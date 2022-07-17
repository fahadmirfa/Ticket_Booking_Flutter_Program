import 'package:booktcikets/utils/app_layout.dart';
import 'package:booktcikets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {

  final Map<String,String> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel Price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(17)),
      margin:  EdgeInsets.only(right: AppLayout.getHeight(17),top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [BoxShadow(
          color: Colors.red.shade500,
          blurRadius: AppLayout.getHeight(2),
          spreadRadius: AppLayout.getHeight(1),
        ),
           ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap (10),
          Text("${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap (5),
          Text("${hotel['destination']}",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const Gap (8),
          Text("${hotel['price']}/Night",style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),

        ],
      ),
    );
  }
}
