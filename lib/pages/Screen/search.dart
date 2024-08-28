// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/pages/components/category_box.dart';

import '../../widget/buttomnavgation.dart';
import '../../widget/widget.dart';
import '../components/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           SearchBarin(),
Defaultspace(), 
CategoryBox(),

        ],
      ),
        bottomNavigationBar: Bottombar()
    );
  }
}