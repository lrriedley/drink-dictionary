import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/category_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';

class SpiritsScreen extends StatefulWidget {
  static const String id = 'spirits_screen';

  const SpiritsScreen({super.key});
  @override
  _SpiritsScreenState createState() => _SpiritsScreenState();
}

class _SpiritsScreenState extends State<SpiritsScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40.0, // specify the height to make it smaller
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
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
                              hintText: 'Search for your favorite spirits',
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                          categoryName: 'Whiskey',
                          image:
                              AssetImage('assets/Whiskey/Whiskey Page.jpeg')),
                      // CategoryButton(categoryName: 'Brandy'),
                      // CategoryButton(categoryName: 'Tequila'),
                      // CategoryButton(categoryName: 'Mezcal'),
                      // CategoryButton(categoryName: 'Vodka'),
                      // CategoryButton(categoryName: 'Gin'),
                      // CategoryButton(categoryName: 'Rum'),
                      // CategoryButton(categoryName: 'Liqueur')
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
