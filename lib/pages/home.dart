  import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/cart.dart';
import 'package:ui_e_commerce/pages/profilePage.dart';
import 'package:ui_e_commerce/widgets/homepagecontent.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(), // Main content
    CartPage(), // Replace with your cart page
    ProfilePage(), // Replace with your profile page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        height: 70,
        color: const Color(0xFF4C53A5),
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
