import 'package:get/get.dart';
import 'package:money/view/widget/bottomNavbar.dart';

import '../view/LoginRegis/Login.dart';

appRoute() => [

  GetPage(name: '/Home', page: () => const Homepage(),transition: Transition.zoom),
  GetPage(name: '/Login', page: () => const Login(),transition: Transition.rightToLeft),


];