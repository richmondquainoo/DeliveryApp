import 'package:cliq_order_get/Views/AccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class FlatClipPathComponent extends StatelessWidget {
  final String label;
  final Color color;
  final double height;
  final Function onPressed;

  FlatClipPathComponent({
    @required this.label,
    this.color,
    this.height,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height != null ? height : 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color != null ? color : kPrimaryColor1,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 29,left: 14),
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Colors.white,
                        ),
                        onPressed: onPressed,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  child: Text(
                    label,
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}