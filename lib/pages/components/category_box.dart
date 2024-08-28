import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utility/color.dart';
import '/utility/images.dart';
import '/widget/text.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [Catebox(name: 'Business'),
    Catebox(name: 'Politics'),
    Catebox(name: 'Sports'),
        Catebox(name: 'Entertenment'),
      
      ],
    );
  }
}

class Catebox extends StatelessWidget {
  const Catebox({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width / 2.3,
        height: 100,
        child: Stack(
          children: [
            Image.asset(
              catebg,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                width: Get.width / 2.3,
                height: 150,
                decoration: BoxDecoration(
                    color: forth,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ReqTxt(
                  txt: name, size: 20, wide: FontWeight.w700, color: inputfil),
            )
          ],
        ),
      ),
    );
  }
}
