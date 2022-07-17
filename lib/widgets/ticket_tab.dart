import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketTab({Key? key,required this.firstTab,required this.secondTab,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  FittedBox(
      child:
      Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color:  const Color(0xFFF4F6FD),

        ),
        child: Row(
          children: [
            /*
                airline tickets
                 */
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                color:  Colors.white,

              ),
              child: Center(child: Text(firstTab)),

            ),
            /*
                hotel
                 */
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                color:  Colors.transparent,

              ),
              child: Center(child: Text(secondTab)),

            ),
          ],
        ),
      ),
    );
  }
}
