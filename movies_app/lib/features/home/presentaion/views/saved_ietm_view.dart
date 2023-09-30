import 'package:flutter/material.dart';

import 'saved_ietm_view_body.dart';

class SavedItemsView extends StatelessWidget {
  const SavedItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SavedItemsViewBody(),
    );
  }
}
