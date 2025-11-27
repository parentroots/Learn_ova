import 'package:flutter/material.dart';
import '../../Widget/course_card.dart';
import '../../Widget/status_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 20),
          children: const [
            ProfileHeader(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: StatsSection(),
            ),

            Padding(
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

            CourseCard(
              courseTitle: 'English Tenses',
              level: 'Intermediate',
              instructorName: 'Denisa Ozel',
              timeAgo: '32 mins ago',
            ),
            CourseCard(
              courseTitle: 'Spoken English',
              level: 'Beginner',
              instructorName: 'Mark Leo',
              timeAgo: '1 hour ago',
            ),
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
        /// Header Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Back Button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),

              /// Settings button
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),

        /// Profile Image
        const CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage('assets/images/image5.png'),
        ),

        const SizedBox(height: 12),

        /// User Name
        const Text(
          'Jessica Roy',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        /// Join Date
        const Text(
          'Joined Since - Jun 2024',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
