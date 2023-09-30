import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  final String cardAmount,cardNumber,cardDate;
  final Color? color;
  const CardWidget({
    super.key,
    required this.cardAmount, required this.cardNumber,required this.cardDate, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270),
              child: Text(
                'VISA',
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
            ),
            const Text(
              'Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
             Text(
              cardAmount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  cardDate,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}