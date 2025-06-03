import 'cart_page.dart';
import 'home_page.dart';
import 'like_page.dart';
import 'notification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    HomePage(),
    LikePage(),
    CartPage(),
    NotificationPage(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          setState(() {});
        },
        selectedItemColor: Color(0xffC67C4E),
        unselectedItemColor: Color(0xffA2A2A2),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: "Like",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}
