import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persona_arrk/constants/colors.dart';
import 'package:persona_arrk/constants/styles.dart';
import 'package:persona_arrk/utils/widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        getTitleWidgets(),
        addVerticalSpace(24),
        getCarAlertsWidgets(screenWidth, screenHeight/3.5),
        addVerticalSpace(24),
        getBatteryInfoWidgets(screenWidth/3),
        addVerticalSpace(24),
        getAdditionalWidgets(),

      ],
    );
  }

  Widget getTitleWidgets() {
    return Column(
      children: [
        addVerticalSpace(25),
        const Icon(Icons.energy_savings_leaf_outlined,
          color: kGreenColor,
        size: 32,
        ),

        addVerticalSpace(4),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ",
              style: kMediumGreenTextStyle,
            ),
            Text("Alex",
              style: kMediumWhiteTextStyle,
            )
          ],
        ),
      ],
    );
  }

  getCarAlertsWidgets(double screenWidth, double screenHeight) {
    return Column(
      children: [
        Container(
          color: kGreenColor,
          height: screenHeight,
          width: screenWidth,
        )
      ],
    );
  }

  getBatteryInfoWidgets(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: kYellowColor,
          height: 60,
          width: screenWidth,
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(
            Icons.electric_bolt_outlined,
            color: kWhiteColor,
            size: 32,
          ),
        ),
      ],
    );
  }

  getAdditionalWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(
            Icons.view_headline,
            color: kWhiteColor,
            size: 32,
          ),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(
            Icons.lock_open,
            color: kWhiteColor,
            size: 32,
          ),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(
            Icons.beach_access,
            color: kWhiteColor,
            size: 32,
          ),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(
            Icons.add_alert,
            color: kWhiteColor,
            size: 32,
          ),
        ),

      ],
    );
  }

}