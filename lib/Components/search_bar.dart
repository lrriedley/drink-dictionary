import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  final Function(String) onChanged;
  final String searchText;

  const CustomSearchBar({
    Key? key,
    required this.onChanged,
    required this.searchText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.pinkAccent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.pinkAccent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.pinkAccent,
            ),
          ),
          hintText: searchText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 12,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 8, bottom: 8),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        onChanged: onChanged,
        cursorColor: Colors.pinkAccent,
      ),
    );
  }
}
