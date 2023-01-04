import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'di.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
         return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         //denemeeeeeeeeeeee
          primarySwatch: Colors.blue,
        ),
       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
       debugShowCheckedModeBanner: false,
       initialRoute: Routes.Splash,
       getPages: AppPages.routes,
      );
      },
      //child:
      
    );
  }
}



  

