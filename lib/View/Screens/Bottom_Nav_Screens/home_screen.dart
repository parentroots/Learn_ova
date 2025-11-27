import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/search_screen.dart';

import '../../../Utils/AppColors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selectedText = "TRENDING";


  List<String> tabList = [
    'New',
    'all',
    'mathematics',
    'chemistry',
    'biology',
    'history',
    'geography',
    'english',
    'physics'
  ];


  final List<Map<String, dynamic>> gridItems = const [
    {'title': 'Vocabulary 101',
      'author': 'Jessica Roy',
      'heightRatio': 250.0,
      'color': Colors.blue
    },

    {'title': 'English Listening',
      'author': 'Jessica Roy',
      'heightRatio': 150.0,
      'color': Colors.red
    },
    {'title': 'Trigonometry Basic',
      'author': 'Jessica Roy',
      'heightRatio': 180.0,
      'color': Colors.green
    },
    {'title': 'Geometry Advance',
      'author': 'Jessica Roy',
      'heightRatio': 220.0,
      'color': Colors.orange
    },
    {'title': 'History of Physics',
      'author': 'Jane Doe',
      'heightRatio': 170.0,
      'color': Colors.purple
    },
    {'title': 'Calculus II',
      'author': 'John Smith',
      'heightRatio': 300.0,
      'color': Colors.teal
    },
    {'title': 'Advanced Chemistry',
      'author': 'John Smith',
      'heightRatio': 200.0,
      'color': Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Learn Thought watching reels",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchScreen()));

                  }, icon: const Icon(Icons.search)),
                ],
              ),
              const SizedBox(height: 12),

              buildUserRoleSection(),
              const SizedBox(height: 10),


              buildHorizontalListView(),
              const SizedBox(height: 10),

              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  itemCount: gridItems.length,

                  itemBuilder: (BuildContext context, int index) {
                    final item = gridItems[index];

                    return _buildGridTile(
                      imageUrl: 'assets/images/image${index + 1}.png',
                      title: item['title'],
                      author: item['author'],
                        height: 200
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildGridTile({
    required String imageUrl,
    required String title,
    required String author,
    required double height,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          borderRadius: BorderRadius.circular(12.0),
        ),

        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) => Center(child: Text("Image $title")),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height:30,
                          width: 30,
                          child: CircleAvatar()),

                      SizedBox(width: 10,),
                      Text(
                        author,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildHorizontalListView() {
    return SizedBox(
      height: 40,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabList.length,
          itemBuilder: (context, index) {
            final data = tabList[index];
        
            return Container(
              margin: EdgeInsets.only(right: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(
                child: Text(
                  data,
                  style: TextStyle(color:Colors.black54, fontSize: 14),
                ),
              ),
            );
          },
        ),
      ),
    );
  }


  Column buildUserRoleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            _buildTabItem("TRENDING", "Trending"),
            _buildTabItem("NEW", "New"),
            _buildTabItem("FOLLOWING", "Following"),
          ],
        ),
         SizedBox(height: 4),

        Row(
          children: [

            _buildIndicatorContainer("TRENDING"),
            _buildIndicatorContainer("NEW"),
            _buildIndicatorContainer("FOLLOWING"),
          ],
        ),
      ],
    );
  }

  Widget _buildTabItem(String value, String label) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedText = value;
          });
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              label,
              style: TextStyle(
                color: selectedText == value
                    ? AppColors.themeColor
                    : AppColors.blackColor,
                fontWeight: selectedText == value ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildIndicatorContainer(String value) {
    return Expanded(
      child: Container(
        height: 2,

        color: selectedText == value
            ? AppColors.themeColor
            : AppColors.dividerColor.withOpacity(0.3),
      ),
    );
  }
}