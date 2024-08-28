import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/Screen/readnews.dart';
import '../../utility/color.dart';
import '../../utility/images.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          InkWell(
            onTap: () => const Readnews(),
            child: const Newsb(
                image: news1,
                title:
                    "Football is above religion and caste. I am fully confident that if you organise the match here, there will be no ruckus",
                description:
                    "Lok Sabha MP and former Punjab chief minister Charanjit Singh Channi on Wednesday moved a notice to bring a privilege motion against Prime Minister Narendra Modi in the Lok Sabha for sharing the speech of BJP MP Anurag",
                cat: "Entertenment"),
          )
        ],
      ),
    );
  }
}

class Newsb extends StatelessWidget {
  const Newsb(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.cat});

  final String cat;
  final String description;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CCard(
      widget: Padding(
        padding: const EdgeInsets.fromLTRB(10, 14, 10, 10),
        child: Container(
          width: Get.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: forth,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4), 
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(9)),
                child: Image.asset(
                  width: Get.width,
                  height: 220,
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(2.0),
              //   child: Text(
              //     description,
              //     style: const TextStyle(
              //       color: thred,
              //       fontSize: 16.0,
              //     ),
              //     maxLines: 2,
              //     overflow: TextOverflow.ellipsis,
              //   ),
              // ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothTxt(
                    txt: cat,
                    size: 13,
                    wide: FontWeight.w500,
                  ),
                  const Icon(
                    Icons.share,
                    color: thred,
                    size: 28,
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
