import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/category_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/components/alphabet_scroll.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Drink> drink = [];
  final GlobalKey<AlphabetScrollWidgetState> alphabetScrollKey = GlobalKey();
  final controller = TextEditingController();

    @override
  void initState() {
    super.initState();
    drink = drinks.toList();
  }

  void searchDrink(String query) {
    final suggestions = drinks.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() {
      drink = suggestions.toList();
      alphabetScrollKey.currentState?.updateAlphabetList(query);
    });
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
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSearchBar(
                onChanged: searchDrink,
                searchText: 'Search for your favorite drink',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: category.keys.map((categoryName) {
                    final categoryData = category[categoryName]![0];
                    return CategoryButton(
                      categoryName: categoryName,
                      image: categoryData['categoryImage'] as AssetImage,
                    );
                  }).toList(),
                ),
              ),
              
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
              //   child: Text(
              //     'Bourbon',
              //     style: GoogleFonts.poppins(
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white,
              //         fontSize: 20),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       for (var drink in drinkData['Spirits']['Whiskey']
              //           ['Bourbon'])
              //         DrinkCard(
              //           drinkImage: drink['drinkImage'],
              //           drinkName: drink['drinkName'],
              //           category: drink['category'] ?? '',
              //           drinkDescription: drink['drinkDescription'],
              //           taste: drink['taste'],
              //         ),
              //     ],
              //   ),
              // ),
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'All Drinks',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 552,
                  child: AlphabetScrollWidget(
                              key: alphabetScrollKey,
                              items: drink,
                  ),
                ),
            ],
          ),
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
