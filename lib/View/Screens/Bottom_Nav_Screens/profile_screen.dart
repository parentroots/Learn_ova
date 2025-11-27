import 'package:flutter/material.dart';

import '../../Widget/course_card.dart';
import '../../Widget/status_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const ProfileHeader(),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: StatsSection(),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'My Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const CourseCard(
              courseTitle: 'English Tenses',
              level: 'Intermediate',
              instructorName: 'Denisa Ozel',
              timeAgo: '32 mins ago',
            ),
            const CourseCard(
              courseTitle: 'English Tenses',
              level: 'Intermediate',
              instructorName: 'Denisa Ozel',
              timeAgo: '32 mins ago',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),

              IconButton(
                icon: const Icon(Icons.settings_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),

        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/jessica_roy_avatar.png'),
          backgroundColor: Colors.grey,

          child: Icon(Icons.person, size: 50, color: Colors.white),
        ),

        const SizedBox(height: 10),

        // Name
        const Text(
          'Jessica Roy',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const Text(
          'Joined Since - Jun 2024',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}




