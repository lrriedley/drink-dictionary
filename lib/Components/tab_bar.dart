import 'package:flutter/material.dart';
import 'package:drink_dictionary/screens/home_screen.dart';

class NewTabBar extends StatelessWidget {
  const NewTabBar({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 255, 0, 225),
              width: .25,
            ),
        ),),
        child: const BottomTabBar(),
      ),
    );
  }
}

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.add_circle_rounded, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.home_filled, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
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
    );
  }
}
