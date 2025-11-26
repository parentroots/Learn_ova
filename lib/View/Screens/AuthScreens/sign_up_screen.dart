import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';
import 'package:learn_nova/View/Screens/AuthScreens/sign_up_screen.dart';
import 'package:learn_nova/View/Widget/app_bar.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Text(AppString.createAccountText,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              buildUserRoleSection(),

              buildInputSection(context),

              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [

                    Align(
                      alignment:Alignment.centerRight,
                      child: Text(
                        AppString.forgotPasswordText,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: AppColors.forgotTextColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    ElevatedButton(onPressed: () {
                    }, child: Text(AppString.signUuText)),

                    SizedBox(height: 10),

                    buildContinueWithGoogleSection(context),

                    buildRichText(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildUserRoleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedText = "STUDENT";
                });
              },
              child: Text(
                "Student",
                style: TextStyle(
                  color: selectedText == "STUDENT"
                      ? AppColors.themeColor
                      : AppColors.blackColor,
                ),
              ),
            ),
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                selectedText = "TEACHER";
                setState(() {});
              },
              child: Text(
                "Teacher",
                style: TextStyle(
                  color: selectedText == "TEACHER"
                      ? AppColors.themeColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: 60,
              color: selectedText == "STUDENT"
                  ? AppColors.themeColor
                  : Colors.grey,
            ),
            Container(
              height: 2,
              width: 60,
              color: selectedText == "TEACHER"
                  ? AppColors.themeColor
                  : Colors.grey,
            ),
          ],
        ),
      ],
    );
  }

  Column buildInputSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppString.emailText, style: Theme.of(context).textTheme.labelSmall),
        Card(
          color: Colors.white,
          elevation: 0,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "johndoe@gmail.com",
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
        ),

        SizedBox(height: 4),

        Text(AppString.passwordText, style: Theme.of(context).textTheme.labelSmall),
        Card(
          color: Colors.white,
          elevation: 0,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "password",
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
        ),


        Text(AppString.confirmPasswordText, style: Theme.of(context).textTheme.labelSmall),
        Card(
          color: Colors.white,
          elevation: 0,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "confirm password",
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
        ),



      ],
    );
  }

  Container buildContinueWithGoogleSection(BuildContext context) {
    return Container(
      height: 56,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.googleButtonColor,
      ),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle),
            Text(
              "Login With Google",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  RichText buildRichText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: AppString.alreadyHaveAnAccountText,
        style: TextStyle(color: Colors.black, fontSize: 12),
        children: [
          TextSpan(
            text: AppString.createAccountText,
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),

            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
  

}
