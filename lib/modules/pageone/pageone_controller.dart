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
   
   //double height=0;
 // double weight=0;
  //double bmi = 0.0;
 // var isSelected = false.obs;
  Color? bmiStatusColor;
  var bmiStatus;
  var bmiInterpretation;
  /* var height = 0.0;
  var weight = 0; */
  double result=0.0;
  TextEditingController heightController=TextEditingController();
  TextEditingController weightController=TextEditingController();


  hesaplama(String kilo ,String boy) async {
    print("fonksiyonnn + $kilo");
    //result = int.parse(kilo) / ((int.parse(boy) / 100) * (int.parse(boy)/ 100));
    var deger=(int.parse(boy)/100)*(int.parse(boy)/100);
    
    result=double.parse(kilo)/double.parse(deger.toString());
    print("resulttttttt+$result");
   
    print("resultttttttttttttt $result");
    print("aaaaaaaaaaaaaaaaaaa + $result");
    
  db.addUserInfo(weightController.text, heightController.text, result.toStringAsFixed(2));
    if (result > 30) {
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatus = "Obesity";
      bmiStatusColor = Colors.pink;
      Get.toNamed(Routes.PageTwo);
    } else if (result >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
      Get.toNamed(Routes.PageTwo);
    } else if (result >= 18.5) {
      bmiStatus = "You're healty!";
      bmiInterpretation =
          "This value is in the normal range of 20-25 for your age group. Keep up the good work!";
      bmiStatusColor = Colors.green;
      Get.toNamed(Routes.PageTwo);
    } else if (result < 18.5) {
      bmiStatus = "Underweight";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
      Get.toNamed(Routes.PageTwo);
    }
  }

  isBMIControl() {
    if (weightController.text == '' || heightController.text == '') {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'Cannot be blank',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } 
    else 
    if (int.parse(heightController.text) < 50 || int.parse(heightController.text) > 250) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The height value should be in the range of 50 - 250 cm!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (int.parse(weightController.text) < 10 || int.parse(weightController.text)> 300) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The weight value should be in the range of 10 - 300 kg!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } else {
      print(weightController.text);
      hesaplama(weightController.text,heightController.text);
     
    }
  }

  
}