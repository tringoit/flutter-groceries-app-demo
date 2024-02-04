import 'package:flutter/material.dart';
import 'package:groceries_app/modules/auth/screens/account.dart';
import 'package:groceries_app/modules/home/screens/homeScreen.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';
import 'package:groceries_app/modules/product/screens/favourite.dart';
import 'package:groceries_app/modules/product/screens/findProduct.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int selectedIndex = 0;

  final List<Widget> _listScreens = [
    HomeScreen(),
    FindProduct(),
    Checkout(),
    Favourite(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (int newIndex) {
        setState(() {
          selectedIndex = newIndex;
        });
      },
      selectedItemColor: Colors.green,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      unselectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    );
  }
}
