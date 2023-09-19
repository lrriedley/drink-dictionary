import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/category_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';

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
                              hintText: 'Search for your favorite cocktail',
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
                        categoryName: 'Spirits',
                      ),
                      CategoryButton(
                        categoryName: 'Cocktails',
                      ),
                      CategoryButton(categoryName: 'Beer'),
                      CategoryButton(categoryName: 'Wine'),
                      CategoryButton(categoryName: 'Seltzer'),
                      CategoryButton(categoryName: 'Mixers'),
                      CategoryButton(categoryName: 'Other')
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
