import 'dart:convert';

import 'package:cliq_order_get/Components/ProgressDialog.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TextEditorForPhoneVerify.dart';
import 'package:cliq_order_get/Components/TextFieldComponent.dart';
import 'package:cliq_order_get/Model/OTP.dart';
import 'package:cliq_order_get/Services/NetworkUtility.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:cliq_order_get/Views/SignUpScreen.dart';
import 'package:cliq_order_get/util/paths.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../ConstantColors.dart';

class OtpVerification extends StatefulWidget {
  final OTPModel otpModel;
  OtpVerification({this.otpModel});

  @override
  _OtpVerificationState createState() =>
      _OtpVerificationState(otpModel: otpModel);
}

class _OtpVerificationState extends State<OtpVerification> {
  final OTPModel otpModel;
  _OtpVerificationState({this.otpModel});

  String globalPin;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Verification',
                      style: GoogleFonts.lato(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/verifyotp.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Enter the verification code we',
                      style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'just sent to your email',
                      style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'address.',
                      style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 50,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                        setState(() {
                          globalPin = (pin);
                          print("globalPin: $globalPin");
                        });
                      },
                      obscureText: true,
                      onChanged: (pin){
                        globalPin = (pin);
                        print("globalPin: $globalPin");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "If you didn't receive a code.",
                        style: GoogleFonts.lato(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('resend');
                      },
                      child: Container(
                        child: Text(
                          'Resend',
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
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: TextButtonComponent(
                      labelColor: kPrimaryColor1,
                      label: 'Send',
                      onTap: () {
                        // 1. Validate the field
                        bool canRegister = isValidInput(context);

                        if (canRegister) {
                          registerUser(context: context, otpModel: otpModel);
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidInput(BuildContext context) {
    if (globalPin == null) {
      new UtilityService().showMessage(
          message: 'Please enter pin',
          context: context,
          icon: Icon(
            Icons.error_outline,
            color: Colors.red,
          ));
      return false;
    } else if (globalPin != otpModel.pin.toString()) {
      new UtilityService().showMessage(
          message: 'Invalid pin',
          context: context,
          icon: Icon(
            Icons.error_outline,
            color: Colors.red,
          ));
      return false;
    }
    else{
      return true;
    }
  }

  void registerUser({OTPModel otpModel, BuildContext context}) async{
    showDialog(
      context: context,
      builder: (context) {
        return ProgressDialog(displayMessage: 'Please wait...');
      },
    );
    print(otpModel);
    var jsonBody = jsonEncode(otpModel);
    NetworkUtility networkUtility = NetworkUtility();
    Response response = await networkUtility.postDataWithAuth(
        url: CREATE_USER_URL, body: jsonBody, auth: ACCESS_TOKEN);
    print(response.body);

    Navigator.of(context, rootNavigator: true).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));



  }
}
