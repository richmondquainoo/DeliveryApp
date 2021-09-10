import 'package:cliq_order_get/Components/CardComponent.dart';
import 'package:cliq_order_get/Components/CircularTextComponent.dart';
import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/IconAndTextPillComponent.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:cliq_order_get/Views/CheckOutScreen.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';

class SelectedProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 430,
                      //color: Colors.teal,
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: ClipPath(
                            clipper: ClipPathClass(),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 19,
                                          vertical: 10,
                                        ),
                                        child: Container(
                                          child: TopBarComponent(
                                            icon: Icon(
                                              Icons.arrow_back_ios_outlined,
                                              color: Colors.white,
                                            ),
                                            iconFunction: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen(),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Container(
                                          //alignment: Alignment.topCenter,
                                          child: Text(
                                            'Classic Brown',
                                            style: GoogleFonts.lato(
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: CardComponent(
                              imageUrl: 'assets/images/shoe4.jpg',
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Classic Brown',
                              style: GoogleFonts.lato(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              r'$43.99',
                              style: GoogleFonts.lato(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          IconAndTextPillComponent(
                            label: '35-45 mins',
                            userIcon: Icons.access_time_rounded,
                          ),
                          Container(
                            child: Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w200),
                            ),
                          ),
                          IconAndTextPillComponent(
                              label: r'$3.4', userIcon: Icons.delivery_dining)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Text(
                          'Full brogues or wingtips are flamboyant shoes with a swept back toe cap which looks like a "w". '
                          'These heavily perforated shoes are best suited to smart casual use.',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              wordSpacing: 0.1,
                              letterSpacing: 0.3),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Quantity: ',
                                  style: GoogleFonts.roboto(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              CircularTextComponent(
                                label: '1',
                                width: 60,
                                height: 40,
                                borderRadius: 10,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircularTextComponent(
                                label: '-',
                                width: 40,
                                height: 40,
                                borderRadius: 20,
                              ),
                              SizedBox(
                                width: 7.5,
                              ),
                              CircularTextComponent(
                                label: '+',
                                width: 40,
                                height: 40,
                                borderRadius: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 46,
                            width: 200,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: kPrimaryColor1, // set border color
                                  width: 2.0), // set border width
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+',
                                    style: GoogleFonts.ibmPlexSerif(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,
                                        color: kPrimaryColor1),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    'Add item',
                                    style: GoogleFonts.ibmPlexSerif(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        color: kPrimaryColor1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 20),
                      child: TextButtonComponent(
                        label: 'Add to Cart',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CheckOutScreen(),
                            ),
                          );
                        },
                        labelColor: kPrimaryColor1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
