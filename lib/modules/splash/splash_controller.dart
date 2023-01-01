import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController{
  @override 
  void onReady()async {
    super.onReady();
    //print("Splash sayfasi acildi");
    await Future.delayed(Duration(milliseconds: 3000));
    Get.toNamed(Routes.LOGIN,);
  }
}