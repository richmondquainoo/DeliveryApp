import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUpScreen.dart';

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              children: [
                ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    height: 395,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.15), BlendMode.darken),
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/GettingStarted5.jpg'),
                      ),
                      //color: Colors.teal,
                      //borderRadius: BorderRadius.only(
                      //bottomRight: Radius.circular(30),
                      //bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Click-Order-Get",
                              style: GoogleFonts.lato(fontSize: 29),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'Welcome to your one-stop destination for all your needs.'
                                    'Be assured that all your needs will be met here.'
                                    'Are you ready?',
                                    style: GoogleFonts.lato(
                                        wordSpacing: 0.2,
                                        fontSize: 15,
                                        height: 1.5,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: TextButtonComponent(
                            labelColor: kPrimaryColor1,
                            label: 'Getting Started',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Have an account already?",
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Container(
                                child: Text(
                                  'Log in',
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimaryColor1),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By continuing, you agree to our ',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'Terms and Conditions and Privacy Policy.',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w300,
                            fontSize: 9.5,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
