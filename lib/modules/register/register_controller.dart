import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../shared/services/auth_service.dart';

class RegisterController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthService auth = AuthService();
}