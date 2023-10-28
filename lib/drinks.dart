import 'package:flutter/material.dart';

class Drink {
  final String drinkName;
  final AssetImage drinkImage;

  const Drink({
    required this.drinkName,
    required this.drinkImage,
  });
}

var drinks = [
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Whiskey/Bourbon/Bulleit Bourbon.png'),
    drinkName: 'Bulleit Bourbon',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Whiskey/Bourbon/Blanton\'s.png'),
    drinkName: 'Blanton\'s',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Whiskey/Bourbon/Buffalo Trace.png'),
    drinkName: 'Buffalo Trace',
  ),
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Whiskey/Bourbon/Woodford Reserve.png'),
    drinkName: 'Woodford Reserve',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Whiskey/Bourbon/Jim Beam.png'),
    drinkName: 'Jim Beam',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Whiskey/Bourbon/Knob Creek.png'),
    drinkName: 'Knob Creek',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Whiskey/Bourbon/Old Forester.png'),
    drinkName: 'Old Forester',
  ),
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Whiskey/Irish Whiskey/Proper Twelve.png'),
    drinkName: 'Proper Twelve',
  ),
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Whiskey/Irish Whiskey/Tullamore D.E.W..png'),
    drinkName: 'Tullamore D.E.W.',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Brandy/Cognac/Hennessy XO.png'),
    drinkName: 'Hennessy XO',
  ),
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Tequila/Blanco/Casamigos Blanco.png'),
    drinkName: 'Casamigos Blanco',
  ),
  Drink(
    drinkImage:
        AssetImage('assets/Spirits/Tequila/Blanco/Jose Cuervo Blanco.png'),
    drinkName: 'Jose Cuervo Blanco',
  ),
  Drink(
    drinkImage: AssetImage('assets/Spirits/Tequila/Blanco/Patron Blanco.png'),
    drinkName: 'Patron Blanco',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Brandy/Sazerac.png'),
    drinkName: 'Sazerac',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Brandy/Sidecar.png'),
    drinkName: 'Sidecar',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Gin/French 75.png'),
    drinkName: 'French 75',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Gin/Gimlet.png'),
    drinkName: 'Gimlet',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Gin/Negroni.png'),
    drinkName: 'Negroni',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Bahama Mama.png'),
    drinkName: 'Bahama Mama',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Daiquiri.png'),
    drinkName: 'Daiquiri',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Dark n\' Stormy.png'),
    drinkName: 'Dark n\' Stormy',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Mai Tai.png'),
    drinkName: 'Mai Tai',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Mojito.png'),
    drinkName: 'Mojito',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Painkiller.png'),
    drinkName: 'Painkiller',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Rum/Pina Colada.png'),
    drinkName: 'Pina Colada',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Tequila/Margarita.png'),
    drinkName: 'Margarita',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Tequila/Paloma.png'),
    drinkName: 'Paloma',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Tequila/Tequila Sunrise.png'),
    drinkName: 'Tequila Sunrise',
  ),
  Drink(
    drinkImage: AssetImage('assets/Untitled design.png'),
    drinkName: 'Tito\'s and Soda',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Wine/Americano.png'),
    drinkName: 'Americano',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Wine/Bellini.png'),
    drinkName: 'Bellini',
  ),
  Drink(
    drinkImage: AssetImage('assets/Cocktails/Wine/Mimosa.png'),
    drinkName: 'Mimosa',
  ),
  Drink(
    drinkName: 'Bud Light',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Bud Light.png'),
  ),
  Drink(
    drinkName: 'Budweiser',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Budweiser.png'),
  ),
  Drink(
    drinkName: 'Coors Light',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Coors Light.png'),
  ),
  Drink(
    drinkName: 'Dos Equis',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Dos Equis.png'),
  ),
  Drink(
    drinkName: 'Heineken',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Heineken.png'),
  ),
  Drink(
    drinkName: 'Corona',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Corona.png'),
  ),
  Drink(
    drinkName: 'Stella Artois',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Stella Artois.png'),
  ),
  Drink(
    drinkName: 'Michelob Ultra',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Michelob Ultra.png'),
  ),
  Drink(
    drinkName: 'Modelo',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Modelo.png'),
  ),
  Drink(
    drinkName: 'Pabst Blue Ribbon',
    drinkImage: AssetImage('assets/Beer/Lager/Bottle/Pabst Blue Ribbon.png'),
  ),
  Drink(
    drinkName: 'Bud Light',
    drinkImage: AssetImage('assets/Beer/Lager/Can/Bud Light.png'),
  ),
  Drink(
    drinkName: 'Pabst Blue Ribbon',
    drinkImage: AssetImage('assets/Beer/Lager/Can/Pabst Blue Ribbon.png'),
  ),
  Drink(
    drinkName: 'Blue Moon',
    drinkImage: AssetImage('assets/Beer/Ale/Bottle/Blue Moon.png'),
  ),
  Drink(
    drinkName: 'Guinness',
    drinkImage: AssetImage('assets/Beer/Ale/Bottle/Guinness.png'),
  ),
  Drink(
    drinkName: 'Fat Tire',
    drinkImage: AssetImage('assets/Beer/Ale/Bottle/Fat Tire.png'),
  ),
  Drink(
    drinkName: 'Kona Big Wave',
    drinkImage: AssetImage('assets/Beer/Ale/Bottle/Kona Big Wave.png'),
  ),
  Drink(
    drinkName: 'Sierra Nevada Pale Ale',
    drinkImage: AssetImage('assets/Beer/Ale/Bottle/Sierra Nevada Pale Ale.png'),
  ),
  Drink(
    drinkName: 'Guinness',
    drinkImage: AssetImage('assets/Beer/Ale/Can/Guinness.png'),
  ),
];
