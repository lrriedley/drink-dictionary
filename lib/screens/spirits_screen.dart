import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/category_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';

class SpiritsScreen extends StatelessWidget {
  static const String id = 'spirits_screen';
  // final String category;
  // final List<String> subcategories;

  // // const SpiritsScreen({super.key,this.category, required this.subcategories});
  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xFF16191B);
    const Color color2 = Color(0xFF283337);
    const Color color3 = Color(0xFF16191B);
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.7),
            title: Text(
              'SPIRITS',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32, // text size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NightSearchBar(searchText: 'Search for your favorite spirits'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                          categoryName: 'Whiskey',
                          image: AssetImage(
                              'assets/Drink Category Photos/Spirits/Whiskey Page.jpeg')),
                      CategoryButton(
                        categoryName: 'Tequila',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Tequila Page.png'),
                      ),
                      CategoryButton(
                        categoryName: 'Vodka',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Vodka Page.jpeg'),
                      ),
                      CategoryButton(
                        categoryName: 'Brandy',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Brandy Page.jpeg'),
                      ),
                      CategoryButton(
                        categoryName: 'Gin',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Gin Page.jpeg'),
                      ),
                      CategoryButton(
                        categoryName: 'Rum',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Rum Page.png'),
                      ),
                      CategoryButton(
                        categoryName: 'Liqueur',
                        image: AssetImage(
                            'assets/Drink Category Photos/Spirits/Liqueur.jpg'),
                      )
                    ],
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
                    'Spirits',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                Column(
                  children: [
                    for (var i = 0; i < spirits.length; i += 4)
                      Row(
                        children: [
                          if (i < spirits.length)
                            DrinkCard(
                              drinkImage: spirits[i]['drinkImage'],
                              drinkName: spirits[i]['drinkName'],
                              drinkDescription: spirits[i]['drinkDescription'],
                            ),
                          if (i + 1 < spirits.length)
                            DrinkCard(
                              drinkImage: spirits[i + 1]['drinkImage'],
                              drinkName: spirits[i + 1]['drinkName'],
                              drinkDescription: spirits[i + 1]
                                  ['drinkDescription'],
                            ),
                          if (i + 2 < spirits.length)
                            DrinkCard(
                              drinkImage: spirits[i + 2]['drinkImage'],
                              drinkName: spirits[i + 2]['drinkName'],
                              drinkDescription: spirits[i + 2]
                                  ['drinkDescription'],
                            ),
                          if (i + 3 < spirits.length)
                            DrinkCard(
                              drinkImage: spirits[i + 3]['drinkImage'],
                              drinkName: spirits[i + 3]['drinkName'],
                              drinkDescription: spirits[i + 3]
                                  ['drinkDescription'],
                            ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
