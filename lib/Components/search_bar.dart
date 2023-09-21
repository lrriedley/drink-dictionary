import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NightSearchBar extends StatelessWidget {
  NightSearchBar({super.key, required this.searchText});

  String searchText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40.0,
        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: searchText,
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
