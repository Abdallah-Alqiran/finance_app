import 'package:finance_app/features/home_page/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 263.h,
        padEnds: false,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
      items: [
        CardItemWidget(cardName: "Abdallah Alqiran", totalMoney: "501 765", expiredDate: "06/27",),
        CardItemWidget(cardName: "Ramadan Hussin", expiredDate: "07/28", totalMoney: "10", password: "1245",),
        CardItemWidget(cardName: "Abdallah Mahmoud", expiredDate: "01/26", totalMoney: "5 000", password: "5761",),
        ],
    );
  }
}
