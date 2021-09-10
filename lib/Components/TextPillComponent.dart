import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class TextPillComponent extends StatelessWidget {
 final String label;
 final Color inputColor;

  const TextPillComponent({
    @required this.label,
    this.inputColor
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
              right: 7, left: 7, top: 3, bottom: 3),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: inputColor != null ? inputColor : Colors.teal,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 3,right: 3),
            child: Text(
              label,
              style: GoogleFonts.lato(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}