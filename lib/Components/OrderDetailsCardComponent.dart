import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import '../Constants.dart';

class OrderDetailsCardComponent extends StatelessWidget {
  final Color color;
  final String parentLabel;
  final String childLabel;
  final String dateTime;
  final Icon circleAvatarIcon;
  final Icon checkIcon;


  const OrderDetailsCardComponent({
    this.color,
    this.parentLabel,
    this.childLabel,
    this.dateTime,
    this.checkIcon,
    this.circleAvatarIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 3),
              spreadRadius: 0.7,
              blurRadius: 0.8,
              color: Colors.black12,
            ),
            BoxShadow(
              offset: Offset(-1, -1),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              color: Colors.black12,
            ),
          ],
          color: kBackgroundColor,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor1,
              radius: 20,
              child: circleAvatarIcon,
            ),
            SizedBox(width: 12,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(parentLabel,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      )
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Text(childLabel,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.black,
                      )
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Text(dateTime,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              child: checkIcon,
            ),
          ],
        ),
      ),
    );
  }
}