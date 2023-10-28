import 'package:drink_dictionary/Components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/Components/category_button.dart';
import 'package:drink_dictionary/Components/drink_card.dart';
import 'package:drink_dictionary/Components/search_bar.dart';
import 'package:drink_dictionary/drinks.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Drink> drink = drinks;
  final controller = TextEditingController();

  void searchDrink(String query) {
    final suggestions = drinks.where((drinkss) {
      final name = drinkss.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => drink = suggestions);
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
              Container(
                height: 40,
                margin: const EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color:
                              Colors.pinkAccent), // Your desired border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors
                              .pinkAccent), // Your desired border color when focused
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors
                              .pinkAccent), // Your desired border color when enabled
                    ),
                    hintText: 'Search for your favorite drink',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 8, bottom: 8),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  onChanged: searchDrink,
                  cursorColor: Colors.pinkAccent,
                ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                child: Text(
                  'Results',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: drink.map((drinkss) {
                    return SizedBox(
                      width: 100, // Set a fixed width for each DrinkCard
                      child: DrinkCard(
                        drinkImage: drinkss.drinkImage,
                        drinkName: drinkss.drinkName,
                      ),
                    );
                  }).toList(),
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
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
