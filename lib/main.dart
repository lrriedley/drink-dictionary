import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  final Color color1 = const Color(0xFF16191B);
  final Color color2 = const Color(0xFF283337);
  final Color color3 = const Color(0xFF16191B);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.7),
          title: Text(
            'DRINK DICTIONARY',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 32, // text size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0, // specify the height to make it smaller
                padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color1, color2, color3],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for your favorite cocktail',
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
              child: Text(
                'Trending',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var drink in drinks)
                    DrinkCard(
                      drinkImage: drink['drinkImage'],
                      drinkName: drink['drinkName'],
                      drinkDescription: drink['drinkDescription'],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
              child: Text(
                'Bourbon',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var bourbonDrink in bourbon)
                    DrinkCard(
                      drinkImage: bourbonDrink['drinkImage'],
                      drinkName: bourbonDrink['drinkName'],
                      drinkDescription: bourbonDrink['drinkDescription'],
                    ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     catergoryButton('Gin'),
            //     catergoryButton('Rum'),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     catergoryButton('Whiskey'),
            //     catergoryButton('Vodka'),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     catergoryButton('Tequila'),
            //     catergoryButton('Brandy'),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

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
    final Color color1 = const Color(0xFF16191B);
    final Color color2 = const Color(0xFF283337);
    final Color color3 = const Color(0xFF16191B);
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 212,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Container(
            height: 125,
            width: 125,
            child: Image(
              image: drinkImage,
              alignment: Alignment.topCenter,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  drinkName,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  drinkDescription,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
