import 'package:drink_dictionary/screens/drink_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkList extends StatelessWidget {
  final AssetImage drinkImage;
  final String drinkName;
  final String? drinkDescription;

  const DrinkList({
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  drinkName,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            constraints: const BoxConstraints(
              maxWidth: 350,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.white, Colors.transparent],
                begin: Alignment.center,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }
}
