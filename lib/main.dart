import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/auth/screens/account.dart';
import 'package:groceries_app/modules/auth/screens/enterPhone.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';
import 'package:groceries_app/modules/product/screens/favourite.dart';
import 'package:groceries_app/modules/home/screens/homeScreen.dart';
import 'package:groceries_app/modules/product/screens/filters.dart';
import 'package:groceries_app/modules/product/screens/order-accepted.dart';
import 'package:groceries_app/modules/product/screens/productDetail.dart';
import 'package:groceries_app/modules/product/screens/searchBeverages.dart';
import 'package:groceries_app/modules/splash/screens/onbording.dart';
import 'package:groceries_app/modules/auth/screens/selectLocation.dart';
import 'package:groceries_app/modules/auth/screens/signIn.dart';
import 'modules/splash/screens/splashScreen.dart';
import 'modules/splash/screens/button.dart';
import 'modules/auth/screens/phone.dart';
import 'modules/auth/screens/login.dart';
import 'modules/auth/screens/signUp.dart';
import 'modules/product/screens/product.dart';
import 'modules/product/screens/findProduct.dart';
import 'modules/product/screens/beverages.dart';
import 'modules/menu/navigationBar.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Router
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/splash/',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/onbording/',
          page: () => Onbording(),
        ),
        GetPage(
          name: '/signIn/',
          page: () => SignIn(),
        ),
        GetPage(
          name: '/phone/',
          page: () => Phone(),
        ),
        GetPage(
          name: '/enterPhone/',
          page: () => EnterPhone(),
        ),
        GetPage(
          name: '/selectLocation/',
          page: () => SelectLocation(),
        ),
        GetPage(
          name: '/login/',
          page: () => Login(),
        ),
        GetPage(
          name: '/signUp/',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/homeScreen/',
          page: () => HomeScreen(),
        ),
        // GetPage(
        //   name: '/productDetail/',
        //   page: () => ProductDetail(),
        // ),
        // GetPage(
        //   name: '/productDetail/:name/:url/:description',
        //   page: () => ProductDetail(),
        // ),
        GetPage(
          name: '/findProduct/',
          page: () => FindProduct(),
        ),
        GetPage(
          name: '/beverages/',
          page: () => Beverages(),
        ),
        GetPage(
          name: '/searchBeverages/',
          page: () => SearchBeverages(),
        ),
        GetPage(
          name: '/filters/',
          page: () => Filters(),
        ),
        // GetPage(
        //   name: '/myCart/',
        //   page: () => MyCart(),
        // ),
        GetPage(
          name: '/checkout/',
          page: () => Checkout(),
        ),
        GetPage(
          name: '/orderAccepted/',
          page: () => OrderAccepted(),
        ),
      ],

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _listScreens = [
    HomeScreen(),
    FindProduct(),
    Checkout(),
    Favourite(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FontFamily.fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          //body: HomeScreen(),
          body: _listScreens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.green,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("${Path.imagePath}shop.png"),
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("${Path.imagePath}explore.png"),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("${Path.imagePath}cart.png"),
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("${Path.imagePath}favorite.png"),
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("${Path.imagePath}account.png"),
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
