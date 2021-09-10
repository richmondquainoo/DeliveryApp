import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Components/LoginTextFieldComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AccountSettingScreen.dart';

class PasswordSettingScreen extends StatefulWidget {
  @override
  _PasswordSettingScreenState createState() => _PasswordSettingScreenState();
}

class _PasswordSettingScreenState extends State<PasswordSettingScreen> {
  var oldPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmedPasswordController = TextEditingController();

  String oldPassword;
  String newPassword;
  String confirmedPassword;

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
                label: 'Password Settings',
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
                          "Change my password",
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
                      hint: 'Enter old password',
                      obscureText: true,
                      enableField: true,
                      controller: oldPasswordController,
                      onChange: (value) {
                        oldPassword = value;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.lock_outline),
                      hint: 'Enter new password',
                      obscureText: true,
                      enableField: true,
                      controller: newPasswordController,
                      onChange: (value) {
                        newPassword = value;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.lock_outline),
                      hint: 'Confirm new password',
                      obscureText: true,
                      enableField: true,
                      controller: confirmedPasswordController,
                      onChange: (value) {
                        confirmedPassword = value;
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: (){
                        bool canUpdatePassword = isValidEntries(context);
                        // if (canUpdatePassword){}
                        new UtilityService().confirmationBox(
                            title: "Password change confirmation",
                            context: context,
                            message: 'Are you sure you want to change password?',
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
    );
  }

  isValidEntries(BuildContext context){
    if(oldPasswordController.text.length < 4){
      new UtilityService().showMessage(
        message: 'Please enter old password',
        icon: Icon(Icons.error),
        context: context,
      );
      return false;
  }else if(newPasswordController.text.length < 4){
      new UtilityService().showMessage(
        message: 'Please enter new password',
        icon: Icon(Icons.error),
        context: context,
      );
      return false;
    }else if(confirmedPasswordController.text.length < 4){
      new UtilityService().showMessage(
        message: 'Please enter next password',
        icon: Icon(Icons.error),
        context: context,
      );
      return false;
    }else{
      return true;
    }
    }
}
