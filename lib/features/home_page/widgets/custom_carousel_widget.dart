import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
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
  double currentIdex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                currentIdex = index.toDouble();
              });
            },
          ),
          items: [
            CardItemWidget(
              cardName: "Abdallah Alqiran",
              totalMoney: "501 765",
              expiredDate: "06/27",
            ),
            CardItemWidget(
              cardName: "Ramadan Hussin",
              expiredDate: "07/28",
              totalMoney: "10",
              password: "1245",
            ),
            CardItemWidget(
              cardName: "Abdallah Mahmoud",
              expiredDate: "01/26",
              totalMoney: "5 000",
              password: "5761",
            ),
            CardItemWidget(
              cardName: "Mohamed Alqiran",
              expiredDate: "01/05",
              totalMoney: "-1000",
              password: "1436",
            ),
          ],
        ),

        const HeightSpace(16),

        DotsIndicator(
          dotsCount: 4,
          position: currentIdex,
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 2.w),
            size: const Size.square(9.0),
            color: Color(0xFFE3E9ED),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
