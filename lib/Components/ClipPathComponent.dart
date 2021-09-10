import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:cliq_order_get/Views/MapScreen.dart';
import 'package:cliq_order_get/Views/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class ClipPathComponent extends StatelessWidget {
  final String label1;
  final String label2;
  final IconButton iconButton;
  final TopBarComponent topBarComponent;

  ClipPathComponent(
      {this.label1,
      @required this.label2,
      this.iconButton,
      this.topBarComponent});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          color: kPrimaryColor1,
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                child: topBarComponent != null ? topBarComponent : TopBarComponent(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 68, horizontal: 15),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    label1 != null ? label1 : 'Delivering to',
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            //alignment: Alignment.center,
                            child: Text(
                              label2,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            //alignment: Alignment.center,
                            child: IconButton(
                              icon: iconButton != null
                                  ? iconButton
                                  : Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        //alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                            size: 23,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MapScreen(),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        clipper: ClipPathClass(),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
