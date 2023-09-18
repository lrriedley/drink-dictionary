import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkCard extends StatelessWidget {
  final AssetImage drinkImage;
  final String drinkName;
  final String drinkDescription;

  const DrinkCard({
    Key? key,
    required this.drinkImage,
    required this.drinkName,
    required this.drinkDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xFF16191B);
    const Color color2 = Color(0xFF283337);
    const Color color3 = Color(0xFF16191B);
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 106,
              width: 97,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [color1, color2, color3],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image(
                image: drinkImage,
                width: 10,
                height: 10,
                alignment: Alignment.topCenter,
              ),
            ),
            Text(
              drinkName,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}
