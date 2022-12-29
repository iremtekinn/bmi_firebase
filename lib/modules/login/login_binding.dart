import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings{
  @override 
  void dependencies(){
    Get.put(LoginController());
  }
}