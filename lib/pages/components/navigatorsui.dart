// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/utility/color.dart';
import '/widget/text.dart';

class Navigatorsui extends StatelessWidget {
  const Navigatorsui({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 9, 2, 9),
      child: Container(
        decoration: BoxDecoration(
          color: five, 
          borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ReqTxt(txt: name, size: 17, wide: FontWeight.w400, color: forth),
              ), 
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.chevron_right_sharp, 
                  size: 30, color: forth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}