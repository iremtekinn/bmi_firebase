import 'package:bmi_firebase/modules/pageone/pageone_controller.dart';
import 'package:bmi_firebase/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



//import '../../routes/app_pages.dart';

class PageOne extends GetView<PageOneController> {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:25.0,left:25.0,top:80),
              child: Text(
                "Let's Calculate your current",
                style: GoogleFonts.sacramento(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
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
            Padding(
              padding: const EdgeInsets.only(right:25.0,left:25.0,top:10),
              child: Text(
                "BMI",
                style: GoogleFonts.sacramento(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
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
            Padding(
              padding: const EdgeInsets.only(right:20.0,left:20.0,top:20.0),
              child: Text("Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ))),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0,top:90),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        //color: Color.fromRGBO(0, 0, 0, 0.14),
                        color:Color(
                                0xffECECEC,
                               // 0xffE1E1E1 ,
                              ),
                        blurRadius: 5,
                        offset: Offset(6, 15),
                      ),
                    ]),
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Age",
                      contentPadding: EdgeInsets.only(left: 140.0),
                      hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(
                                0xff989898,
                              ),
                              fontSize: 16.sp))),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0,top:50),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                       // color: Color.fromRGBO(0, 0, 0, 0.14),
                       color:Color(
                                0xffECECEC,
                               // 0xffE1E1E1 ,
                              ),
                        blurRadius: 5,
                        offset: Offset(6, 15),
                      ),
                    ]),
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Height",
                      contentPadding: EdgeInsets.only(left: 130.0),
                      hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(
                                0xff989898,
                              ),
                              fontSize: 16.sp))),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0,top:50),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                       // color: Color.fromRGBO(0, 0, 0, 0.14),
                        color:Color(
                                0xffECECEC,
                               // 0xffE1E1E1 ,
                              ),
                        blurRadius: 5,
                        offset: Offset(6, 15),
                      ),
                    ]),
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Weight",
                      contentPadding: EdgeInsets.only(left: 130.0),
                      hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(
                                0xff989898,
                              ),
                              fontSize: 16.sp))),
                ),
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(top:80.0,left:10.0),
            child: GestureDetector(
              onTap:() {
                Get.toNamed(Routes.PageTwo);
              },
              child: Center(
                child: Text("Calculate",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color:Color(0xff3624FF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ))),
              ),
            ),
                    ),
            
          ],
          )
      )
    );
  }
}