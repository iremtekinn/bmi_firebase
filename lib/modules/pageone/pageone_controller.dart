import 'package:bmi_firebase/shared/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../shared/services/auth_service.dart';
//import '../../routes/routes.dart';

class PageOneController extends GetxController{
   AuthService authService = AuthService();
   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
   FirestoreService  db  =FirestoreService();
   
   double height=0;
  double weight=0;
  double bmi = 0.0;
  TextEditingController heightController=TextEditingController();
  TextEditingController weightController=TextEditingController();


 bmiHesapla(){
  if(weightController.text.isEmpty||heightController.text.isEmpty){
    print("boş olamazzzzzzzzzzzzzzzzzzz");
    
  }
  else {

hesaplama();
heightController.clear();
weightController.clear();
}


  }

  hesaplama() {
    double a = double.parse(heightController.text) / 100;
    double b = a * a;
    bmi = double.parse(weightController.text) / b;

    print("vücut kitle endeksisdsdsd: " + bmi.toString());

    if (bmi < 18.5) {
      Get.toNamed(Routes.PageTwo);
    
    } else if (bmi >= 18.5 && bmi <= 25) {
      Get.toNamed(Routes.PageTwo);
      print("vücut kitle endeksi: " + bmi.toString());
   
    } else if (bmi > 25 && bmi <= 30) {
      Get.toNamed(Routes.PageTwo);
    
   
    } else {
      Get.toNamed(Routes.PageTwo);
      
    }
  }
}