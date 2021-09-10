import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/AccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    color: kPrimaryColor1,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 35, horizontal: 12),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AccountScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                "About App",
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
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Text(
                      "Click-Order-Get",
                      style: GoogleFonts.lato(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    child: Text(
                      "Version 1.1.0",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: kPrimaryColor1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    child: Text(
                      "Release Date: September 2021",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: kPrimaryColor1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
