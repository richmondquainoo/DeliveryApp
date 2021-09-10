import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComponent extends StatelessWidget {
  final double height;
  @required
  final String imageUrl;


  const CardComponent({
    Key key,
    this.height,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (height != null && height > 0) ? height :270,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
          // color: Colors.teal,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.black26,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
    );
  }
}
