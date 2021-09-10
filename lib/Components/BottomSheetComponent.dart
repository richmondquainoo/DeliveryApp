import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../ConstantColors.dart';
import 'TextButtonComponent.dart';

class BottomSheetComponent extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final double borderRadius;


  const BottomSheetComponent({
      @required this.backgroundColor,
      @required this.height,
      this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height != null ? height : 225,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(borderRadius != null ? borderRadius : 20),
            topLeft: Radius.circular(borderRadius != null ? borderRadius : 20),
          ),
          color: backgroundColor != null ? backgroundColor : kPrimaryColor2,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(14),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                    hintText: 'Search city, district, street...',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButtonComponent(
                    label: 'Continue',
                    labelColor: Colors.white,
                    textColor: kPrimaryColor1,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
