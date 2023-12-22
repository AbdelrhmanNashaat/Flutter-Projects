import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const Button({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 20, color: Colors.black, fontFamily: 'Oswald'),
      ),
      trailing: const Icon(
        Icons.arrow_right,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
