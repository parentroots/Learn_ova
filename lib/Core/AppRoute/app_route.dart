import 'package:get/get.dart';
import 'package:learn_nova/View/Screens/AuthScreens/login_screen.dart';
import 'package:learn_nova/View/Screens/AuthScreens/sign_up_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/explanation_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/main_bottom_nav_screen.dart';
import 'package:learn_nova/View/Screens/profile_survey_screeen.dart';
class AppRoute {

  ///==================== Initial Routes ====================
  ///
  static const String signUpScreen = "/sign_up_screen";
  static const String loginScreen = "/login_screen";
  static const String mainBottomNavScreen = "/main_bottom_nav_screen";
  static const String profileSurveyScreen = "/profile_survey_screen";
  static const String explanationScreen = "/explanation_screen";


  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================


    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: mainBottomNavScreen, page: () => const MainBottomNavScreen()),
    GetPage(name: profileSurveyScreen, page: () => const SurveyScreenContent()),
    GetPage(name: explanationScreen, page: () => const ExplanationScreen()),




  ];
}