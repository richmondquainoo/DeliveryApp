import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TextFieldComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:cliq_order_get/Views/OtpVerification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var emailController  = TextEditingController();

  String email;

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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgot Password ?',
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
                      image: AssetImage('assets/images/forgotpassword.jpg'),
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
                      'Enter the email address',
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
                      'associated with your account.',
                      style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'We will email you a link to reset your password.',
                      style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
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
                      'your password.',
                      style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  child: TextFieldComponent(
                    prefixIcon: Icon(Icons.email_outlined),
                    hint: 'Enter your email address',
                    obscureText: false,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: TextButtonComponent(
                      labelColor: kPrimaryColor1,
                      label: 'Send',
                      onTap: () {
                       //1. Validate email field
                        bool canSendEmail = isCorrectInput(context);

                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isCorrectInput(BuildContext context){
    if(emailController.text.length == 0 ||
    !emailController.text.contains('@') ||
    !emailController.text.contains(".")
    ){
      new UtilityService().showMessage(
        context: context,
        message: 'Please enter email',
        icon: Icon(Icons.error_outline,
          color: Colors.red,
        )
      );
      return false;
    }
    else{
      return true;
    }
  }
}
