import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/views/tune_view_body.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: const TuneViewBody(),
    );
  }
}
