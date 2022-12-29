import 'package:bmi_firebase/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
           
          begin: Alignment.topLeft,
          end:Alignment.topRight,
           colors: [
            Color(0xffBB377D),
             Color(0xffFBD3E9)]
          )
      ),
    );
  }
}