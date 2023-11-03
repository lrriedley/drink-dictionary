import 'package:flutter/material.dart';

Widget drinkHashtag(item) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
    child: Container(
      padding: const EdgeInsets.all(
          1), // This padding determines the thickness of the gradient "border".
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 255, 0, 234),
            const Color.fromARGB(255, 21, 172, 248).withOpacity(0.6)
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 31, 31),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 1, 10, 5),
          child: Text(
            item.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    ),
  );
}
