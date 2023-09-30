import 'package:coffe_shop_app/assets.dart';
import 'package:coffe_shop_app/constant.dart';
import 'package:coffe_shop_app/widgets/lato_text.dart';
import 'package:flutter/material.dart';
import '../widgets/container_back_ground.dart';
import '../widgets/drink_details_container.dart';

class CappunccinoViewBody extends StatelessWidget {
  const CappunccinoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: kDrinkContainerColor,
        ),
        const BackGroundImage(),
        const Positioned(
          top: 250,
          child: Drinkdetails(),
        ),
        Positioned(
          top: 335,
          child: Container(
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            width: 395,
            height: 550,
          ),
        ),
        const RowOfComponent(),
        const Positioned(
          top: 440,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LatoText(
                  text: 'Coffe Size',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 15),
                RowOfDrinkSize(),
                SizedBox(height: 25),
                LatoText(
                  text: 'About',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                LatoText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id\n ipsum vivamus velit lorem amet. Tincidunt cras volutpat\n aliquam porttitor molestie. Netus neque, habitasse id\n vulputate proin cras. Neque, vel duis sit vel pellentesque\n tempor. A commodo arcu tortor arcu, elit. ',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                SizedBox(height: 35),
                AddDrinkButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AddDrinkButton extends StatelessWidget {
  const AddDrinkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBrownColor,
        borderRadius: BorderRadius.circular(34.0),
      ),
      width: 335,
      height: 73,
      // ignore: prefer_const_constructors
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LatoText(
              text: 'Add to Cart',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: kWhiteColor,
            ),
            LineWidget(color: kWhiteColor),
            LatoText(
              text: '50 K',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: kWhiteColor,
            ),
          ],
        ),
      ),
    );
  }
}

class RowOfDrinkSize extends StatelessWidget {
  const RowOfDrinkSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DrinkSizeContainer(
          color: kBrownColor,
          textColor: kWhiteColor,
          text: 'Small',
        ),
        SizedBox(width: 20),
        DrinkSizeContainer(
          color: kWhiteColor,
          textColor: Colors.black,
          text: 'Medium',
        ),
        SizedBox(width: 20),
        DrinkSizeContainer(
          color: kWhiteColor,
          textColor: Colors.black,
          text: 'Large',
        ),
      ],
    );
  }
}

class DrinkSizeContainer extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  const DrinkSizeContainer({
    super.key,
    required this.color,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: kWhiteColor,
        ),
        boxShadow: const [
          BoxShadow(
            color: kBlack2Color,
            blurRadius: 0.5,
            offset: Offset(0.8, 0.8),
          ),
        ],
      ),
      height: 37,
      width: 98,
      child: Center(
        child: LatoText(
          text: text,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
    );
  }
}

class RowOfComponent extends StatelessWidget {
  const RowOfComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 360,
      left: 30,
      child: Container(
        decoration: BoxDecoration(
          color: kGray5Color,
          borderRadius: BorderRadius.circular(27.0),
        ),
        width: 340,
        height: 55,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ComponentsRow(
                imagePath: AssetsData.coffe,
                text: 'Coffe',
              ),
              LineWidget(
                color: Colors.black,
              ),
              ComponentsRow(
                imagePath: AssetsData.chocolate,
                text: 'Chocolate',
              ),
              LineWidget(
                color: Colors.black,
              ),
              LatoText(
                text: 'Medium Roasted',
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  final Color color;
  const LineWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.5),
            child: VerticalDivider(
              color: color,
              thickness: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class ComponentsRow extends StatelessWidget {
  final String imagePath;
  final String text;
  const ComponentsRow({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          scale: 0.8,
        ),
        const SizedBox(width: 5),
        LatoText(
          text: text,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
