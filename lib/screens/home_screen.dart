import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'explore_screen.dart';
import 'favoriate_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenNum = 0;

  final screens = const [
    ExploreScreen(),
    FavoriateScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          "Tourism Egypt",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: screens[screenNum],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screenNum,
        onTap: (index) {
          setState(() {
            screenNum = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
