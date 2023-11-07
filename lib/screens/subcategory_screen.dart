import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tertiary_button.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/components/alphabet_scroll.dart';

class SubcategoryScreen extends StatefulWidget {
  static const String id = 'subcategory_screen';
  final String subcategory;

  const SubcategoryScreen({super.key, required this.subcategory});

  @override
  State<SubcategoryScreen> createState() => _SubcategoryScreenState();
}

class _SubcategoryScreenState extends State<SubcategoryScreen> {
  List<Drink> drink = [];

  @override
  void initState() {
    super.initState();
    drink = drinks
        .where((drink) => drink.subcategory == widget.subcategory)
        .toList();
  }

  void searchDrink(String query) {
    final suggestions = drinks.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => drink = suggestions
        .where((drink) => drink.subcategory == widget.subcategory)
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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              widget.subcategory[0].toUpperCase() + widget.subcategory.substring(1), 
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
                        'Search for your favorite ${widget.subcategory.toLowerCase()}'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: subcategoryToTertiary[widget.subcategory]
                            ?.map((tertiary) {
                          // Add this null check
                          return TertiaryButton(
                            tertiaryName: tertiary['tertiaryName'] ?? '',
                            image: tertiary['tertiaryImage'] as AssetImage? ??
                                const AssetImage(
                                    'path_to_placeholder_image'), // Provide a placeholder image path or handle null case
                          );
                          // return const SizedBox
                          //     .shrink(); // Return an empty SizedBox if tertiary is null
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
                          category: drink.category,
                          drinkDescription: drink.drinkDescription,
                          instructions: drink.instructions,
                          aroma: drink.aroma,
                          taste: drink.taste,
                          finish: drink.finish,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                  child: Text(
                   widget.subcategory[0].toUpperCase() + widget.subcategory.substring(1), 
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: AlphabetScrollWidget(
                    items: drinks
                        .where((drink) => drink.subcategory == widget.subcategory)
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
