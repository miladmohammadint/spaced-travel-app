import 'package:flutter/material.dart';
import 'package:spaced_trip_scheduler/constants.dart';

class OnboardingWrapper extends StatelessWidget {
  final String background;
  final String titleLine1;
  final String titleLine2;
  final String iconName;
  final String iconBackgroundName;
  final String message;
  const OnboardingWrapper({
    Key? key,
    required this.background,
    required this.titleLine1,
    required this.titleLine2,
    required this.iconName,
    required this.iconBackgroundName,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double textStartPosition = MediaQuery.of(context).size.height * 1.8 / 3;
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            '$kImagesPath/backgrounds/$background',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: textStartPosition + 10,
          left: -10,
          right: -10,
          child: Image.asset(
            '$kImagesPath/backgrounds/$iconBackgroundName',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: textStartPosition,
            left: kDefaultPadding * 3,
            right: kDefaultPadding * 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('$kIconsPath/$iconName'),
                const SizedBox(height: 20),
                Text(
                  titleLine1,
                  style: kHeadingStyle,
                ),
                Text(
                  titleLine2,
                  style: kHeadingStyle.copyWith(
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 10),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: kNoteTextColor,
                    fontSize: 15,
                    height: 1.7,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
