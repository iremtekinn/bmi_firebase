import 'package:bmi_firebase/modules/pageone/pageone_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class PageOneBinding extends Bindings{
  @override 
  void dependencies(){
  Get.put(PageOneController());
  }
}