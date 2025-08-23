import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/home_page/widgets/custom_carousel_widget.dart';
import 'package:finance_app/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeightSpace(18),
        TopProfileNotificationWidget(),
        const HeightSpace(18),
        CustomCarouselWidget(),
      ],
    );
  }
}
