import 'package:flutter/material.dart';

import 'create_new_password_view_body.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child:CreateNewPasswordViewBody(),),
    );
  }
}
