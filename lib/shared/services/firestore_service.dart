import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService {
  var user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore db= FirebaseFirestore.instance;
  Future<FirestoreService> init() async {
    return this;
  }
  
  Future<void> addUserInfo(height, weight, bmi) async{
     return await db
        .collection('users')
        .doc(user!.email!)
        .collection('bmii')
        .doc()
        .set({
          'height': height,
          'weight': weight,
          'bmi': bmi,
        })
        .then((value) => print("BMI Calculated"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  }

  