import 'package:flutter/material.dart';
import 'package:flutter_app/accountScreens/profilePage.dart';
import 'package:flutter_app/cartScreens/cartPage.dart';
import 'package:flutter_app/favoriteScreens/favoritePage.dart';
import 'package:flutter_app/homeScreens/homePage.dart';
import 'orderScreens/orderPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(),
    CartPage(),
    FavoritePage(),
    OrderPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber.shade600,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "Subscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_sharp,
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
