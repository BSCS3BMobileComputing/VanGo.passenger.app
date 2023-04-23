import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderP extends StatefulWidget {
  const SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://bnz06pap003files.storage.live.com/y4mAvhj1a7yWF7nQMzjtFA35vd32T4bj3n-wN_LrZBmm9q1hiDb96QiGJKvRKckbVtWD4BE8fvoXi-VeLyXaRh-0FxEf9t6208zFvTXDJycrLcN5iUSjvU1zuT3tuuJrH3Qk8fzGlOQBPJf8v8liBy8PbWUBWHIcp-0BMmwdD-QV5lWE09CEpRypzaksLTmzRaY?width=400&height=250&cropmode=none',
    'https://bnz06pap003files.storage.live.com/y4miM-sxTF697njM-vg2x9EJegCzgqRtnhE3iTabNtK3xMA-lFzLu8rf-SwG7X-Rf1xH30KxZ3xoCM1eo5f-CzGVv_WjUid70NuWX0aCWjTaJtRDDZly-uT3Inx76fhlLzhXaKspfTmRonj_O0F9dou6vRcgmd90c3IMkl2etb-FBhVVNx-4DmQa1FFECwqg64d?width=400&height=250&cropmode=none',
    'https://dsm04pap001files.storage.live.com/y4m6MW3NgIblJUOrOyNvlf_RoyuLRiyZ5FzjhwikpxEdXpdYbMNeTgtt4Rjc3QfGmiuO92et1EVq5fox-XWWmxNseSccazO_7v1PbEZCCHI2qfchiScHUdkmvXEwqH7ZvjINAGU9bJChsC-IQt_otTFIduv0l-hvtdfvM3SC72nEDu2VlTwm98veIXkGAyRNbMO?width=400&height=300&cropmode=none',
    'https://bnz06pap003files.storage.live.com/y4mzzJWUpINl5JZ3bfs3Z3mEvkT9uquEKFl_FR0HuroTWZ6qEqWgvx2hbKUGKrZqLo2CH4f0sODsgXpoQA9Myp7t2GfNReZSdfjdIuPghzmJlFZoVr3UcLsC3XObUJtcT_674khZ9lQx5k09bfI4Yyw9dL33YzxdZns107WVq-_PSs-pqVx473Sc8myos8a15Yb?width=400&height=250&cropmode=none',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                      enlargeFactor: 0.25,
                      height: 205,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index))),
              const SizedBox(
                height: 0,
              ),
              buildIndicator()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: AnimatedSmoothIndicator(
          onDotClicked: animateToSlide,
          effect: ExpandingDotsEffect(
            dotWidth: 8,
            dotHeight: 8,
            activeDotColor: Colors.deepPurple.shade300,
          ),
          activeIndex: activeIndex,
          count: urlImages.length,
        ),
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade100,
        ),
        child: Image.network(
          urlImage,
        ),
      ),
    );
