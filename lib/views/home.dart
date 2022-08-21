import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

import '../widgets/customcard.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.listBanners,
  }) : super(key: key);

  final List<BannerModel> listBanners;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 30, 0, 8),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'JosefinSans',
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Pallettop'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 0, 15),
              child: Text(
                "Your Lightning Fast Pallet Collector",
                style: TextStyle(fontSize: 20, fontFamily: 'lato'),
              ),
            ),
            BannerCarousel.fullScreen(
              initialPage: Random().nextInt(listBanners.length + 1),
              customizedBanners: [
                banners(0),
                banners(1),
                banners(2),
                banners(3),
                banners(4)
              ],
              height: 200,
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Services we Offer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'lato',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              imgpath: "images/collect.jpg",
              title: "Pallet Collection",
              body:
                  "Pallet collection services that help reduce fire risk at your warehouses and collect the pallets piling up.",
            ),
            CustomCard(
                imgpath: "images/deliver.jpg",
                title: "Pallet Delivery",
                body:
                    "Getting a quote from us will guarantee you with the best pallet delivery services")
          ],
        ),
      ),
    );
  }

  Padding banners(int pathnum) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          listBanners[pathnum].imagePath,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
