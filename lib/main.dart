import 'package:drink_dictionary/screens/category_screen.dart';
import 'package:drink_dictionary/screens/splash_screen.dart';
import 'package:drink_dictionary/screens/subcategory_screen.dart';
import 'package:drink_dictionary/screens/drink_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return const AuthScreen();
        },
      ),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        AuthScreen.id: (context) => const AuthScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case CategoryScreen.id:
            final String category = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => CategoryScreen(category: category),
            );

          case SubcategoryScreen.id:
            final String subcategory = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => SubcategoryScreen(subcategory: subcategory),
            );

          case DrinkScreen.id:
            final Map<String, dynamic> drinks =
                settings.arguments as Map<String, dynamic>;
            final String drinkName = drinks['name'];
            final AssetImage drinkImage = drinks['image'];
            final String drinkDescription = drinks['description'];
            final String category = drinks['category'];

            return MaterialPageRoute(
              builder: (context) => DrinkScreen(
                  drinkName: drinkName,
                  drinkImage: drinkImage,
                  category: category,
                  drinkDescription: drinkDescription),
            );

          default:
            return null;
        }
      },
    );
  }
}
