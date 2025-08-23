import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/features/home_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: screens[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.whiteColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 48.sp),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart, size: 48.sp),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_sharp, size: 56.sp),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.addchart_rounded, size: 48.sp),
              label: "My card",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity, size: 48.sp),
              label: "Profile",
            ),
          ],
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
