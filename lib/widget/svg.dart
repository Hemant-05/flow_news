import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Svgicon extends StatelessWidget {
  const Svgicon({super.key, required this.icon, required this.action});
  final String icon;
  // ignore: prefer_typing_uninitialized_variables
  final Function() action;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: SvgPicture.asset(
        icon,
        width: 50,
      ),
    );
  }
}

class Svg70 extends StatelessWidget {
  const Svg70({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: Get.width / 1.7,
    );
  }
}

class Svg80 extends StatelessWidget {
  const Svg80({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: Get.width / 1.7,
    );
  }
}

class Svg90 extends StatelessWidget {
  const Svg90({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: Get.width / 1.7,
    );
  }
}

class Svg100 extends StatelessWidget {
  const Svg100({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: Get.width / 1.7,
    );
  }
}
