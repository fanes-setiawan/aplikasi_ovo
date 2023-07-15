import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBanner extends StatefulWidget {
  const CarouselBanner({super.key});

  @override
  State<CarouselBanner> createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 5),
        child: Builder(builder: (context) {
          List images = [
            "assets/images/bayardisini.jpg",
            "assets/images/CLBK-OVO.jpg",
            "assets/images/double.jpg",
            "assets/images/OVO_new-user_landingpage.jpg",
            "assets/images/sos.jpg"
          ];

          return Column(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 120.0,
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    currentIndex = index;
                    setState(() {});
                  },
                ),
                items: images.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 15 : 7.0,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 14.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: currentIndex == entry.key
                              ? Colors.cyan[500]
                              : Colors.grey[300]),
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        }),
      ),
    );
  }
}
