import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12.0,
              ),
              child: Container(
                height: 380,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 160,
                  ),
                  CircleAvatar(
                    radius: 100,
                    child: Image.asset('asset/fotor_2023-1-30_1_41_46.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ndife Samule',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Product Design',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Divider(
                            thickness: 4,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('i choose the product dsign track because i'),
                  const Text('love solving visual problems using UI/UX'),
                  const Text('designers'),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
