import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/screens/drink_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkCard extends StatelessWidget {
  final AssetImage drinkImage;
  final String drinkName;
  final String category;
  final String? drinkDescription;
  final List? taste;
  final List? instructions;

  const DrinkCard({
    Key? key,
    required this.drinkImage,
    required this.drinkName,
    required this.category,
    this.drinkDescription,
    this.taste,
    this.instructions,
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
              category: category,
              drinkDescription: drinkDescription ?? '',
              taste: taste,
              instructions: instructions,
            ),
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
                fontSize: 12,
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
