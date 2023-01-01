import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff9675),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(120)
          ),
          width:60.w,
          height: 30.h,
          
          child: Center(
            child:Text(
                "BMI",
                style: GoogleFonts.sacramento(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 28.sp,
                      color: Color(0xffff9675),
                    ),
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(
                          0,
                          4,
                        ),
                      )
                    ]),
              ), 
            ),
        ),
      ),
    );
  }
}