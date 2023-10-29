import 'package:drink_dictionary/Components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/subcategory_button.dart';
import 'package:drink_dictionary/Components/flatten_drinks.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/Components/drink_card.dart';

class CategoryScreen extends StatefulWidget {
  static const String id = 'category_screen';
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Drink> drink = drinks;

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
              widget.category,
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
                      'Search for your favorite ${widget.category.toLowerCase()}',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categoryToSubcategories[widget.category]
                            ?.map((subcategory) {
                          return SubcategoryButton(
                            subcategoryName: subcategory['subcategoryName'],
                            image:
                                subcategory['subcategoryImage'] as AssetImage,
                          );
                        }).toList() ??
                        [],
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
                    widget.category,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:
                        (flattenDrinks(drinkData[widget.category]).length / 4)
                            .ceil(),
                    itemBuilder: (BuildContext context, int index) {
                      final categoryDrinks =
                          flattenDrinks(drinkData[widget.category]);
                      final start = index * 4;
                      final end = (index + 1) * 4;

                      return Row(
                        children: [
                          for (var i = start; i < end; i++)
                            if (i < categoryDrinks.length)
                              Expanded(
                                child: DrinkCard(
                                  drinkImage: categoryDrinks[i]['drinkImage'],
                                  drinkName: categoryDrinks[i]['drinkName'],
                                  drinkDescription: categoryDrinks[i]
                                          ['drinkDescription'] ??
                                      '',
                                ),
                              ),
                        ],
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
