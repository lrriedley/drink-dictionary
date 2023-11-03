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
              color: Color.fromARGB(255, 255, 0, 225),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 0, 225),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 0, 225),
            ),
          ),
          hintText: searchText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 13,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 8, bottom: 8),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.clear,
              color: Colors.black,
            ),
            onPressed: () {
             
            },
          ),
        ),
        onChanged: onChanged,
        cursorColor: const Color.fromARGB(255, 255, 0, 225),
      ),
    );
  }
}
