import 'package:flutter/material.dart';
import '../../utility/color.dart';
import '../../utility/images.dart';
import '../../widget/icons.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';

class Drawers extends StatelessWidget {
   Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:  EdgeInsets.all(0),
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: second,
              // image: DecorationImage(image: )
            ), //BoxDecoration
            child: Column(
              children: [
                Defaultspace(),
Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: inputfil), child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Image.asset(profile , width: 50,),
)), 
Padding(
  padding: const EdgeInsets.all(12.0),
  child:   ReqTxt(txt: "Welcome Riya", size: 18, wide: FontWeight.w500, color: inputfil,),
)
              ],
            ), //UserAccountDrawerHeader
          ), //DrawerHeader
          ListTile(
            leading: Iconm(icons: Icons.home),
            title: const Text(' Home '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          
          ListTile(
            leading: Iconm(icons: Icons.bookmark),
            title: const Text(' Saved '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Iconm(icons: Icons.bar_chart_rounded),
            title: const Text(' Entertainment '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Iconm(icons: Icons.sports_cricket),
            title: const Text(' Cricket '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Iconm(icons: Icons.trending_up),
            title: const Text(' Trending '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Iconm(icons: Icons.business_sharp),
            title: const Text(' Bussiness '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Iconm(icons: Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
