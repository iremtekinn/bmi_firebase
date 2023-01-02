import 'package:bmi_firebase/shared/services/auth_service.dart';
import 'package:bmi_firebase/shared/services/firebase_service.dart';
import 'package:bmi_firebase/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class DependencyInjection{
  static init() async {
    await Get.putAsync(()=>FirebaseService().init());
  await Get.putAsync(()=>AuthService().init());
  await Get.putAsync(() => FirestoreService().init());
  }
}