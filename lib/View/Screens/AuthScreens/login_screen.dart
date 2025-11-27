import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_nova/Core/AppRoute/app_route.dart';
import 'package:learn_nova/Core/Controllers/login_controller.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';
import 'package:learn_nova/View/Screens/AuthScreens/sign_up_screen.dart';
import 'package:learn_nova/View/Widget/app_bar.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedText = "STUDENT";

  bool isShowPassword=true;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: const CustomAppBar(),

          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                /// Login Title
                Text(
                  AppString.loginText,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                /// Student / Teacher Switcher
                buildUserRoleSection(),

                const SizedBox(height: 25),

                /// Input Fields
                buildInputSection(context),

                const SizedBox(height: 10),

                /// Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppString.forgotPasswordText,
                    style: TextStyle(
                      color: AppColors.forgotTextColor,
                      fontSize: 12,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Login Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: moveToSignUpScreen,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.themeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      AppString.loginText,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Google Login
                buildContinueWithGoogleSection(context),

                const SizedBox(height: 20),

                /// Create Account Text
                buildRichText(),

                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      }
    );
  }

  // ---------------- USER ROLE -----------------

  Column buildUserRoleSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Student
            GestureDetector(
              onTap: () => setState(() => selectedText = "STUDENT"),
              child: Text(
                "Student",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: selectedText == "STUDENT"
                      ? AppColors.themeColor
                      : AppColors.blackColor,
                ),
              ),
            ),

            const SizedBox(width: 20),

            /// Teacher
            GestureDetector(
              onTap: () => setState(() => selectedText = "TEACHER"),
              child: Text(
                "Teacher",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: selectedText == "TEACHER"
                      ? AppColors.themeColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        /// Indicator Lines
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 2,
              width: 60,
              color: selectedText == "STUDENT"
                  ? AppColors.themeColor
                  : AppColors.dividerColor,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 2,
              width: 60,
              color: selectedText == "TEACHER"
                  ? AppColors.themeColor
                  : AppColors.dividerColor,
            ),
          ],
        ),
      ],
    );
  }

  // ---------------- INPUT SECTION -----------------

  Column buildInputSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        /// Email Label
        Text(AppString.emailText,
            style: Theme.of(context).textTheme.labelSmall),

        const SizedBox(height: 4),

        /// Email Field
        TextFormField(
          decoration: InputDecoration(
            hintText: "example@gmail.com",
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        const SizedBox(height: 15),

        /// Password Label
        Text(AppString.passwordText,
            style: Theme.of(context).textTheme.labelSmall),

        const SizedBox(height: 4),

        /// Password Field
        TextFormField(
          obscureText: isShowPassword,
          decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: (){
              isShowPassword=!isShowPassword;
              setState(() {

              });
            }, icon: isShowPassword?Icon(Icons.visibility):Icon(Icons.visibility_off)),
            hintText: "••••••••",
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  // ---------------- GOOGLE LOGIN -----------------

  Container buildContinueWithGoogleSection(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.googleButtonColor,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.g_mobiledata, size: 28),
          const SizedBox(width: 8),
          Text(
            "Login With Google",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  // ---------------- SIGNUP TEXT -----------------

  RichText buildRichText() {
    return RichText(
      text: TextSpan(
        text: AppString.newToLearnNovaText,
        style: const TextStyle(color: Colors.black, fontSize: 12),

        children: [
          TextSpan(
            text: AppString.createAccountText,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpScreen()),
                );
              },
          ),
        ],
      ),
    );
  }

  void moveToSignUpScreen() {
 Get.to(() => SignUpScreen());
  }
}
