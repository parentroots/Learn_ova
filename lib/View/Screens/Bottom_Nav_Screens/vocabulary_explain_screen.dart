import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';

class VocabularyExplainScreen extends StatefulWidget {
  const VocabularyExplainScreen({super.key});

  @override
  State<VocabularyExplainScreen> createState() => _VocabularyExplainScreenState();
}

class _VocabularyExplainScreenState extends State<VocabularyExplainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_rounded),
                  ),
                  Text("Back"),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let’s test your understanding!",
                  style: TextStyle(fontSize: 18),
                ),
              ),
          
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
                height: 83,
                width: 390,
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
                height: 300,
                width: double.maxFinite,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 56,
                      width: double.maxFinite,
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
                              child: Text("A")),
                        ],
                      ),
                    ),
          
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16,top: 10),
                          child: Text("Explanation"),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 50),
                      child: Text(". Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述\n一隻狗在其他狗的周圍表現出的從屬或緊張的行為。"),
                    ),
          
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,right: 50),
                      child: Text(". Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述\n一隻狗在其他狗的周圍表現出的從屬或緊張的行為。"),
                    ),
          
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,right: 50),
                      child: Text(
                          ". Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述\n一隻狗在其他狗的周圍表現出的從屬或緊張的行為。"),
                    )
          
                  ],
                ),
              ),
          
          
          
              ElevatedButton(onPressed: (){
          
              }, child: Text("Continue"))
            ],
          ),
        ),
      ),
    );
  }



}
