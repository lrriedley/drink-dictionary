import 'package:flutter/material.dart';

class Drink {
  final String drinkName;
  final AssetImage drinkImage;
  final String category;
  final String? subcategory;
  final String? tertiary;
  final String? drinkDescription;
  final List? taste;
  final List? aroma;
  final List? finish;
  final List? instructions;

  Drink({
    required this.drinkName,
    required this.drinkImage,
    required this.category,
    this.subcategory,
    this.tertiary,
    this.drinkDescription,
    this.taste,
    this.aroma,
    this.finish,
    this.instructions,
  });
}

List<Drink> drinks = [
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Whiskey/Bourbon/Bulleit Bourbon.png'),
    drinkName: 'Bulleit Bourbon',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription:
        'Bourbon with a bold, spicy character with a finish that\'s clean and smooth.',
    aroma: [
      '🥜 Nutmeg',
      '🪵 Oak',
      '🍁 Maple', '🌽 Sweet Corn', '🪵 Oak', '🍯 Honey'
    ],
    taste: ['🪵 Oak', '🍁 Maple'],
    finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Whiskey/Bourbon/Blanton\'s.png'),
    drinkName: 'Blanton\'s',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription:
        'A renowned single barrel bourbon that boasts a palate of caramel, vanilla, honey, and a subtle hint of citrus, making it a cherished gem among bourbon enthusiasts.',
    aroma: ['🌽 Sweet Corn', '🪵 Oak', '🍯 Honey',],
    taste: ['🪵 Oak', '🍊 Citrus', '🍯 Honey',],
    finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
      drinkImage:
          const AssetImage('assets/Spirits/Whiskey/Bourbon/Buffalo Trace.png'),
      drinkName: 'Buffalo Trace',
      category: 'Spirits',
      subcategory: 'Whiskey',
      tertiary: 'Bourbon',
      drinkDescription:
          'A historic bourbon known for its rich and complex flavor profile. Buffalo Trace offers a delightful combination of caramel, toffee, and a touch of fruitiness.',
      aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🌿 Mint'],
      finish: ['🪵 Oak', '🍁 Maple'],
      ),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Whiskey/Bourbon/Woodford Reserve.png'),
    drinkName: 'Woodford Reserve',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription: 'A classic, well-balanced bourbon.',
    aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🌿 Mint'],
      finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
    drinkImage: const AssetImage('assets/Spirits/Whiskey/Bourbon/Jim Beam.png'),
    drinkName: 'Jim Beam',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription:
        'Classic American whiskey known for its smooth and mellow flavor with hints of caramel and vanilla.',aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🌿 Mint'],
      finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Whiskey/Bourbon/Knob Creek.png'),
    drinkName: 'Knob Creek',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription:
        'A full-bodied bourbon whiskey known for its rich, sweet, and robust flavor profile, featuring notes of caramel, toasted oak, and a long, warming finish. It\'s aged for a minimum of nine years, resulting in a deep and complex bourbon experience.',
  aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🌿 Mint'],
      finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Whiskey/Bourbon/Old Forester.png'),
    drinkName: 'Old Forester',
    category: 'Spirits',
    subcategory: 'Whiskey',
    tertiary: 'Bourbon',
    drinkDescription:
        'A historic bourbon brand renowned for its smooth and balanced flavor profile, marked by notes of caramel, vanilla, and a hint of spice, making it a classic choice for bourbon enthusiasts.',
  aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🌿 Mint'],
      finish: ['🪵 Oak', '🍁 Maple'],
  ),
  Drink(
      drinkImage: const AssetImage(
          'assets/Spirits/Whiskey/Irish Whiskey/Proper Twelve.png'),
      drinkName: 'Proper Twelve',
      category: 'Spirits',
      subcategory: 'Whiskey',
      tertiary: 'Irish Whiskey',
      drinkDescription:
          'Proper No. Twelve Irish Whiskey is a triple-distilled blend of fine grain and single malt that is bourbon-barrel-aged for 4 years.',
      aroma: ['🍊 Citrus', '🪵 Oak', '🍯 Honey'],
      taste: ['🍦 Vanilla', '🍯 Honey', '🌾 Barley', '🪵 Oak'],
      finish: ['🪵 Oak', '🍁 Maple'],
      ),
  Drink(
      drinkImage: const AssetImage(
          'assets/Spirits/Whiskey/Irish Whiskey/Tullamore D.E.W..png'),
      drinkName: 'Tullamore D.E.W.',
      category: 'Spirits',
      subcategory: 'Whiskey',
      tertiary: 'Irish Whiskey',
      drinkDescription:
          'Tullamore D.E.W. is an Irish whiskey that\'s a blend of three styles of whiskey: grain, malt, and pot still. The grain whiskey gives the blend a sweetness, the malt brings fruitiness, and the pot still gives it the iconic Irish whiskey spice.',
      taste: [
        '🌾 Barley',
        '🍇 Fruit',
      ]),
  Drink(
      drinkImage:
          const AssetImage('assets/Spirits/Brandy/Cognac/Hennessy XO.png'),
      drinkName: 'Hennessy XO',
      category: 'Spirits',
      subcategory: 'Brandy',
      tertiary: 'Cognac',
      drinkDescription:
          'Hennessy XO stands as an emblem of luxury within the world of cognac, crafted with exceptional care and skill. It exhibits a deep and radiant amber hue, a result of its prolonged aging process.',
      taste: [
        '🍇 Fruit',
        '🍫 Chocolate',
        '🪵 Oak',
      ]),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Tequila/Blanco/Casamigos Blanco.png'),
    drinkName: 'Casamigos Blanco',
    category: 'Spirits',
    subcategory: 'Tequila',
    tertiary: 'Blanco',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage(
        'assets/Spirits/Tequila/Blanco/Jose Cuervo Blanco.png'),
    drinkName: 'Jose Cuervo Blanco',
    category: 'Spirits',
    subcategory: 'Tequila',
    tertiary: 'Blanco',
    drinkDescription: '',
  ),
  Drink(
    drinkImage:
        const AssetImage('assets/Spirits/Tequila/Blanco/Patron Blanco.png'),
    drinkName: 'Patron Blanco',
    category: 'Spirits',
    subcategory: 'Tequila',
    tertiary: 'Blanco',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Brandy/Sazerac.png'),
    drinkName: 'Sazerac',
    category: 'Cocktails',
    subcategory: 'brandy',
    drinkDescription:
        'The Sazerac is a classic cocktail originating from New Orleans. This cocktail is renowned for its smooth, rich flavors, often featuring a hint of anise from the absinthe rinse and a touch of sweetness.',
    instructions: [
      'In a mixing glass, muddle the sugar cube, water and the Peychaud’s bitters.',
      'Add the brandy, fill the mixing glass with ice and stir 15­–20 seconds, until well-chilled.',
      'Strain into the prepared glass.',
      'Twist the lemon peel over the drink’s surface to express the peel’s oils, then garnish with the peel.'
    ],
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Brandy/Sidecar.png'),
    drinkName: 'Sidecar',
    category: 'Cocktails',
    subcategory: 'brandy',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Gin/French 75.png'),
    drinkName: 'French 75',
    category: 'Cocktails',
    subcategory: 'gin',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Gin/Gimlet.png'),
    drinkName: 'Gimlet',
    category: 'Cocktails',
    subcategory: 'gin',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Gin/Negroni.png'),
    drinkName: 'Negroni',
    category: 'Cocktails',
    subcategory: 'gin',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Bahama Mama.png'),
    drinkName: 'Bahama Mama',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Daiquiri.png'),
    drinkName: 'Daiquiri',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Dark n\' Stormy.png'),
    drinkName: 'Dark n\' Stormy',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Mai Tai.png'),
    drinkName: 'Mai Tai',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Mojito.png'),
    drinkName: 'Mojito',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Painkiller.png'),
    drinkName: 'Painkiller',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Rum/Pina Colada.png'),
    drinkName: 'Pina Colada',
    category: 'Cocktails',
    subcategory: 'rum',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Tequila/Margarita.png'),
    drinkName: 'Margarita',
    category: 'Cocktails',
    subcategory: 'tequila',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Tequila/Paloma.png'),
    drinkName: 'Paloma',
    category: 'Cocktails',
    subcategory: 'tequila',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage:
        const AssetImage('assets/Cocktails/Tequila/Tequila Sunrise.png'),
    drinkName: 'Tequila Sunrise',
    category: 'Cocktails',
    subcategory: 'tequila',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Untitled design.png'),
    drinkName: 'Tito\'s and Soda',
    category: 'Cocktails',
    subcategory: 'vodka',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Wine/Americano.png'),
    drinkName: 'Americano',
    category: 'Cocktails',
    subcategory: 'wine',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Wine/Bellini.png'),
    drinkName: 'Bellini',
    category: 'Cocktails',
    subcategory: 'wine',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkImage: const AssetImage('assets/Cocktails/Wine/Mimosa.png'),
    drinkName: 'Mimosa',
    category: 'Cocktails',
    subcategory: 'wine',
    tertiary: '',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Bud Light',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Bud Light.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Budweiser',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Budweiser.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Coors Light',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Coors Light.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Dos Equis',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Dos Equis.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Heineken',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Heineken.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Corona',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Corona.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Stella Artois',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Stella Artois.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Michelob Ultra',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Michelob Ultra.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Modelo',
    drinkImage: const AssetImage('assets/Beer/Lager/Bottle/Modelo.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Pabst Blue Ribbon',
    drinkImage:
        const AssetImage('assets/Beer/Lager/Bottle/Pabst Blue Ribbon.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Bud Light',
    drinkImage: const AssetImage('assets/Beer/Lager/Can/Bud Light.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Can',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Pabst Blue Ribbon',
    drinkImage: const AssetImage('assets/Beer/Lager/Can/Pabst Blue Ribbon.png'),
    category: 'Beer',
    subcategory: 'Lager',
    tertiary: 'Can',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Blue Moon',
    drinkImage: const AssetImage('assets/Beer/Ale/Bottle/Blue Moon.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Guinness',
    drinkImage: const AssetImage('assets/Beer/Ale/Bottle/Guinness.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Fat Tire',
    drinkImage: const AssetImage('assets/Beer/Ale/Bottle/Fat Tire.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Kona Big Wave',
    drinkImage: const AssetImage('assets/Beer/Ale/Bottle/Kona Big Wave.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Sierra Nevada Pale Ale',
    drinkImage:
        const AssetImage('assets/Beer/Ale/Bottle/Sierra Nevada Pale Ale.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Bottle',
    drinkDescription: '',
  ),
  Drink(
    drinkName: 'Guinness',
    drinkImage: const AssetImage('assets/Beer/Ale/Can/Guinness.png'),
    category: 'Beer',
    subcategory: 'Ale',
    tertiary: 'Can',
    drinkDescription: '',
  ),
];
