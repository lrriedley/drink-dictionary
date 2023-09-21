import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/category_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NightSearchBar(searchText: 'Search for your favorite cocktail'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                          categoryName: 'Spirits',
                          image: AssetImage(
                              'assets/Drink Category Photos/Spirits/Spirits.png')),
                      CategoryButton(
                        categoryName: 'Cocktails',
                        image: AssetImage(
                            'assets/Drink Category Photos/Cocktails/Cocktails.png'),
                      ),
                      CategoryButton(
                        categoryName: 'Beer',
                        image: AssetImage(
                            'assets/Drink Category Photos/Beer/Beer.png'),
                      ),
                      CategoryButton(
                        categoryName: 'Wine',
                        image: AssetImage(
                            'assets/Drink Category Photos/Wine/Wine.png'),
                      ),
                      CategoryButton(
                        categoryName: 'Seltzer',
                        image: AssetImage(
                            'assets/Drink Category Photos/Seltzer/Seltzer.png'),
                      ),
                      // CategoryButton(categoryName: 'Mixers'),
                      // CategoryButton(categoryName: 'Other')
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
                      for (var bourbonDrink in spirits)
                        if (bourbonDrink['SubcategoryName'] == 'Bourbon')
                          DrinkCard(
                            drinkImage: bourbonDrink['drinkImage'],
                            drinkName: bourbonDrink['drinkName'],
                            drinkDescription: bourbonDrink['drinkDescription'],
                          ),
                    ],
                  ),
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
