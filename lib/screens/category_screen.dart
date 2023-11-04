import 'package:drink_dictionary/Components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/subcategory_button.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/Components/drink_card.dart';
import 'package:drink_dictionary/Components/alphabet_scroll.dart';

class CategoryScreen extends StatefulWidget {
  static const String id = 'category_screen';
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Drink> drink = [];

  @override
  void initState() {
    super.initState();
    drink = drinks.where((drink) => drink.category == widget.category).toList();
  }

  void searchDrink(String query) {
    final suggestions = drinks.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => drink = suggestions
        .where((drink) => drink.category == widget.category)
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
                    children: drink.map((drink) {
                      return SizedBox(
                        child: DrinkCard(
                          drinkImage: drink.drinkImage,
                          drinkName: drink.drinkName,
                          category: drink.category!,
                          drinkDescription: drink.drinkDescription,
                          instructions: drink.instructions,
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
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: AlphabetScrollWidget(
                    items: drinks
                        .where((drink) => drink.category == widget.category)
                        .toList(),
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
