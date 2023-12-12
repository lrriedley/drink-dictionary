import 'package:drink_dictionary/screens/drink_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkList extends StatelessWidget {
  final AssetImage drinkImage;
  final String drinkName;
  final String category;
  final String? drinkDescription;
  final List? aroma;
  final List? taste;
  final List? finish;
  final List? instructions;

  const DrinkList({
    super.key,
    required this.drinkImage,
    required this.drinkName,
    required this.category,
    this.drinkDescription, 
    this.aroma,
    this.taste,
    this.finish,
    this.instructions,
  });
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
                aroma: aroma,
                taste: taste,
                finish: finish,
                instructions: instructions),
          ),
        );
      },
      child: Row(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4,0,0,0),
                  child: Text(
                    drinkName,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4,0,0,4),
                child: SizedBox(
                  width: 280,
                  child: Text(
                    drinkDescription!,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4,0,0,5),
                child: Container(
                          width: 285,
                          height: 1,
                          constraints: const BoxConstraints(
                maxWidth: 350,
                          ),
                          decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.grey, Colors.transparent],
                  begin: Alignment.center,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
