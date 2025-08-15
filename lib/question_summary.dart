import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color isAnswerCorrect;
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            if (data['user_answer'] == data['correct_answer']) {
              isAnswerCorrect = Colors.greenAccent;
            } else {
              isAnswerCorrect = Colors.redAccent;
            }
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: isAnswerCorrect,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(((data['question_index'] as int) + 1).toString()),
                ),

                SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.ptSerif(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5),
                      Text(
                        (data['user_answer'] as String),
                        style: GoogleFonts.ptSerif(color: isAnswerCorrect),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        (data['correct_answer'] as String),
                        style: GoogleFonts.ptSerif(color: Colors.greenAccent),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
