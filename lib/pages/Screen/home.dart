import 'package:flutter/material.dart';
import '../../pages/components/carousel_silder.dart';
import '../../pages/components/feature_news.dart';
import '../../utility/color.dart';
import '../../widget/buttomnavgation.dart';
import '../../widget/text.dart';

import '../../widget/drawer.dart';
import '../components/box_news.dart';
import '../components/newsbox.dart';
import '../components/row_news.dart';
import '../components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: forth),
          backgroundColor: inputfil,
          title: const ReqTxt(
            txt: "TrendiFlow",
            size: 22,
            wide: FontWeight.bold,
            color: second,
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
            bottom: const TabBar(
            isScrollable: true, // Required
            unselectedLabelColor: Colors.white30, // Other tabs color
            // labelPadding: EdgeInsets.all(12),
            // labelPadding:
            //     EdgeInsets.symmetric(horizontal: 30), // Space between tabs
            // indicator: UnderlineTabIndicator(
            //   borderSide:
            //       BorderSide(color: Colors.white, width: 2), // Indicator height
            //   insets: EdgeInsets.symmetric(horizontal: 48), // Indicator width
            // ),
            tabs: [
              Tab(child: ReqTxt(txt: "All", size: 16, wide: FontWeight.w500, color: forth )),
                Tab(
                  child: ReqTxt(
                      txt: "Entertenment", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "Sports", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "Madhya Pradesh", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "Delhi", size: 16 , wide: FontWeight.w500, color: forth)),
    
            ],

          ),
          
        ),
        drawer: Drawers(),
        body: TabBarView(
          children: [
              SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Search_Bar(),
                  Carousel(),
                  const FeatureNews(),
                  const NewsSecRow(),
                  const News()
                ],
              ),
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  NewsBox(),
                  NewsBox()
                ],
              ),
            ),
            const Icon(Icons.camera_alt),
            const Icon(Icons.grade),
            const Icon(Icons.email),
          ],
        ), 
        
        
        
        
       
        bottomNavigationBar: Bottombar()
      ),
    );
  }
}
