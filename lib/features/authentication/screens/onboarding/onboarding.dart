import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shopping_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shopping_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopping_app/features/authentication/screens/onboarding/widgets/onboarding_ship.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/text_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // trang cuộn
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBroadingTitle1,
                subTitle: TTexts.onBroadingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBroadingTitle2,
                subTitle: TTexts.onBroadingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBroadingTitle3,
                subTitle: TTexts.onBroadingSubTitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // điều hướng dấu chấm
          const onBoardingDotNavigation(),
          // nút next
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
