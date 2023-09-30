import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWidget(),
        SizedBox(height: 10),
        Text(
          'Abdelrhman Nashaat',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Pacifico',
          ),
        ),
        SizedBox(height: 10),
        Text(
          'FLUTTER DEVELPOER',
          style: TextStyle(
            color: Color(0xFF6C8090),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        DividerWidget(),
        SizedBox(height: 10),
        PhoneTextField(),
        SizedBox(height: 10),
        EmailTextField(),
      ],
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Icon(
              Icons.email,
              size: 35,
              color: Color(0xFF2B475E),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                'abdulrhman.nashaat22@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Icon(
              Icons.phone,
              size: 35,
              color: Color(0xFF2B475E),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                '(+02) 01142764360',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.white,
      thickness: 2,
      indent: 60,
      endIndent: 60,
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 122,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 120,
        backgroundImage: AssetImage(
          'Images/download.png',
        ),
      ),
    );
  }
}
