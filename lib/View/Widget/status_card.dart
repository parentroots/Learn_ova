import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildStatItem(String count, String label) {
      return Expanded(
        child: Column(
          children: <Widget>[
            Text(
              count,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(label, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildStatItem('05', 'In Progress'),
          Container(height: 40, width: 1, color: Colors.grey.shade200),
          buildStatItem('01', 'Completed'),
          // Divider
          Container(height: 40, width: 1, color: Colors.grey.shade200),
          buildStatItem('50', 'Following'),
        ],
      ),
    );
  }
}