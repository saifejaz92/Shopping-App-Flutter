import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/colors/colors.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  List imageList = [
    {
      "id": 1,
      "imagePath": 'assets/images/slider1.jpg',
    },
    {
      "id": 2,
      "imagePath": 'assets/images/slider2.jpg',
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: currentIndex == entry.key ? 50 : 30,
                  height: 5.0,
                  margin: const EdgeInsets.only(left: 2.0, bottom: 70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: currentIndex == entry.key
                          ? titleColor
                          : subtitleColor),
                ),
              );
            }).toList(),
          ),
        ),
        CarouselSlider(
          items: imageList
              .map(
                (item) => ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    item['imagePath'],
                  ),
                ),
              )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            aspectRatio: 2,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
