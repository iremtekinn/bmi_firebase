import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/register/register_binding.dart';
import '../modules/register/register_screen.dart';
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
];

}