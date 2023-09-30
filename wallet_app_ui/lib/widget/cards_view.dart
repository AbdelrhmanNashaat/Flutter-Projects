import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'card_widget.dart';

class CardsPageView extends StatelessWidget {
  CardsPageView({
    super.key,
  });
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: [
              CardWidget(
                cardAmount: '\$5,250.20',
                cardNumber: '****3456',
                cardDate: '24/10',
                color: Colors.deepPurple[400],
              ),
              CardWidget(
                cardAmount: '\$342.23',
                cardNumber: '****369',
                cardDate: '23/11',
                color: Colors.blue[400],
              ),
              CardWidget(
                cardAmount: '\$420.30',
                cardNumber: '****9863',
                cardDate: '3/9',
                color: Colors.green[400],
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        SmoothPageIndicator(controller: controller, count: 3),
      ],
    );
  }
}
