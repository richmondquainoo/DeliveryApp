import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Components/LoginTextFieldComponent.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import 'AccountSettingScreen.dart';

class EmailSettingScreen extends StatefulWidget {

  @override
  _EmailSettingScreenState createState() => _EmailSettingScreenState();
}

class _EmailSettingScreenState extends State<EmailSettingScreen> {
  var newEmailController =  TextEditingController();

  String newEmail;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountSettingScreen(),
                    ),
                  );
                },
                label: 'Update Email Address',
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Container(
                        child: Text(
                          "Update my email address",
                          style: GoogleFonts.lato(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.lock_outline),
                      hint: 'Enter new email address',
                      obscureText: false,
                      enableField: true,
                      controller: newEmailController,
                      onChange: (value) {
                        newEmail = value;
                      },
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: (){
                        new UtilityService().confirmationBox(
                            title: 'Email address update confirmation',
                            context: context,
                            message: 'Are you sure you want to update email?',
                            onYes: (){},
                            onNo: (){
                              Navigator.pop(context);
                            }
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Done',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
