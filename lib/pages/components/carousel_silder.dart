import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../utility/images.dart';

// ignore: use_key_in_widget_constructors
class Carousel extends StatelessWidget {
   final List<String> imageUrls = [
    news1,
    news2,
    news3,
    news4,
    news5,
  ];

  final List<String> headlines = [
    'The fans of the two arch-rival clubs protested outside the Salt Lake Stadium. The Durand Cup match had already been cancelled amid ongoing protests in the city.',
    'Dramatic scenes were witnessed outside Kolkatas iconic Salt Lake Stadium on Sunday evening, as fans of arch-rival football clubs, East Bengal and Mohun Bagan!',
    'Held a joint protest seeking justice for the victim doctor in the rape and murder case at the citys RG Kar Medical College and Hospital',
    'The protesters, many of whom were in jerseys of their clubs, displayed posters with the slogan, “We want justice.”', 
    'The fans were later detained by Kolkata Police. The Durand Cup match between the teams had already been cancelled after organiser', 
    '“I believe that football is above religion and caste. I am fully confident that if you organise the match here, there will be no ruckus, no unrest in the football ground'
  ];
  // final List<String> imageUrls;
  // final List<String> headlines;
  // Carousel({required this.imageUrls, required this.headlines});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageUrls.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return GestureDetector(
          onTap: () {
            // Handle tap to navigate to the news detail page
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                child: Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          headlines[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 240.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.97,
      ),
    );
  }
}
