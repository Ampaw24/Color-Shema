import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/textstyle.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.buttonText,
    this.width = 296,
    this.height = 64,
    this.btnColor = const Color(0xff142831),
    required this.onpressed
  });
  final Color btnColor;
  final buttonText;
  final double width, height;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(textStyle: kLoginbutton),
          ),
        ),
        width: 296,
        height: 64,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
