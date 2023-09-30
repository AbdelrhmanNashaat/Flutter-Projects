import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('asset/d286e36ecc59040f9c2b6291acbb16b5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 85.0, vertical: 90),
              child: Text(
                'Test Your Memory',
                style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 180.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('questions');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'Start',
                      style: TextStyle(fontSize: 26.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
