import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({ super.key,required this.answerText,required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal:40
          ),
          foregroundColor: Colors.black,
          backgroundColor: Color.fromARGB(210, 236, 195, 32),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
          )
      ),
      onPressed: onTap, child: Text(answerText,
      style: GoogleFonts.aBeeZee(fontSize: 18.0, color: Colors.white,
          fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    ),
    );
  }
}
