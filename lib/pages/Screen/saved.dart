// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../utility/color.dart';
import '../../widget/buttomnavgation.dart';
import '../../widget/drawer.dart';
import '../../widget/text.dart';
import '../components/news_row.dart';

class SavedScreen extends StatelessWidget {
   SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: forth),
        backgroundColor: inputfil,
        title: ReqTxt(
          txt: "Saved News",
          size: 19,
          wide: FontWeight.w500,
          color: forth,
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dark_mode_outlined,
                color: forth,
              ))
        ],
      ),
      drawer: Drawers(),
      body: Column(
        children: [
          SizedBox(height: 15),
         
          Newsrow()
        ],
      ),
        bottomNavigationBar: Bottombar()

    );
  }
}