import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_nova/Core/AppRoute/app_route.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';
import 'package:learn_nova/View/Screens/profile_survey_screeen.dart';
import 'package:learn_nova/View/Screens/AuthScreens/login_screen.dart';
import 'package:learn_nova/View/Widget/app_bar.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String selectedText = "STUDENT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              Center(
                child: Text(
                  AppString.createAccountText,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 14),

              buildUserRoleSection(),
              const SizedBox(height: 14),

              buildInputSection(context),

              const SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: onTapSignUpButton,
                  child: Text(AppString.signUuText),
                ),
              ),

              SizedBox(height: 30),

              Center(child: buildRichText()),
            ],
          ),
        ),
      ),
    );
  }

  // -------------------------------
  // ROLE SWITCH SECTION
  // -------------------------------
  Column buildUserRoleSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            roleText("STUDENT"),
            const SizedBox(width: 25),
            roleText("TEACHER"),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [roleIndicator("STUDENT"), roleIndicator("TEACHER")],
        ),
      ],
    );
  }

  Widget roleText(String role) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedText = role;
        });
      },
      child: Text(
        role[0] + role.substring(1).toLowerCase(), // Student / Teacher
        style: TextStyle(
          color: selectedText == role
              ? AppColors.themeColor
              : AppColors.blackColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget roleIndicator(String role) {
    return Container(
      height: 2.2,
      width: 65,
      color: selectedText == role
          ? AppColors.themeColor
          : AppColors.dividerColor,
    );
  }

  // -------------------------------
  // INPUT FIELDS
  // -------------------------------
  Column buildInputSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label(AppString.emailText),
        inputField("johndoe@gmail.com"),

        const SizedBox(height: 6),

        label(AppString.passwordText),
        inputField("password", obscure: true),

        const SizedBox(height: 6),

        label(AppString.confirmPasswordText),
        inputField("confirm password", obscure: true),
      ],
    );
  }

  Widget label(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
    );
  }

  Widget inputField(String hint, {bool obscure = false}) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 12),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 12,
          ),
        ),
      ),
    );
  }

  // -------------------------------
  // LOGIN REDIRECT TEXT
  // -------------------------------
  RichText buildRichText() {
    return RichText(
      text: TextSpan(
        text: AppString.newToLearnNovaText,
        style: const TextStyle(color: Colors.black, fontSize: 12),

        children: [
          TextSpan(
            text: AppString.loginText,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
          ),
        ],
      ),
    );
  }

  // -------------------------------
  // SIGNUP BUTTON ACTION
  // -------------------------------
  void onTapSignUpButton() {
    Get.to(() => SurveyScreenContent());

  }
}
