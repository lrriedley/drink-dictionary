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
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.7),
            title: Text(
              'Drink Dictionary',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32, // text size
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NightSearchBar(searchText: 'Search for your favorite cocktail'),
                const SingleChildScrollView(
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
                      for (var drink in drinkData['Spirits']['Whiskey']
                          ['Bourbon'])
                        DrinkCard(
                          drinkImage: drink['drinkImage'],
                          drinkName: drink['drinkName'],
                          drinkDescription: drink['drinkDescription'],
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
