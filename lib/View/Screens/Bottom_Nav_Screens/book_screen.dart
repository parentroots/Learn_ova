import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Book Screen"),   backgroundColor: Colors.white,),
      body: SafeArea(child: Column(children: [])),
    );
  }
}
