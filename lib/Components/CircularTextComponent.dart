import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CircularTextComponent extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final double borderRadius;

  const CircularTextComponent({
    @required this.label,
    @required this.height,
    @required this.width,
    @required this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.black, // set border color
            width: 2.0), // set border width
        borderRadius:
        BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.ibmPlexSerif(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
    );
  }
}