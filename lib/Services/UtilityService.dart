import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UtilityService {
  void showMessage({String message, Icon icon, BuildContext context}) {
    // if (!mounted) return;
    showFlash(
        context: context,
        duration: Duration(seconds: 3),
        builder: (_, controller) {
          return Flash(
            controller: controller,
            position: FlashPosition.bottom,
            style: FlashStyle.grounded,
            child: FlashBar(
              icon: icon,
              message: Text(message),
            ),
          );
        });
  }

  void confirmationBox({String title, String message, BuildContext context, Function onYes, Function onNo}) {
    showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 260,
                  width: 400,
                  decoration: BoxDecoration(
                    color: kPrimaryColor2,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.5, 0.5),
                        spreadRadius: 0.2,
                        blurRadius: 0.2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: GoogleFonts.lato(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          //alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              message,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: onYes,
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0.4, 0.5),
                                    spreadRadius: 0.2,
                                    blurRadius: 0.2,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),

                                ),
                              ),

                            ),
                          ),
                          SizedBox(width: 14,),
                          GestureDetector(
                            onTap: onNo,
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0.4, 0.5),
                                    spreadRadius: 0.2,
                                    blurRadius: 0.2,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),

                                ),
                              ),

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
