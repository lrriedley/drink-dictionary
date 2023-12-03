import 'package:drink_dictionary/components/search_bar.dart';
import 'package:drink_dictionary/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/components/drink_card.dart';
import 'package:drink_dictionary/components/alphabet_scroll.dart';

class TertiaryScreen extends StatefulWidget {
  static const String id = 'tertiary_screen';
  final String tertiary;

  const TertiaryScreen({super.key, required this.tertiary});

  @override
  State<TertiaryScreen> createState() => _TertiaryScreenState();
}

class _TertiaryScreenState extends State<TertiaryScreen> {
 late List<Drink> drink;
final GlobalKey<AlphabetScrollWidgetState> alphabetScrollKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    drink = drinks
    .where((drink) => drink.tertiary == widget.tertiary)
    .toList();
  }

  void searchDrink(String query) {
    final suggestions = drinks.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() {
      drink = suggestions.where((drink) => drink.tertiary == widget.tertiary).toList();
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
                    widget.tertiary,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
               SizedBox(
                  height: 660,
                  child: AlphabetScrollWidget(
                    key: alphabetScrollKey,
                    items: drink,
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
