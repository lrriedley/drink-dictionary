import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drink_dictionary/drink_database.dart';
import 'Components/category_button.dart';
import 'Components/drink_card.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  @override
  final Color color1 = const Color(0xFF16191B);
  final Color color2 = const Color(0xFF283337);
  final Color color3 = const Color(0xFF16191B);
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
              'DRINK DICTIONARY',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32, // text size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40.0, // specify the height to make it smaller
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color1, color2, color3],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for your favorite cocktail',
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                        color1: color1,
                        color2: color2,
                        color3: color3,
                        categoryName: 'Spirits',
                      ),
                      CategoryButton(
                        color1: color1,
                        color2: color2,
                        color3: color3,
                        categoryName: 'Cocktails',
                      ),
                      CategoryButton(
                          color1: color1,
                          color2: color2,
                          color3: color3,
                          categoryName: 'Beer'),
                      CategoryButton(
                          color1: color1,
                          color2: color2,
                          color3: color3,
                          categoryName: 'Wine'),
                      CategoryButton(
                          color1: color1,
                          color2: color2,
                          color3: color3,
                          categoryName: 'Seltzer'),
                      CategoryButton(
                          color1: color1,
                          color2: color2,
                          color3: color3,
                          categoryName: 'Mixers'),
                      CategoryButton(
                          color1: color1,
                          color2: color2,
                          color3: color3,
                          categoryName: 'Other')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                  child: Text(
                    'Trending',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var drink in drinks)
                        DrinkCard(
                          drinkImage: drink['drinkImage'],
                          drinkName: drink['drinkName'],
                          drinkDescription: drink['drinkDescription'],
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, .5, .5, .5),
                  child: Text(
                    'Bourbon',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var bourbonDrink in bourbon)
                        DrinkCard(
                          drinkImage: bourbonDrink['drinkImage'],
                          drinkName: bourbonDrink['drinkName'],
                          drinkDescription: bourbonDrink['drinkDescription'],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              height: 80, // Set this height as per your requirement
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [color1, color2, color3],
                ),
              ),
              child: BottomAppBar(
                color: Colors.transparent,
                child: SizedBox(
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.add_circle_rounded,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.home_filled, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.local_bar, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.white),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
