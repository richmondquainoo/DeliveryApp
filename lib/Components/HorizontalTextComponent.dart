import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalTextComponent extends StatelessWidget {
  final String label;
  final Color userColor;

  HorizontalTextComponent({
    @ required this.label,
    this.userColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 30,
      child: Text(label,
          style: GoogleFonts.actor(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: userColor != null ? userColor : Colors.black,
            letterSpacing: 1.0,
          )),
    );
  }
}
