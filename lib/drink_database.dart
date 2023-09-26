import 'package:flutter/material.dart';

Map<String, List<String>> category = {
  'categoryName': ['Spirits', 'Cocktails', 'Beer', 'Wine', 'Seltzers']
};

Map<String, List<Map<String, dynamic>>> categoryToSubcategories = {
  'Spirits': [
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Whiskey.png'),
      'subcategoryName': 'Whiskey'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila Page.png'),
      'subcategoryName': 'Tequila'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Vodka.png'),
      'subcategoryName': 'Vodka'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Brandy.png'),
      'subcategoryName': 'Brandy'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Gin.png'),
      'subcategoryName': 'Gin'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Rum.png'),
      'subcategoryName': 'Rum'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Liqueur.png'),
      'subcategoryName': 'Liqueur'
    },
  ],
  'Cocktails': [
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Whiskey Cocktails.png'),
      'subcategoryName': 'Whiskey'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Brandy Cocktails.png'),
      'subcategoryName': 'Brandy'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Tequila Cocktails.png'),
      'subcategoryName': 'Tequila'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Vodka Cocktails.png'),
      'subcategoryName': 'Vodka'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Gin Cocktails.png'),
      'subcategoryName': 'Gin'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Rum Cocktails.png'),
      'subcategoryName': 'Rum'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Liqueur Cocktails.png'),
      'subcategoryName': 'Liqueur'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Wine Cocktails.png'),
      'subcategoryName': 'Wine'
    },],
    'Beer': [
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Beer/Lager.png'),
      'subcategoryName': 'Lager'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Beer/Ale.png'),
      'subcategoryName': 'Ale'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Beer/Cider.png'),
      'subcategoryName': 'Cider'
    },
  ],
    'Wine': [
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/RedWine.png'),
      'subcategoryName': 'Red Wine'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/WhiteWine.png'),
      'subcategoryName': 'White Wine'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/SparklingWine.png'),
      'subcategoryName': 'Sparkling Wine'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Rose.png'),
      'subcategoryName': 'Rose'
    },
  ],
  // ... (other categories)
};

List<Map<String, dynamic>> drinks = [
  {
    'drinkImage': const AssetImage('assets/Untitled design (5).png'),
    'drinkName': 'Red Bull',
    'drinkDescription': 'Keep going all night with lasting kick of energy',
  },
  {
    'drinkImage': const AssetImage('assets/Untitled design.png'),
    'drinkName': 'Tito\'s and Soda',
    'drinkDescription': 'Tito\'s Vodka, Soda, Lime',
  },
];

List<Map<String, dynamic>> spirits = [
  {
    'drinkImage':
        const AssetImage('assets/Whiskey/Bourbon/Bulleit Bourbon.png'),
    'drinkName': 'Bulleit Bourbon',
    'drinkDescription':
        'Bourbon with a bold, spicy character with a finish that\'s clean and smooth.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage': const AssetImage('assets/Whiskey/Bourbon/Blanton\'s.png'),
    'drinkName': 'Blanton\'s',
    'drinkDescription':
        'A sweet, well-balanced single barrel bourbon with notes of citrus and oak.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage': const AssetImage('assets/Whiskey/Bourbon/Buffalo Trace.png'),
    'drinkName': 'Buffalo Trace',
    'drinkDescription':
        'A historic bourbon known for its rich and complex flavor profile. Buffalo Trace offers a delightful combination of caramel, toffee, and a touch of fruitiness.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage':
        const AssetImage('assets/Whiskey/Bourbon/Woodford Reserve.png'),
    'drinkName': 'Woodford Reserve',
    'drinkDescription': 'A classic, well-balanced bourbon.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage': const AssetImage('assets/Whiskey/Bourbon/Jim Beam.png'),
    'drinkName': 'Jim Beam',
    'drinkDescription':
        'Classic American whiskey known for its smooth and mellow flavor with hints of caramel and vanilla.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage': const AssetImage('assets/Whiskey/Bourbon/Knob Creek.png'),
    'drinkName': 'Knob Creek',
    'drinkDescription':
        'A full-bodied bourbon whiskey known for its rich, sweet, and robust flavor profile, featuring notes of caramel, toasted oak, and a long, warming finish. It\'s aged for a minimum of nine years, resulting in a deep and complex bourbon experience.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage': const AssetImage('assets/Whiskey/Bourbon/Old Forester.png'),
    'drinkName': 'Old Forester',
    'drinkDescription':
        'A historic bourbon brand renowned for its smooth and balanced flavor profile, marked by notes of caramel, vanilla, and a hint of spice, making it a classic choice for bourbon enthusiasts.',
    'SubcategoryName': 'Bourbon'
  },
  {
    'drinkImage':
        const AssetImage('assets/Whiskey/Irish Whiskey/Proper Twelve.png'),
    'drinkName': 'Proper Twelve',
    'drinkDescription': '',
    'SubcategoryName': 'Irish Whiskey',
  },
  {
    'drinkImage':
        const AssetImage('assets/Whiskey/Irish Whiskey/Tullamore D.E.W..png'),
    'drinkName': 'Tullamore D.E.W.',
    'drinkDescription': '',
    'SubcategoryName': 'Irish Whiskey',
  },
];
