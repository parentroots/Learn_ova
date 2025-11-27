import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';

class ExplanationScreen extends StatelessWidget {
  const ExplanationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),

              Row(children: [Icon(Icons.arrow_back), Text("Back")]),

              SizedBox(height: 20),

              Text(
                "Well done! Here is the Explanation",
                style: Theme.of(context).textTheme.titleLarge,
              ),

              SizedBox(height: 20),

              ///-------vocabulary button----------
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 38,
                  width: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.googleButtonColor,
                  ),
                  child: Center(
                    child: Text(
                      "Vocabulary",
                      style: TextStyle(color: AppColors.themeColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Divider(height: 2, color: AppColors.dividerColor),

              SizedBox(height: 20),

              Container(
                height: 120,
                width: 390,
                decoration: BoxDecoration(color: AppColors.explainCardColor),
                child: Text(AppString.q1Text, style: TextStyle(fontSize: 24)),
              ),

              SizedBox(height: 15),
              Container(
                height: 56,
                width: 390,
                decoration: BoxDecoration(color: AppColors.explainCardColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Timid", style: TextStyle(fontSize: 24)),

                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("A"),
                    ),
                  ],
                ),
              ),

              Text(
                "Explanation",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),

              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.left,
                "Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述一隻狗在其他狗的周圍表現出的從屬或緊張的行為。",
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 20),

              Divider(height: 2, color: AppColors.dividerColor),
              SizedBox(height: 20),

              Text(
                textAlign: TextAlign.left,
                "Scary (可怕) 和Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。",
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 10),

              Divider(height: 2, color: AppColors.dividerColor),
              SizedBox(height: 20),

              Text(
                textAlign: TextAlign.left,
                "Concerned (擔憂) 通常不用來描述狗與其他狗相處時感到壓力的反應。",
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 20),

              Divider(height: 2, color: AppColors.dividerColor),
              SizedBox(height: 20),
              
              ElevatedButton(onPressed: (){}, child: Text("Continue")),

              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
