import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import 'IconAndTextPillComponent.dart';

class StackCardComponent extends StatelessWidget {
  final String label1;
  final String label2;
  final IconAndTextPillComponent iconAndTextPillComponent1;
  final IconAndTextPillComponent iconAndTextPillComponent2;
  final IconAndTextPillComponent iconAndTextPillComponent3;

  StackCardComponent({
    @required this.label1,
    @required this.label2,
    @required this.iconAndTextPillComponent1,
    @required this.iconAndTextPillComponent2,
    @required this.iconAndTextPillComponent3,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 43,
            ),
            child: Container(
              height: 120,
              width: 286,
              decoration: BoxDecoration(
                color: kPrimaryColor2,
                borderRadius: BorderRadius.circular(
                  20,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.2, 0.2),
                    blurRadius: 0.2,
                    spreadRadius: 0.18,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        label1 != null ? label1 : 'Product',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        label2 != null ? label2 : 'Description',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    height: 10,
                    thickness: 0.4,
                    color: Colors.black,
                  ),
                  Stack(
                    children: [
                      Align(
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            iconAndTextPillComponent1 != null
                                ? iconAndTextPillComponent1
                                : Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      //SizedBox(width: 7),
                                      Text(
                                        '4.0',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                            iconAndTextPillComponent2 != null
                                ? iconAndTextPillComponent2
                                : Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      //SizedBox(width: 7),
                                      Text(
                                        '20 -30 mins',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                            iconAndTextPillComponent3 != null
                                ? iconAndTextPillComponent3
                                : Row(
                                    children: [
                                      Icon(
                                        Icons.delivery_dining,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      //SizedBox(width: 7),
                                      Text(
                                        'Paid',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
