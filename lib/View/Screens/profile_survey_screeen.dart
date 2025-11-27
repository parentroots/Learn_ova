import 'package:flutter/material.dart';
import 'package:learn_nova/Core/AppRoute/app_route.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/main_bottom_nav_screen.dart';
import 'package:get/get.dart';

class FieldLabel extends StatelessWidget {
  final String text;

  const FieldLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class SurveyScreenContent extends StatefulWidget {
  const SurveyScreenContent({super.key});

  @override
  State<SurveyScreenContent> createState() => _SurveyScreenContentState();
}

class _SurveyScreenContentState extends State<SurveyScreenContent> {

  final List<String> grades = [
    'Primary 1',
    'Primary 2',
    'Primary 3',
    'Primary 4',
    'Primary 5',
    'Primary 6'
  ];

  final List<String> howHeardOptions = [
    'Friends',
    'Social Media',
    'Search Engine',
    'Advertisement'
  ];


  String? _currentGrade = 'Primary 5';
  String? _howHeard = 'Friends';


  final TextEditingController schoolController =
  TextEditingController(text: "Diocesan Boys' School");

  final TextEditingController subjectController =
  TextEditingController(text: "Diocesan Boys' School");


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                const Text(
                  'Personalizing course\naccording to your profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 30),

                // Current School
                const FieldLabel(text: 'Current School'),
                buildTextField(
                  hintText: "Diocesan Boys' School",
                  controller: schoolController,
                ),
                const SizedBox(height: 20),

                // Elective Subject
                const FieldLabel(text: 'Elective Subject'),
                buildTextField(
                  hintText: "Diocesan Boys' School",
                  controller: subjectController,
                ),
                const SizedBox(height: 20),

                // Current Grade
                const FieldLabel(text: 'Current Grade'),
                buildDropdownField(
                  value: _currentGrade,
                  hintText: "Primary 5",
                  items: grades,
                  onChanged: (String? newValue) {
                    setState(() {
                      _currentGrade = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),

                const FieldLabel(text: 'How Did You Hear About Us ?'),
                buildDropdownField(
                  value: _howHeard,
                  hintText: "Friends",
                  items: howHeardOptions,
                  onChanged: (String? newValue) {
                    setState(() {
                      _howHeard = newValue;
                    });
                  },
                ),
                const SizedBox(height: 30),

                // Button
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        onTapGetStartButton();

                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF007AFF),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Text Field Builder
  Widget buildTextField({
    required String hintText,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xFF007AFF), width: 2.0),
        ),
      ),
    );
  }

  // Dropdown Field Builder
  Widget buildDropdownField({
    String? value,
    required String hintText,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xFF007AFF), width: 2.0),
        ),
      ),
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
  
  void onTapGetStartButton(){
    Get.to(() =>MainBottomNavScreen());

  }
}
