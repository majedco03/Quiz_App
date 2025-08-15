import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var img =
    '/Users/majidm/development/Flutter_projects/adv_basics/assets/images/quiz-logo.png';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
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
            style: GoogleFonts.merriweather(
              color: const Color.fromARGB(233, 239, 229, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(40),
              ),
              foregroundColor: Colors.white,
              side: BorderSide(
                color: Colors.white,
                width: CircularProgressIndicator.strokeAlignCenter,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
