import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OfferCarousel extends StatelessWidget {
  OfferCarousel({super.key});
  final List<String> banners = [
    'assets/images/offer1.jpeg',
    'assets/images/offer2.jpeg',
    'assets/images/offer3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: banners
          .map(
            (img) => Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 120,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
