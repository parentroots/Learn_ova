import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  bool followIsOnTap = false;
  bool cameraIsOnTap = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.cover,
          'assets/images/image5.png',
        ),
        

        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(backgroundColor: Colors.white),
                    const SizedBox(width: 8),
                    const Text(
                      "Jesica Roy",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 16),
                    

                    // Follow Button
                    InkWell(
                      onTap: () {
                        setState(() {
                          followIsOnTap = !followIsOnTap;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: followIsOnTap ? Colors.black54 : Colors.white,
                          border: Border.all(
                            color: followIsOnTap
                                ? Colors.grey
                                : Colors.transparent,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            followIsOnTap ? "Following" : "Follow",
                            style: TextStyle(
                              color: followIsOnTap
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    InkWell(
                      onTap: () {
                        setState(() {
                          cameraIsOnTap = !cameraIsOnTap;
                        });
                      },
                      child: Container(
                        height: 30,
                        
                        width: 40,
                        decoration: BoxDecoration(
                          color: cameraIsOnTap
                              ? Colors.transparent
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),

                          border: Border.all(
                            color: cameraIsOnTap
                                ? Colors.white
                                : Colors.transparent,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.linked_camera,
                            size: 18,

                            color: cameraIsOnTap
                                ? Colors.black
                                : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  AppString.StartlearningVocabularyToday,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const Text(
                  AppString.sowhatisthenecessarytolearnvocabularyintodayworldEveryone,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
