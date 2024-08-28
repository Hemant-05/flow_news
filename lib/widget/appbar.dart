

import 'package:flutter/material.dart';
import '/widget/text.dart';

import '../utility/color.dart';

class AppcBar extends StatelessWidget {
   AppcBar({super.key, required this.ScreenName});
  final String ScreenName;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(color: forth),
      backgroundColor: inputfil,
      title:  ReqTxt(
        txt: ScreenName,
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
    );
  }
}
