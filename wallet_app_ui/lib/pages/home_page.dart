import 'package:flutter/material.dart';
import 'package:wallet_app_ui/widget/my_list_tile.dart';
import '../widget/cards_row.dart';
import '../widget/cards_view.dart';
import '../widget/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 20),
            CardsPageView(),
            const SizedBox(height: 20),
            const CardsRow(),
            const SizedBox(height: 20),
            const MyListTile(
                imagePath: 'lib/icon/statistics.png',
                tex1: 'Statistics',
                text2: 'Payments and Income'),
            const SizedBox(height: 15),
            const MyListTile(
                imagePath: 'lib/icon/transaction.png',
                tex1: 'Transaction',
                text2: 'Transaction History')
          ],
        ),
      ),
    );
  }
}
