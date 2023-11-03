import 'package:drink_dictionary/screens/drink_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkCard extends StatelessWidget {
  final AssetImage drinkImage;
  final String drinkName;
  final String? drinkDescription;

  const DrinkCard({
    Key? key,
    required this.drinkImage,
    required this.drinkName,
    this.drinkDescription,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DrinkScreen(
                drinkImage: drinkImage,
                drinkName: drinkName,
                drinkDescription: drinkDescription ?? ''),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 106,
            width: 97,
            decoration: BoxDecoration(
              color: Colors.white,
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
            drinkName.length > 15
                ? '${drinkName.substring(0, 13)}...'
                : drinkName,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
