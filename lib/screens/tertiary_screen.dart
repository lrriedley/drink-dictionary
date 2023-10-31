import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/Components/drink_card.dart';

class TertiaryScreen extends StatefulWidget {
  static const String id = 'tertiary_screen';
  final String tertiary;

  const TertiaryScreen({super.key, required this.tertiary});

  @override
  State<TertiaryScreen> createState() => _TertiaryScreenState();
}

class _TertiaryScreenState extends State<TertiaryScreen> {
  List<Drink> drink = [];

  @override
  void initState() {
    super.initState();
    drink = drinks.where((drink) => drink.tertiary == widget.tertiary).toList();
  }

  void searchDrink(String query) {
    final suggestions = drinks.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => drink = suggestions
        .where((drink) => drink.tertiary == widget.tertiary)
        .toList());
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
              widget.tertiary,
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
                CustomSearchBar(
                  onChanged: searchDrink,
                  searchText:
                      'Search for your favorite ${widget.tertiary.toLowerCase()}',
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
                    children: drink.map((drink) {
                      return SizedBox(
                        child: DrinkCard(
                          drinkImage: drink.drinkImage,
                          drinkName: drink.drinkName,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                  child: Text(
                    widget.tertiary,
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
                //         (flattenDrinks(drinkData[subcategory]).length / 4).ceil(),
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
