import 'package:flutter/material.dart';

class NewDrinkCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440,
          height: 503,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 440,
                  height: 278,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 440,
                          height: 278,
                          decoration: ShapeDecoration(
                            color: Color(0xFF00C3FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 440,
                          height: 278,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/440x278"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 227,
                child: Container(
                  width: 440,
                  height: 276,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 112,
                        top: 210,
                        child: Container(
                          width: 216,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 216,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [Colors.black.withOpacity(0)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0xCC2A3353),
                                        blurRadius: 20,
                                        offset: Offset(0, 14),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 14,
                                child: Text(
                                  'Buy Now on Night District',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w800,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 20,
                        child: Text(
                          'Radiant Cosmo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 77,
                        child: Text(
                          'Vodka, Blood Orange, Cranberry, Lime ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 61,
                        child: Container(
                          width: 356,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 291.01,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFF602EA6),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 356,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFFF9F8F7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 115,
                        child: SizedBox(
                          width: 356,
                          height: 79,
                          child: Text(
                            'Bask in the ethereal glow of the Radiant Cosmo. This twist on the classic cosmopolitan cocktail dazzles with the delicate pink hue of Cointreau Blood Orange paired with the tang of cranberry and lime. With a hint of sweetness to balance the tartness, this drink elegantly elevates any evening to a radiant affair.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 362.56,
                top: 193,
                child: Container(
                  width: 58.89,
                  height: 68,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.44,
                        top: 16,
                        child: SizedBox(
                          width: 56,
                          child: Text(
                            '4.9',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
