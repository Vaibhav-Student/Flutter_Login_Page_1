import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerButtons extends StatelessWidget {
  final String buttonText;
  const ContainerButtons({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) { // Fixed method name to lowercase
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}