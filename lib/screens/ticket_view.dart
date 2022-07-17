import 'package:booktcikets/utils/app_layout.dart';
import 'package:booktcikets/utils/app_styles.dart';
import 'package:booktcikets/widgets/layout_buider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(175),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              /*
            this container show the blue part of the card/ticket
             */
          Container(

        decoration:  BoxDecoration(
          color: isColor==null? Color(0xFF526799):Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
              topRight: Radius.circular(AppLayout.getHeight(21))),

        ),
        padding:  EdgeInsets.only(left: AppLayout.getHeight(16),right: AppLayout.getHeight(16),top: AppLayout.getHeight(16),bottom: AppLayout.getHeight(16)),
        child: Column(
          children: [
                  Row(
                    children: [
                      Text("${ticket['from']['code']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                      Expanded(child: Container()),
                      ThickContainer(isColor:true),
                      Expanded(child:
                      Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const AppLayoutBuilderWidget(sections: 6,),
                          ),
                          Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor==null? Colors.white:Color(0xFF8ACCF7),))),

                        ],
                      )
                      ),

                      ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text("${ticket['to']['code']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),child: Text("${ticket['from']['name']}",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                      Text("${ticket['flying_time']}",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black,fontSize: 18),),
                      SizedBox(
                        width: AppLayout.getWidth(100),child: Text("${ticket['to']['name']}",textAlign:TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),

                    ],
                  ),
                ],
              ),
            ),
              /*
            this container show the orange dooted part of the card/ticket
             */
              Container(
                color:isColor==null? Styles.orangeColor:Colors.white,
                child: Row(
                  children:  [
                     SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight: Radius.circular(AppLayout.getHeight(10)),
                          )
                      )),
                    ),
                    Expanded(child:
                    LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          width: AppLayout.getWidth(7),height: AppLayout.getHeight(2), child: DecoratedBox(decoration: BoxDecoration(
                            color:isColor==null? Colors.white:Colors.grey.shade500
                        ),),
                        )),
                      );
                    },

                    )),
                     SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getHeight(10),
                      child: DecoratedBox(decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                          )
                      )),
                    ),
                  ],
                ),
              ),
              /*
            this container show the orange last part of the card/ticket
             */
              Container(

                decoration:  BoxDecoration(
                  color:isColor==null? Color(0xFFF37B67):Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?21:0),),
                      bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?21:0))),

                ),
                padding:  EdgeInsets.only(left: AppLayout.getHeight(16),right: AppLayout.getHeight(16),top: AppLayout.getHeight(16),bottom: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("${ticket['date']}",style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                        Expanded(child: Container()),

                        Text("${ticket['departure_time']}",style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black,fontSize: 18),),



                        Expanded(child: Container()),
                        Text("${ticket['number']}",style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                      ],
                    ),
                    const Gap(4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),child: Text("Date",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ),
                        Text("Departure Time",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        SizedBox(
                          width: AppLayout.getWidth(80),child: Text("Number",textAlign:TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
