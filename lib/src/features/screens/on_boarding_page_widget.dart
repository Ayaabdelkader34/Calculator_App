import 'package:flutter/cupertino.dart';

import '../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(
              model.image,
            ),
            height: 400,
            width: 400,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
