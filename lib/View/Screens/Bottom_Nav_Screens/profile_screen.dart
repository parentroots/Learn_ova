import 'package:flutter/material.dart';
import '../../Widget/course_card.dart';
import '../../Widget/status_card.dart';

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
          backgroundImage: AssetImage('assets/images/image5.png'),
          backgroundColor: Colors.grey,
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
