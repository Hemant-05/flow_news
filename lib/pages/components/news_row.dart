import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';

class Newsrow extends StatelessWidget {
  const Newsrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [Rown(), 
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
        child: Column(
          children: [
            Row(
              children: [
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
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    
                    ],
                  ),
                ),
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
              
              ],
            ),
                  EndRowwi()
          ],
        ),
      ),
    );
  }
}

class EndRowwi extends StatelessWidget {
  const EndRowwi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
        padding: EdgeInsets.fromLTRB(6, 2, 6, 6),
          child: SmoothTxt(
            txt: "POLITICS",
            size: 14,
            wide: FontWeight.w500,
          ),
        ),
        Row(
          children: [

              Padding(
              padding: EdgeInsets.fromLTRB(6, 2, 6, 6),
              child: SmoothTxt(
                txt: "21 july 2024",
                size: 14,
                wide: FontWeight.w500,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(6, 2, 6, 6),
            //   child: Icon(
            //     Icons.share,
            //     color: thred,
            //     size: 22,
            //   ),
            // ),
        
         
         SizedBox(width: 20,)
          ],
        )
      ],
    );
  }
}