import 'package:drink_dictionary/Components/tertiary_button.dart';
import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
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
                // NightSearchBar(
                //     searchText:
                //         'Search for your favorite ${subcategory.toLowerCase()}'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: subcategoryToTertiary[subcategory]
                            ?.map((tertiary) {
                          if (tertiary != null) {
                            // Add this null check
                            return TertiaryButton(
                              tertiaryName: tertiary['tertiaryName'] ?? '',
                              image: tertiary['tertiaryImage'] as AssetImage? ??
                                  AssetImage(
                                      'path_to_placeholder_image'), // Provide a placeholder image path or handle null case
                            );
                          }
                          return SizedBox
                              .shrink(); // Return an empty SizedBox if tertiary is null
                        }).toList() ??
                        [],
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
                // Container(
                //   height: 400,
                //   child: ListView.builder(
                //     scrollDirection: Axis.vertical,
                //     itemCount:
                //         (flattenDrinks(drinkData[subcategory]).length / 4)
                //             .ceil(),
                //     itemBuilder: (BuildContext context, int index) {
                //       final categoryDrinks = flattenDrinks(drinkData[category]);
                //       final start = index * 4;
                //       final end = (index + 1) * 4;

                //       return Row(
                //         children: [
                //           for (var i = start; i < end; i++)
                //             if (i < categoryDrinks.length)
                //               Expanded(
                //                 child: DrinkCard(
                //                   drinkImage: categoryDrinks[i]['drinkImage'],
                //                   drinkName: categoryDrinks[i]['drinkName'],
                //                   drinkDescription: categoryDrinks[i]
                //                           ['drinkDescription'] ??
                //                       '',
                //                 ),
                //               ),
                //         ],
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          ),
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
