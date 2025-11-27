import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(children: [Icon(Icons.arrow_back_rounded), Text("Back")]),


          Container(
            height: 450,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white
            ),child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  child: Container(
                    height: 50,width: double.maxFinite,decoration: BoxDecoration(
                    color: Colors.white
                  ),
                    child: Row(
                      children: [
                        Expanded(child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search"
                          ),
                        )),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.themeColor
                          ),
                          child: Icon(Icons.search,color: Colors.white,),
                        )
                        
                      ],
                    ),
                  ),
                ),
              ),

              Card(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Center(child: Text("Grammer")),
                
                ),
              ),

              SizedBox(height: 5,),
              Card(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Center(child: Text("Trigonometry")),

                ),
              ),

              SizedBox(height: 5,),

              Card(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Center(child: Text("Vocabulary")),

                ),
              ),

              SizedBox(height: 5,),

              Card(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Center(child: Text("Geography")),

                ),
              ),
              SizedBox(height: 5,),


              Card(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Center(child: Text("XXXXXXX")),

                ),
              )




            ],
          ),

          )

        ],
      ),
    );
  }
}
