import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerButtons extends StatelessWidget {
  final String buttonText;
  const ContainerButtons({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      width: screenWidth * 0.88,
      height: orientation == Orientation.portrait
          ? screenHeight * 0.1
          : screenHeight * 0.3,
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