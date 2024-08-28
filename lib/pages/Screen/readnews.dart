import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/components/comment.dart';
import '../../utility/color.dart';
import '../../widget/text.dart';

import '../../utility/images.dart';

class Readnews extends StatelessWidget {
  const Readnews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ReqTxt(txt: "JD Vance clashes with Shannon Bream over 'great momentum' for Kamala Harris, compares US VP to Jeffrey Epstein",
               size: 22, wide: FontWeight.bold, color: forth),
            ), 
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(9)),
                          child: Image.asset(
                  width: Get.width,
                  height: 275,
                  news4,
                  fit: BoxFit.cover,
                          ),
                        ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReqTxt(txt: "Date : 23 Aug 2024 12:00 AM", size: 18, wide: FontWeight.w500, color: forth,),
                       Row(
                         children: [
                           Icon(
                    Icons.share,
                    color: forth,
                    size: 28,
                  ),
                  SizedBox(width: 10),
                   Icon(
                          Icons.bookmark_add_outlined,
                          color: forth,
                          size: 28,
                        ),
                  SizedBox(width: 10)

                         ],
                       ),
                   
                    ],
                  ),
                ), 
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ReqTxt(txt: "JD Vance got into heated arguments with Fox News host Shannon Bream after pointing out surveys indicating “great momentum” Kamala Harris. The Ohio Senator has been in the limelight for targeting Indian-origin Harris for being childless. Looking for Instant Cash? Get Best Personal Loan offers upto 10 lakh. Apply and Get Money in your bank account Instantly Earbuds View T&C In his latest interview that aired on Fox News on Sunday, Vance maintained that the Harris campaign was losing steam.“How does that not line up with another poll we got out this morning, Washington Post, ABC, they're giving the vice president nationally a four to five-point lead?” Bream stated. “I mean, those are new numbers.” In contrast to Vance's opinion, the host mentioned every poll that has been released has demonstrated significant momentum in her favor. Trump's running mate voiced a strong rebuttal over the recent polling. You know, Shannon, I think there are a lot of polls that actually show her stagnating and leveling off. Of course, ABC, Washington Post was a wildly inaccurate pollster in the summer of 2020,” he stressed.", 
                  size: 18, wide: FontWeight.w500, color: thred),
                ), 

Comment()

            
          ],
        ),
      ),
    );
  }
}