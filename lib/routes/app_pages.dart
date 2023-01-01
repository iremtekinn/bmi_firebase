//import 'package:bmi_firebase/modules/pageone/pageone.dart';
import 'package:bmi_firebase/modules/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/pageone/pageone_binding.dart';
import '../modules/pageone/pageone_screen.dart';
import '../modules/pagetwo/pagetwo_binding.dart';
import '../modules/pagetwo/pagetwo_screen.dart';
import '../modules/register/register_binding.dart';
import '../modules/register/register_screen.dart';
import '../modules/splash/splash_binding.dart';
part 'app_routes.dart';
class AppPages{
static const INITAL =Routes.LOGIN;

static final routes =[
  GetPage( 
    name:Routes.REGISTER,
    page:()=>Register(),
    binding:RegisterBinding(),
  ),

  GetPage(
    name: Routes.LOGIN, 
    page: ()=>Login(),
     binding: LoginBinding(),
   
    ),

    GetPage(
    name: Routes.PageOne, 
    page: ()=>PageOne(),
     binding: PageOneBinding(),
   
    ),

    GetPage(
    name: Routes.PageTwo, 
    page: ()=>PageTwo(),
     binding: PageTwoBinding(),
   
    ),

     GetPage(
        name: Routes.Splash,
        page: () => SplashScreen(),
        binding: Splashbinding()),

    
];

}