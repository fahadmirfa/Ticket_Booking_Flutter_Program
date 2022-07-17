import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;

  const AppLayoutBuilderWidget({Key? key,required this.sections,this.width=3,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      print("The width is ${constraints.constrainWidth()}");
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
          width: width,height: AppLayout.getHeight(1),
          child: DecoratedBox(decoration: BoxDecoration(
            color: isColor==null? Colors.white:Colors.grey.shade500
        ),),
        )),
      );
    },

    );
  }
}
