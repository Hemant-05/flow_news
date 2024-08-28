// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/Auth/signup.dart';
import '../pages/Screen/readnews.dart';
import '../utility/color.dart';
import 'pages/Auth/login.dart';
import 'pages/Auth/otp.dart';
import 'pages/Screen/home.dart';
import 'pages/Screen/profile.dart';
import 'pages/Screen/saved.dart';
import 'pages/Screen/search.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: Route,
      theme: ThemeData(primaryIconTheme: const IconThemeData(color: forth)),
    
      // home: const SignupScreen(),
    );
  }
}

// ignore: non_constant_identifier_names
final Route = [
  GetPage(name: '/signup', page: () => const SignupScreen()),
  GetPage(name: '/otp', page: () => const OtpScreen()),
  GetPage(name: '/login', page: () => const LoginScreen()),
  GetPage(name: '/home', page: () => const HomeScreen()),
  GetPage(name: '/search', page: () => const SearchScreen()),
  GetPage(name: '/read', page: () => Readnews()),
  GetPage(name: '/saved', page: () => SavedScreen()),
  GetPage(name: '/profile', page: () => ProfileScreen()),



  // GetPage(name: '/login', page: () => LoginScreen()),
  // Add more routes here
];
