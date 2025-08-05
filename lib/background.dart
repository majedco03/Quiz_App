import 'package:flutter/material.dart';

var img =
    '/Users/majidm/development/Flutter_projects/adv_basics/assets/images/quiz-logo.png';

class Background extends StatelessWidget {
  Background({super.key});
  @override
  Widget build(context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Image.asset(
              '/Users/majidm/development/Flutter_projects/adv_basics/assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(100, 255, 255, 255),
            ),
            SizedBox(height: 80),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(),
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white),
              ),
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
