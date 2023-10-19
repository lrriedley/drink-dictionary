import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/subcategory_button.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/Components/flatten_drinks.dart';

class SubcategoryScreen extends StatelessWidget {
  static const String id = 'subcategory_screen';
  final String subcategory;

  const SubcategoryScreen({super.key, required this.subcategory});
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
              subcategory,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NightSearchBar(
                    searchText:
                        'Search for your favorite ${subcategory.toLowerCase()}'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        categoryToSubcategories[category]?.map((subcategory) {
                              return SubcategoryButton(
                                subcategoryName: subcategory['subcategoryName'],
                                image: subcategory['subcategoryImage']
                                    as AssetImage,
                              );
                            }).toList() ??
                            [],
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                  child: Text(
                    subcategory,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 400, // Adjust the height as needed
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Horizontal scrolling for rows
                      itemCount: drinkData[subcategory],
                      itemBuilder: (BuildContext context, int index) {
                        return DrinkCard(
                          drinkImage: drinkData[subcategory][index]
                              ['drinkImage'],
                          drinkName: drinkData[subcategory][index]['drinkName'],
                          drinkDescription: drinkData[subcategory][index]
                                  ['drinkDescription'] ??
                              '',
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 400, // Adjust the height as needed
                  child: ListView.builder(
                    scrollDirection:
                        Axis.vertical, // Vertical scrolling for rows
                    itemCount: drinkData[subcategory],
                    itemBuilder: (BuildContext context, int index) {
                      final drink = drinkData[subcategory][index];

                      return DrinkCard(
                        drinkImage: drink['drinkImage'],
                        drinkName: drink['drinkName'],
                        drinkDescription: drink['drinkDescription'],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
