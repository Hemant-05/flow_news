import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../widget/widget.dart';
import '../../widget/text.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NewsContainer(),
          NewsContainer(),
          NewsContainer(),
          NewsContainer(),
          NewsContainer(),
        ],
      ),
    );
  }
}

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: CCard(
        widget: Container(
          width: Get.width / 1.9,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(9)),
                child: Image.asset(
                  "assets/images/news2.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Narendra Modi in Wayanad today: PM to visit landslides-hit areas in Kerala | Full schedule",
                  style: TextStyle(
                    color: forth,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Prime Minister Narendra Modi is scheduled to visit Kerala's Wayanad district on Saturday, August 10, to take stock of the situation in the landslide-affected areas and assess the ongoing relief and rehabilitation efforts in the region. The prime minister will meet victims of the landslide in hospitals and relief camps and ensure proper support for those affected in the tragedy.",
                  style: TextStyle(
                    color: thred,
                    fontSize: 15.0,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
               const Row(
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
        ),
      ),
    );
  }
}
