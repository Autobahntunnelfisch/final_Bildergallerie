import 'package:flutter/material.dart';
import 'package:test_bilder_gallerie/screens/about_me_screen.dart';
import 'gallery_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    GalleryView(),
    AboutMeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album_sharp), label: 'Gallery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_sharp), label: 'About me'),
        ],
      ),
    );
  }
}
