import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class HorizontalTwoTextComponent extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final Color userColor;

  HorizontalTwoTextComponent({
    @required this.leftLabel,
    @required this.rightLabel,
    this.userColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            print('Print');
          },
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              leftLabel,
              style: GoogleFonts.roboto(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor1),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            print('Print');
          },
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              rightLabel,
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: userColor != null ? userColor : kPrimaryColor1),
            ),
          ),
        ),
      ],
    );
  }
}