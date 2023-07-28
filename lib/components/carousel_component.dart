import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_app/components/chat_item.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/utils.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarouselComponent extends StatelessWidget {
  const CarouselComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: [
          SizedBox(
            height: 55.h,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      disableCenter: true,
                    ),
                    items: Utils.chips
                        .map(
                          (item) => FittedBox(
                            child: CachedNetworkImage(
                              alignment: Alignment.center,
                              imageUrl: Utils.imgUrl,
                              placeholder: (context, url) {
                                return SizedBox(
                                  width: 10.w,
                                  child: Image.asset(
                                    "assets/images/ic_profile.png",
                                    height: 10,
                                    color: Colors.grey,
                                  ),
                                );
                              },
                              errorWidget: (context, url, error) {
                                return SizedBox(
                                  width: 10.w,
                                  child: const Icon(
                                    Icons.image,
                                    size: 5.0,
                                    color: Colors.grey,
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Positioned.fill(
                  bottom: 5.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: DotsIndicator(
                        decorator: const DotsDecorator(
                            color: Colors.grey, activeColor: Colors.white),
                        position: 0,
                        dotsCount: Utils.chips.length),
                  ),
                )
              ],
            ),
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  vertical: Constants.size15,
                  horizontal: Constants.defaultPadding),
              color: Colors.white,
              child: const ChatItemWidget(
                  fav: true, comment: true, bookmark: true)),
        ],
      ),
    );
  }
}
