import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final String level;
  final String instructorName;
  final String timeAgo;

  const CourseCard({
    required this.courseTitle,
    required this.level,
    required this.instructorName,
    required this.timeAgo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                courseTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                timeAgo,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),

          const SizedBox(height: 5),

          // Level
          Text(
            'Level - $level',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),

          const SizedBox(height: 15),

          Row(
            children: <Widget>[
              const CircleAvatar(
                radius: 15,

                backgroundImage: AssetImage('assets/instructor_avatar.png'),
                backgroundColor: Colors.blueGrey,
              ),
              const SizedBox(width: 10),

              Text(
                instructorName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF007AFF),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Get Back to It',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF007AFF),
                        side: const BorderSide(color: Color(0xFF007AFF)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),

                        backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Course Details',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}