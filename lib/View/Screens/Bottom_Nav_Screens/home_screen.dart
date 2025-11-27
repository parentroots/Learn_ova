import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/search_screen.dart';

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
    'physics',
  ];

  final List<Map<String, dynamic>> gridItems = const [
    {
      'title': 'Vocabulary 101',
      'author': 'Jessica Roy',
      'heightRatio': 250.0,
      'color': Colors.blue,
    },
    {
      'title': 'English Listening',
      'author': 'Jessica Roy',
      'heightRatio': 150.0,
      'color': Colors.red,
    },
    {
      'title': 'Trigonometry Basic',
      'author': 'Jessica Roy',
      'heightRatio': 180.0,
      'color': Colors.green,
    },
    {
      'title': 'Geometry Advance',
      'author': 'Jessica Roy',
      'heightRatio': 220.0,
      'color': Colors.orange,
    },
    {
      'title': 'History of Physics',
      'author': 'Jane Doe',
      'heightRatio': 170.0,
      'color': Colors.purple,
    },
    {
      'title': 'Calculus II',
      'author': 'John Smith',
      'heightRatio': 300.0,
      'color': Colors.teal,
    },
    {
      'title': 'Advanced Chemistry',
      'author': 'John Smith',
      'heightRatio': 200.0,
      'color': Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Learn Through Watching Reels",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SearchScreen()),
                      );
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              /// Top Tabs (Trending, New, Following)
              buildUserRoleSection(),
              const SizedBox(height: 16),

              /// Horizontal Category List
              buildHorizontalListView(),
              const SizedBox(height: 10),

              /// Masonry Grid
              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemCount: gridItems.length,
                  itemBuilder: (context, index) {
                    final item = gridItems[index];
                    return _buildGridTile(
                      imageUrl: 'assets/images/image4.png',
                      title: item['title'],
                      author: item['author'],
                      height: item['heightRatio'],
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

  /// Grid Tile Widget
  Widget _buildGridTile({
    required String imageUrl,
    required String title,
    required String author,
    required double height,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            /// Background image
            Positioned.fill(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Container(color: Colors.grey.shade300),
              ),
            ),

            /// Gradient bottom area
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  ),
                ),
              ),
            ),

            /// Text content
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const CircleAvatar(radius: 12),
                      const SizedBox(width: 8),
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

  /// Category Horizontal List
  Widget buildHorizontalListView() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabList.length,
        itemBuilder: (context, index) {
          final data = tabList[index];
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                data,
                style: const TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Top section (Trending / New / Following)
  Column buildUserRoleSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabItem("TRENDING", "Trending"),
            _buildTabItem("NEW", "中文"),
            _buildTabItem("FOLLOWING", "Following"),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIndicatorContainer("TRENDING"),
            _buildIndicatorContainer("NEW"),
            _buildIndicatorContainer("FOLLOWING"),
          ],
        ),
      ],
    );
  }

  /// Tab Item
  Widget _buildTabItem(String id, String label) {
    return GestureDetector(
      onTap: () => setState(() => selectedText = id),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: selectedText == id ? Colors.black : Colors.grey,
          fontWeight: selectedText == id ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  /// Tab Indicator
  Widget _buildIndicatorContainer(String id) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 3,
      width: 60,
      decoration: BoxDecoration(
        color: selectedText == id ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
