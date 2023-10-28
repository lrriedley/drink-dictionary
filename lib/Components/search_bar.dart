import 'package:drink_dictionary/drinks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drinks.dart';

class NightSearchBar extends StatefulWidget {
  final String searchText;
  final List<Drink> drink;

  NightSearchBar({
    Key? key,
    required this.searchText,
    required this.drink,
  });

  @override
  State<NightSearchBar> createState() => _NightSearchBarState();
}

class _NightSearchBarState extends State<NightSearchBar> {
  final controller = TextEditingController();
  late List<Drink> drink;

  void searchDrink(String query) {
    final suggestions = drinks.where((drinkss) {
      final name = drinkss.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => drink = suggestions);
  }

  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.pinkAccent), // Your desired border color
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
    );
  }
}
