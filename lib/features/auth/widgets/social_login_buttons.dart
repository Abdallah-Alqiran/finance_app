import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/widgets/primary_container_widget.dart';
import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryContainerWidget(
          svgPicture: AppAssets.facebookSvgIcon,
        ),
        PrimaryContainerWidget(
          svgPicture: AppAssets.googleSvgIcon,
        ),
        PrimaryContainerWidget(
          svgPicture: AppAssets.appleSvgIcon,
        ),
      ],
    );
  }
}
