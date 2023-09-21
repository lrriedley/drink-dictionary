import 'package:drink_dictionary/screens/spirits_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TertiaryCategoryButton extends StatelessWidget {
  TertiaryCategoryButton({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xFF16191B);
    const Color color2 = Color(0xFF283337);
    const Color color3 = Color(0xFF16191B);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SpiritsScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 8, 3, 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
              color3,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  categoryName,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
