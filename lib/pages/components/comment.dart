import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../utility/images.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';

import '../../widget/button.dart';
import '../../widget/inputbox.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReqTxt(
            txt: "Comments", size: 21, wide: FontWeight.bold, color: forth),
        Inputboxsec(
            color: five,
            placeholder: "Enter Name",
            control: TextEditingController()),
        Inputarea(
            color: five,
            placeholder: "Enter Comment",
            control: TextEditingController()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Primarybtn(
            color: second,
            fsize: 17,
            size: const Size(150, 40),
            txt: "Send",
            press: () {},
          ),
        ),
        const ReqTxt(
            txt: "Other Comments",
            size: 21,
            wide: FontWeight.bold,
            color: forth),
            Comens()
      ],
    );
  }
}

class Comens extends StatelessWidget {
  const Comens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width/1,
      child: CCard(
        widget: Row(
          children: [
            Imageavt(image: user),
            SizedBox(width: 10),
      Column(
        children: [
                    
          Container(  width: 300,
            child: const ReqTxt(
                      txt: "Jone Saif", size: 17, wide: FontWeight.w500, color: forth),
          ),
                     Container(
                      width: 300,
                       child: const ReqTxt(
                                         txt: "Hey there Comment are too easy to send a option to others", size: 15, wide: FontWeight.w400, color: forth),
                     ),
        ],
      )
          ],
        ),
      ),
    );
  }
}
