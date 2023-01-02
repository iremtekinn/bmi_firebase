import 'package:bmi_firebase/modules/pagetwo/pagetwo_controller.dart';
import 'package:get/get.dart';

import '../pageone/pageone_controller.dart';

class PageTwoBinding extends Bindings{
  @override 
  void dependencies(){
  Get.put(PageOneController());
  }
}