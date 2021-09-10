import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class IconAndTextPillComponent extends StatelessWidget {
  final String label;
  final IconData userIcon;
  final Color userColor;

  IconAndTextPillComponent({
      @required this.label,
      @required this.userIcon,
      this.userColor
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 7, left: 7,top: 3, bottom: 3),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: userColor != null ? userColor : kPrimaryColor1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            userIcon,
            color: Colors.white,
            size: 18,
          ),
          SizedBox(width: 7),
          Text(
            label,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}