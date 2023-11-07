import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/components/description.dart';
import 'package:drink_dictionary/components/spirit_analysis.dart';

class DrinkScreen extends StatelessWidget {
  static const String id = '/drink_screen';
  final AssetImage drinkImage;
  final String drinkName;
  final String category;
  final String drinkDescription;
  final List? aroma;
  final List? taste;
  final List? finish;
  final List? instructions;

  const DrinkScreen({
    Key? key,
    required this.drinkImage,
    required this.drinkName,
    required this.category,
    required this.drinkDescription,
    this.aroma,
    this.taste,
    this.finish,
    this.instructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCocktail = category == 'Cocktails';
    bool isSpirit = category == 'Spirits';
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text(
          drinkName,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image(
                image: drinkImage,
                width: 200,
                height: 200,
                alignment: Alignment.topCenter,
              ),
            ),
            Description(drinkDescription: drinkDescription),
            if (isCocktail)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: (instructions ?? []).asMap().entries.map((entry) {
                  int index = entry.key;
                  String item = entry.value;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    constraints: const BoxConstraints(
                                      maxWidth: 350,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [Color.fromARGB(122, 255, 255, 255), Colors.transparent],
                                        begin: Alignment.center,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            else if (isSpirit)
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 SpiritAnalysis(analysis: aroma, analysisName: 'Aroma',),
                  SpiritAnalysis(analysis: taste, analysisName: 'Taste',),
                  SpiritAnalysis(analysis: finish, analysisName: 'Finish',),
                ],
              )
            else
              const SizedBox.shrink(),
          const Text(
                      'pussy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}





