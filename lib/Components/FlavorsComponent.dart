import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TextPillComponent.dart';


class FlavorsComponent extends StatelessWidget {
  final String label;
  final TextPillComponent textPillComponent;

  const FlavorsComponent({
    @required this.label,
    @required this.textPillComponent
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                label,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: textPillComponent,
        ),
      ],
    );
  }
}