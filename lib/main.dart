import 'package:drink_dictionary/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, Key? newKey});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == CategoryScreen.id) {
          final String category = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => CategoryScreen(category: category),
          );
        }
        // handle other dynamic routes or return null if route not found
        return null;
      },
    );
  }
}
