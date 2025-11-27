import 'package:flutter/material.dart';
import 'package:learn_nova/Core/AppRoute/app_route.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:get/get.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/explanation_screen.dart';
class LightBulbScreen extends StatefulWidget {
  const LightBulbScreen({super.key});

  @override
  State<LightBulbScreen> createState() => _LightBulbScreenState();
}

class _LightBulbScreenState extends State<LightBulbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Let’s test your understanding!")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffDBF1FF),
                    ),
                    child: Center(
                      child: Text(
                        "Vocabulary",
                        style: TextStyle(color: AppColors.themeColor),
                      ),
                    ),
                  ),

                  Container(
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(),
                    child: Row(children: [Icon(Icons.alarm), Text("23.0s")]),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF6FAFF),
                ),
                child: Text(
                  "Q. My dog is a little __ , especially when around other dogs.",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF1F4F8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Scared", style: TextStyle(fontSize: 16)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("A"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF1F4F8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Frightening", style: TextStyle(fontSize: 16)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("B"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF1F4F8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Timid", style: TextStyle(fontSize: 16)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("C"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF1F4F8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Concerned", style: TextStyle(fontSize: 16)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("D"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              ElevatedButton(onPressed: () {
                Get.to(()=>ExplanationScreen());

              }, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}
