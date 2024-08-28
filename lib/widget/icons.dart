import 'package:flutter/material.dart';

class Iconm extends StatelessWidget {
  const Iconm({super.key, required this.icons});
final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icons, weight: 35,
    );
  }
}