import 'package:cliq_order_get/Components/StackCardComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CircularTextComponent.dart';
import 'IconAndTextPillComponent.dart';

class CartComponent extends StatelessWidget {
  final String thumbnailImage;
  final String labelName;
  final String labelPrice;
  final IconAndTextPillComponent iconAndTextPillComponentOne;
  final IconAndTextPillComponent iconAndTextPillComponentTwo;

  const CartComponent({
    @required this.thumbnailImage,
    @required this.labelName,
    @required this.labelPrice,
    @required this.iconAndTextPillComponentOne,
    @required this.iconAndTextPillComponentTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  image: DecorationImage(
                    image: AssetImage(thumbnailImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Watch'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(r'$18.99'),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
