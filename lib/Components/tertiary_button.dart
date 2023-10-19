import 'package:drink_dictionary/screens/tertiary_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    required this.image,
    required this.tertiaryName,
  });

  final String tertiaryName;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TertiaryScreen(
              tertiary: tertiaryName, // Pass subcategory data
            ),
          ),
        );
      },
      child: Container(
        width: 145,
        height: 77,
        margin: const EdgeInsets.fromLTRB(8, 8, 3, 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 3),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  tertiaryName,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
