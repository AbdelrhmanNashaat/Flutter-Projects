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
        backgroundColor: const Color(0xff09090F),
        body: Container(
          margin: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Hello ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Tilt Neon'),
                          ),
                          Text(
                            'Daisy!',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Tilt Neon'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Check for latest addition.',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Tilt Neon'),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    maxRadius: 30,
                    minRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-10/girl-names-that-start-with-c-zz-221027-768b76.jpg'),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 2),
                child: ListTile(
                  tileColor:
                      const Color.fromARGB(255, 95, 94, 94).withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  leading: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24,
                  ),
                  title: const Text(
                    'Search',
                    style:
                        TextStyle(color: Colors.grey, fontFamily: 'Tilt Neon'),
                  ),
                  trailing: const Icon(
                    Icons.mic_outlined,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
              const Text(
                'Filters',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    fontFamily: 'Tilt Neon'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ContainerWithImage(
                    icon: Icons.view_agenda,
                    text: 'Genre',
                  ),
                  ContainerWithImage(
                    icon: Icons.star,
                    text: 'Top IMDB',
                  ),
                  ContainerWithImage(
                    icon: Icons.language,
                    text: 'Language',
                  ),
                  ContainerWithImage(
                    icon: Icons.check_circle,
                    text: 'Watched',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'Featured ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Tilt Neon'),
                  ),
                  Text(
                    'Series',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Tilt Neon'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ImageWidget(
                      image:
                          'https://images.justwatch.com/poster/32640201/s718/vikings.%7Bformat%7D',
                    ),
                    ImageWidget(
                      image:
                          'http://tvseriesfinale.com/wp-content/uploads/2016/04/Game-of-Thrones-TV-show-on-HBO-season-6-premiere-canceled-or-renewed-e1460477908890.jpeg',
                    ),
                    ImageWidget(
                      image:
                          'data:image/jpeg;base64,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',
                    ),
                    ImageWidget(
                      image:
                          'data:image/jpeg;base64,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',
                    ),
                    ImageWidget(
                      image:
                          'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg',
                    ),
                    ImageWidget(
                      image:
                          'https://m.media-amazon.com/images/I/81870wa24RL._AC_SL1500_.jpg',
                    ),
                    ImageWidget(
                      image:
                          'data:image/jpeg;base64,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',
                    ),
                    ImageWidget(
                      image:
                          'https://i0.wp.com/plexmx.info/wp-content/uploads/2021/10/FC3utLkWUAI-4ZG.jpg?ssl=1',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle,
                color: Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 220,
            height: 300,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWithImage extends StatelessWidget {
  const ContainerWithImage({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontFamily: 'Tilt Neon'),
        ),
      ],
    );
  }
}
