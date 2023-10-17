import 'package:calculator_app/src/features/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Screens/home_screen.dart';
import '../../constants/color.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';
import 'on_boarding_page_widget.dart';

class OnBoaardingScreen extends StatelessWidget {
  OnBoaardingScreen({Key? key}) : super(key: key);

  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          bgColor: tOnBoardingPage1Color,
          height: size.height,
          counterText: tOnBoardingCounter1,
          subTitle: tOnBoardingSubTitle1,
          title: tOnBoardingTitle1,
          image: tOnBoardingImage1,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          bgColor: tOnBoardingPage2Color,
          height: size.height,
          counterText: tOnBoardingCounter2,
          subTitle: tOnBoardingSubTitle2,
          title: tOnBoardingTitle2,
          image: tOnBoardingImage2,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          bgColor: tOnBoardingPage3Color,
          height: size.height,
          counterText: tOnBoardingCounter3,
          subTitle: tOnBoardingSubTitle3,
          title: tOnBoardingTitle3,
          image: tOnBoardingImage3,
        ),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            slideIconWidget: const Icon(
              Icons.arrow_back_ios,
            ),
            enableSideReveal: true,
            liquidController: controller,
            onPageChangeCallback: OnPageChangedCallback,
            waveType: WaveType.liquidReveal,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
              top: 40,
              right: 20,
              child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void OnPageChangedCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}
