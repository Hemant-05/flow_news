import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';
class NewsSecRow extends StatelessWidget {
  const NewsSecRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
    Rown()
      ]),
    );
  }
}

class Rown extends StatelessWidget {
  const Rown({super.key});

  @override
  Widget build(BuildContext context) {
    return CCard(
      widget: Container(
        width: Get.width,
        child: Row(
          children: [
            Container(
              width: Get.width / 2.5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(
                    "assets/images/news1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: Get.width / 1.8,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      "Narendra Modi in Wayanad today: PM to visit landslides-hit areas in Kerala | Full schedule",
                      style: TextStyle(
                        color: forth,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "Prime Minister Narendra Modi is scheduled to visit Kerala's Wayanad district on Saturday, August 10, to take stock of the situation in the landslide-affected areas and assess the ongoing relief and rehabilitation efforts in the region. The prime minister will meet victims of the landslide in hospitals and relief camps and ensure proper support for those affected in the tragedy.",
                      style: TextStyle(
                        color: thred,
                        fontSize: 14.0,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothTxt(
                        txt: "POLITICS",
                        size: 13,
                        wide: FontWeight.w500,
                      ),
                        Icon(
                        Icons.share,
                        color: thred,
                        size: 22,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
