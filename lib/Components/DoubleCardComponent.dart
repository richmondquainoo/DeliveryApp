

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import 'IconAndTextPillComponent.dart';
import 'StackCardComponent.dart';

class DoubleCardComponent extends StatelessWidget {
  final String inputImage;
  final StackCardComponent stackCardComponent;
  final Function onTap;

  DoubleCardComponent({
    @required this.inputImage,
    @required this.stackCardComponent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1, vertical: 7),
        width: 330,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(
                5.0,
                7.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.05),
              BlendMode.darken,
            ),
            image: AssetImage(inputImage),
            fit: BoxFit.cover,
          ),
        ),
        child: stackCardComponent,
      ),
    );
  }
}
