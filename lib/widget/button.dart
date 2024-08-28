// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

class Primarybtn extends StatelessWidget {
  const Primarybtn(
      {super.key,
      required this.txt,
      required this.color,
      required this.fsize,
      required this.size, required this.press,});
  final String txt;
  final Color color;
  final double fsize;
  final Size size;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Text(txt,
            style: TextStyle(
                fontSize: fsize,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          fixedSize: MaterialStatePropertyAll(size)),
    );
  }
}
