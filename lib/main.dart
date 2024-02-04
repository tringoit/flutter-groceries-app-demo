import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/auth/screens/account.dart';
import 'package:groceries_app/modules/auth/screens/enterPhone.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';
import 'package:groceries_app/modules/product/screens/favourite.dart';
import 'package:groceries_app/modules/product/screens/myCart.dart';
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
        GetPage(
          name: '/productDetail/:name/:url/:description',
          page: () => ProductDetail(),
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
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FontFamily.fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // body:
          //     IndexedStack(index: index, children: [HomeScreen(), Onbording()]),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
