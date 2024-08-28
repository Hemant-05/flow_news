import 'package:flutter/material.dart';
import '../../utility/color.dart';

class SmoothTxt extends StatelessWidget {
  const SmoothTxt(
      {super.key, required this.txt, required this.size, required this.wide});
  final String txt;
  final double size;
  final FontWeight wide;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      style: TextStyle(fontSize: size, color: thred, fontWeight: wide),
    );
  }
}

class ReqTxt extends StatelessWidget {
  const ReqTxt({
    super.key,
    required this.txt,
    required this.size,
    required this.wide, required this.color,
  });
  final String txt;
  final double size;
  final FontWeight wide;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      style: TextStyle(fontSize: size, color: color, fontWeight: wide, height: 1.4, letterSpacing: 1.2),
    );
  }
}
