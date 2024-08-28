import 'package:flutter/material.dart';
import '/widget/text.dart';

import '../utility/color.dart';

class Defaultspace extends StatelessWidget {
  const Defaultspace({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SizedBox(
      height: 20,
    );
  }
}

class Imageavt extends StatelessWidget {
  const Imageavt({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: 80,
      ),
    );
  }
}

class Profileavt extends StatelessWidget {
  const Profileavt({super.key, required this.image, required this.name, required this.des});
  final String image;
  final String name;
  final String des;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 90,
              height: 90,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
          child: ReqTxt(txt: name, size: 18, wide: FontWeight.w500, color: forth),
        ), 
        Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
          child: ReqTxt(txt: des, size: 16, wide: FontWeight.w500, color: thred),
        ), 
      ],
    );
  }
}

class CCard extends StatelessWidget {
  const CCard({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BorderDirectional(bottom: BorderSide(color: five)),
      child: widget,
      color: inputfil,
    );
  }
}
