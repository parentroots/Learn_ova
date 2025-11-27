import 'package:get/get.dart';

class LoginController extends GetxController{
  bool isShowPassword=true;
  void showPassword(){
    isShowPassword=!isShowPassword;
    update();
  }



}