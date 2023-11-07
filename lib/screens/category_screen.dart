import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'package:drink_dictionary/components/subcategory_button.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/components/alphabet_scroll.dart';

class CategoryScreen extends StatefulWidget {
  static const String id = 'category_screen';
  final String category;


  const CategoryScreen({Key? key, required this.category,})
      : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
 late List<Drink> drink;
final GlobalKey<AlphabetScrollWidgetState> alphabetScrollKey = GlobalKey();


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
    setState(() {
      drink = suggestions.where((drink) => drink.category == widget.category).toList();
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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
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
            flexibleSpace: Image(
              image: AssetImage('assets/Drink Category Photos/${widget.category}/${widget.category}.png'),
              fit: BoxFit.cover,
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
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    widget.category,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 550,
                  child: AlphabetScrollWidget(
                  key: alphabetScrollKey,
                  items: drink,
                ),),
              ],
            ),
          ),
          bottomNavigationBar: const NewTabBar(),
        ),
      ),
    );
  }
}
