

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/app_pages.dart';
import '../pageone/pageone_controller.dart';

class PageTwo extends GetView<PageOneController>{
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.only(left:20.0,top:60.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.14),
                      blurRadius: 5,
                      offset: Offset(10, 20),
                    ),
                  ]),
              width:90.w,
                height: 40.h,
                
              child: Column(
                
                children: [
                  SizedBox(height: 4.h,),
                  Text("Your BMI Result ...",style:GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(
                              0xff989898,
                            ),
                            fontSize: 20.sp))),
                            SizedBox(height: 4.h,),
                            Text(
                              //"25.0",
                              controller.result.toStringAsFixed(2),
                            
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w400,
                ))),

                
                SizedBox(height: 2.h,),
                Padding(
                  padding: const EdgeInsets.only(left:60.0),
                  child: Row(
                    children: [
                     Text("Your weight is",style:GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(
                                0xffECECEC,//0xffE1E1E1 ,
                              ),
                              fontSize: 16.sp))),
                              SizedBox(width:4.w),
                              Text(
                                //"Normal",
                                controller.bmiStatus,
                                style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color:Color(0xff3624FF),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ))),
                    ],
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left:15.0,top:10),
                  child: Text(
                                  //"Normal",
                                  controller.bmiInterpretation,
                                  style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color:Color(0xff989898),
                        fontSize: 16.sp,
                        
                      ))),
                ),
                SizedBox(height: 2.h,),
            Text("Healthy BMI range :18.5 kg/m2 - 25 kg/m2",style:GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(
                             0xffECECEC,//0xffE1E1E1 ,
                             

                            ),
                            fontSize: 16.sp))),
                ],
              )
            ),
            

            
          ),
          
          Padding(
            padding: const EdgeInsets.only(left:48.0,top:310.0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.PageOne);
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.14),
                          blurRadius: 5,
                          offset: Offset(10, 20),
                        ),
                      ]),
                  width:20.w,
                    height: 10.h,
                    child: Icon(Icons.arrow_back_ios_new,color:Color(0xff3624FF), ),
                    
                
                ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}