import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton(this.text, this.onTap, {super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(190, 35, 1, 89),
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      ),
      child: Text(
        text,
        style: GoogleFonts.merriweather(
          color: const Color.fromARGB(255, 240, 231, 255),
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
