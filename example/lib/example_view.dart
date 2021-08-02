import 'package:flutter/material.dart';
import 'package:gym_ui/gym_ui.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GymButton(title: 'Deneme'),
            SizedBox(
              height: 10,
            ),
            GymButton(title: 'Deneme2'),
          ],
        ),
      ),
    );
  }
}
