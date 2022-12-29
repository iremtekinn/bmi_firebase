import 'package:bmi_firebase/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 40),
            child: Text(
              "Hello there !",
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
            padding: const EdgeInsets.only(top: 10.0, left: 30.0),
            child: Text("Welcome to your dashboard",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.14),
                      blurRadius: 5,
                      offset: Offset(6, 15),
                    ),
                  ]),
              width: double.infinity,
              height: 10.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  
                  decoration: InputDecoration(filled: true,
                  fillColor: Colors.yellow,
                      enabledBorder: OutlineInputBorder(
                        //borderSide: BorderSide(width: 3, color: Colors.yellow),
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
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
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
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Password",
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
            padding: const EdgeInsets.only(top:50.0,left: 80),
            child: Container(
              width: 70.w,
              height: 6.h,
              //color:Colors.blue,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:90.0),
                    child: Container(
                      decoration: BoxDecoration(
                         //color:Colors.yellow,
                         borderRadius: BorderRadius.circular(15)
                      ),
                      width:20.w,
                      height: 5.h,
                      
                      child: Center(
                        child: Text("Signup",style: GoogleFonts.roboto(
                               textStyle: TextStyle(
                             fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                           ))),
                      ),
                    ),
                  ),
                 Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      decoration: BoxDecoration(
                       color:Color(0xffF0F0F0),
                       borderRadius: BorderRadius.circular(15)

                      ),
                      width:20.w,
                      height: 5.h,
                      
                      child: Center(
                        child: Text("Login",style: GoogleFonts.roboto(
                               textStyle: TextStyle(
                             fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                           ))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:8.0,left:50.0),
            child: Text("Reset Password !",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color:Color(0xff3624FF),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ))),
          ),

          
          Padding(
            padding: const EdgeInsets.only(top:120.0),
            child: Container(
              width:double.infinity,
              height: 5.h,
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left:16.0,right:16.0),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("EN | FR | AR",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                  ),),),
                  
                  Text("Contact Support !",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                  ),)),

                ],),
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
