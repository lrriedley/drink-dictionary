import 'package:drink_dictionary/screens/spirits_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  CategoryButton({super.key, required this.categoryName});

  Color color1 = Color(0xFF16191B);
  Color color2 = Color(0xFF283337);
  Color color3 = Color(0xFF16191B);
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SpiritsScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 8, 3, 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2, color3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
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
          ],
        ),
      ),
    );
  }
}
