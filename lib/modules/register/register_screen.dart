import 'package:bmi_firebase/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/app_pages.dart';

class Register extends GetView<RegisterController> {
   const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff9675),
       resizeToAvoidBottomInset: false,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 150),
            child: Text(
                "Sign Up",
                style: GoogleFonts.pragatiNarrow(color: Colors.white,
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
            padding: const EdgeInsets.only(top: 10.0, left: 30.0),
            child: Text("Create your new account, we are glad ",style: GoogleFonts.pragatiNarrow(
                      textStyle: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                  ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 30.0),
            child: Text("that you joined us ",style: GoogleFonts.pragatiNarrow(
                      textStyle: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                  ))),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.14),
                      blurRadius: 5,
                      offset: Offset(6, 15),
                    ),
                  ]),
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Username/Email",
                    contentPadding: EdgeInsets.only(left: 100.0),
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
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.14),
                      blurRadius: 5,
                      offset: Offset(6, 15),
                    ),
                  ]),
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Password",
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
            padding: const EdgeInsets.only(top:50.0,left: 80),
            child: Container(
              width: 70.w,
              height: 6.h,
              //color:Colors.blue,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:90.0),
                    child: 
                       GestureDetector(
                        onTap: () {
                        controller.auth.createUser(controller.email.text,controller.password.text);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color:Colors.black,
                           
                             borderRadius: BorderRadius.circular(15)
                          ),
                          width:20.w,
                          height: 5.h,
                          
                          child: Center(
                            child: Text("Signup",style: GoogleFonts.roboto(
                                   textStyle: TextStyle(color:Colors.black,
                                 fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                               ))),
                          ),
                        ),
                      ),
                    
                  ),
                 Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                         color:Colors.black,
                         borderRadius: BorderRadius.circular(15)
                    
                        ),
                        width:20.w,
                        height: 5.h,
                        
                        child: Center(
                          child: Text("Login",style: GoogleFonts.roboto(
                                 textStyle: TextStyle(color:Color(0xffff9675),
                               fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                             ))),
                        ),
                      ),
                    ),
                  ),
                   
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:150,left: 20),
            child: Text("EN | FR | AR",style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),),),
          ),
        ],
      )
    );
  }
}