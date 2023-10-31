import 'package:flutter/material.dart';

Map<String, List<Map<String, dynamic>>> category = {
  'Spirits': [
    {
      'categoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Spirits.png')
    }
  ],
  'Cocktails': [
    {
      'categoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Cocktails.png')
    }
  ],
  'Beer': [
    {
      'categoryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer.png')
    }
  ],
  'Wine': [
    {
      'categoryImage':
          const AssetImage('assets/Drink Category Photos/Wine/Wine.png')
    }
  ],
  'Seltzers': [
    {
      'categoryImage':
          const AssetImage('assets/Drink Category Photos/Seltzer/Seltzers.png')
    }
  ],
};

Map<String, List<Map<String, dynamic>>> categoryToSubcategories = {
  'Spirits': [
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Whiskey.png'),
      'subcategoryName': 'Whiskey'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Tequila.png'),
      'subcategoryName': 'Tequila'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Vodka.png'),
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
      'subcategoryName': 'whiskey'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Brandy Cocktails.png'),
      'subcategoryName': 'brandy'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Tequila Cocktails.png'),
      'subcategoryName': 'tequila'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Cocktails/Vodka Cocktails.png'),
      'subcategoryName': 'vodka'
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
    },
  ],
  'Beer': [
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Lager.png'),
      'subcategoryName': 'Lager'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Ale.png'),
      'subcategoryName': 'Ale'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Cider.png'),
      'subcategoryName': 'Cider'
    },
  ],
  'Wine': [
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Wine/Red Wine.png'),
      'subcategoryName': 'Red Wine'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Wine/White Wine.png'),
      'subcategoryName': 'White Wine'
    },
    {
      'subcategoryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Sparkling Wine.png'),
      'subcategoryName': 'Sparkling Wine'
    },
    {
      'subcategoryImage':
          const AssetImage('assets/Drink Category Photos/Wine/Rose.png'),
      'subcategoryName': 'Rose'
    },
  ],
  // ... (other categories)
};

Map<String, List<Map<String, dynamic>>> subcategoryToTertiary = {
  'Whiskey': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Bourbon.png'),
      'tertiaryName': 'Bourbon'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Irish Whiskey.png'),
      'tertiaryName': 'Irish Whiskey'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Scotch.png'),
      'tertiaryName': 'Scotch'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Tennessee Whiskey.png'),
      'tertiaryName': 'Tennesse Whiskey'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Japanese Whiskey.png'),
      'tertiaryName': 'Japanese Whiskey'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Rye Whiskey.png'),
      'tertiaryName': 'Rye Whiskey'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Whiskey/Canadian Whisky.png'),
      'tertiaryName': 'Canadian Whiskey'
    },
  ],
  'Brandy': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Brandy/Cognac.png'),
      'tertiaryName': 'Cognac'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Brandy/Armagnac.png'),
      'tertiaryName': 'Armagnac'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Brandy/Grappa.png'),
      'tertiaryName': 'Grappa'
    },
  ],
  'Tequila': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila/Blanco.png'),
      'tertiaryName': 'Blanco'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila/Gold.png'),
      'tertiaryName': 'Gold'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila/Reposado.png'),
      'tertiaryName': 'Reposado'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila/Anejo.png'),
      'tertiaryName': 'Anejo'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Tequila/Mezcal.png'),
      'tertiaryName': 'Mezcal'
    },
  ],
  'Rum': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Spirits/Rum/Light.png'),
      'tertiaryName': 'Light'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Spirits/Rum/Dark.png'),
      'tertiaryName': 'Dark'
    },
  ],
  'Red Wine': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Cabernet Sauvignon.png'),
      'tertiaryName': 'Cabernet Sauvignon'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Pinot Noir.png'),
      'tertiaryName': 'Pinot Noir'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Zinfandel.png'),
      'tertiaryName': 'Zinfandel'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Merlot.png'),
      'tertiaryName': 'Merlot'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Malbec.png'),
      'tertiaryName': 'Malbec'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/Red Wine/Red Blends.png'),
      'tertiaryName': 'Red Blends'
    },
  ],
  'White Wine': [
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/White Wine/Chardonnay.png'),
      'tertiaryName': 'Chardonnay'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/White Wine/Pinot Grigio.png'),
      'tertiaryName': 'Pinot Grigio'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/White Wine/Sauvignon Blanc.png'),
      'tertiaryName': 'Sauvignon Blanc'
    },
    {
      'tertiaryImage': const AssetImage(
          'assets/Drink Category Photos/Wine/White Wine/Riesling.png'),
      'tertiaryName': 'Riesling'
    },
  ],
  'Lager': [
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Draft.png'),
      'tertiaryName': 'Draft'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Bottle.png'),
      'tertiaryName': 'Bottle'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Can.png'),
      'tertiaryName': 'Can'
    },
  ],
  'Ale': [
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Draft.png'),
      'tertiaryName': 'Draft'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Bottle.png'),
      'tertiaryName': 'Bottle'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Can.png'),
      'tertiaryName': 'Can'
    },
  ],
  'Cider': [
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Draft.png'),
      'tertiaryName': 'Draft'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Bottle.png'),
      'tertiaryName': 'Bottle'
    },
    {
      'tertiaryImage':
          const AssetImage('assets/Drink Category Photos/Beer/Beer/Can.png'),
      'tertiaryName': 'Can'
    },
  ],
  // ... (other categories)
};

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

Map<String, dynamic> drinkData = {
  'Spirits': {
    'Whiskey': {
      'Bourbon': [
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Bourbon/Bulleit Bourbon.png'),
          'drinkName': 'Bulleit Bourbon',
          'drinkDescription':
              'Bourbon with a bold, spicy character with a finish that\'s clean and smooth.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Caramelized tones, hints of oak, smooth finish',
        },
        {
          'drinkImage':
              const AssetImage('assets/Spirits/Whiskey/Bourbon/Blanton\'s.png'),
          'drinkName': 'Blanton\'s',
          'drinkDescription':
              'A sweet, well-balanced single barrel bourbon with notes of citrus and oak.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Bourbon/Buffalo Trace.png'),
          'drinkName': 'Buffalo Trace',
          'drinkDescription':
              'A historic bourbon known for its rich and complex flavor profile. Buffalo Trace offers a delightful combination of caramel, toffee, and a touch of fruitiness.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Bourbon/Woodford Reserve.png'),
          'drinkName': 'Woodford Reserve',
          'drinkDescription': 'A classic, well-balanced bourbon.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage':
              const AssetImage('assets/Spirits/Whiskey/Bourbon/Jim Beam.png'),
          'drinkName': 'Jim Beam',
          'drinkDescription':
              'Classic American whiskey known for its smooth and mellow flavor with hints of caramel and vanilla.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage':
              const AssetImage('assets/Spirits/Whiskey/Bourbon/Knob Creek.png'),
          'drinkName': 'Knob Creek',
          'drinkDescription':
              'A full-bodied bourbon whiskey known for its rich, sweet, and robust flavor profile, featuring notes of caramel, toasted oak, and a long, warming finish. It\'s aged for a minimum of nine years, resulting in a deep and complex bourbon experience.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Bourbon/Old Forester.png'),
          'drinkName': 'Old Forester',
          'drinkDescription':
              'A historic bourbon brand renowned for its smooth and balanced flavor profile, marked by notes of caramel, vanilla, and a hint of spice, making it a classic choice for bourbon enthusiasts.',
          'SubcategoryName': 'Bourbon',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
      ],
      'Irish Whiskey': [
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Irish Whiskey/Proper Twelve.png'),
          'drinkName': 'Proper Twelve',
          'drinkDescription': '',
          'SubcategoryName': 'Irish Whiskey',
          'tastingNotes': 'Vanilla undertones, earthy, touch of spice',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Whiskey/Irish Whiskey/Tullamore D.E.W..png'),
          'drinkName': 'Tullamore D.E.W.',
          'drinkDescription': '',
          'SubcategoryName': 'Irish Whiskey',
        },
      ],
      // ... Continue for other whiskey types
    },
    'Brandy': {
      'Cognac': [
        {
          'drinkImage':
              const AssetImage('assets/Spirits/Brandy/Cognac/Hennessy XO.png'),
          'drinkName': 'Hennessy XO',
          'drinkDescription': 'Elegant French Cognac',
          'tastingNotes': 'Woody aroma, hints of citrus, velvety texture',
        },
      ],
      // ... Continue for other brandy types
    },
    'Tequila': {
      'Blanco': [
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Tequila/Blanco/Casamigos Blanco.png'),
          'drinkName': 'Casamigos Blanco',
          'drinkDescription': 'Pure Agave Experience',
          'tastingNotes': 'Crisp, slightly peppery, clean finish',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Tequila/Blanco/Jose Cuervo Blanco.png'),
          'drinkName': 'Jose Cuervo Blanco',
          'drinkDescription': 'Pure Agave Experience',
          'tastingNotes': 'Crisp, slightly peppery, clean finish',
        },
        {
          'drinkImage': const AssetImage(
              'assets/Spirits/Tequila/Blanco/Patron Blanco.png'),
          'drinkName': 'Patron Blanco',
          'drinkDescription': 'Pure Agave Experience',
          'tastingNotes': 'Crisp, slightly peppery, clean finish',
        },
      ],
      // ... Continue for other tequila types
    },
    // ... Continue for other spirits like Vodka, Gin, etc.
  },
  'Cocktails': {
    // 'Whiskey': {},
    'Brandy': [
      {
        'drinkImage': const AssetImage('assets/Cocktails/Brandy/Sazerac.png'),
        'drinkName': 'Sazerac',
        'drinkDescription': 'Tito\'s Vodka, Soda, Lime',
        'drinkInstructions': 'Fill cup with ice, Add vodka, Top with soda'
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Brandy/Sidecar.png'),
        'drinkName': 'Sidecar',
        'drinkDescription': 'Tito\'s Vodka, Soda, Lime',
        'drinkInstructions': 'Fill cup with ice, Add vodka, Top with soda'
      },
    ],
    'Gin': [
      {
        'drinkImage': const AssetImage('assets/Cocktails/Gin/French 75.png'),
        'drinkName': 'French 75',
        'drinkDescription': 'Tito\'s Vodka, Soda, Lime',
        'drinkInstructions': 'Fill cup with ice, Add vodka, Top with soda'
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Gin/Gimlet.png'),
        'drinkName': 'Gimlet',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Gin/Negroni.png'),
        'drinkName': 'Negroni',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
    ],
    'Rum': [
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Bahama Mama.png'),
        'drinkName': 'Bahama Mama',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Daiquiri.png'),
        'drinkName': 'Daiquiri',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage':
            const AssetImage('assets/Cocktails/Rum/Dark n\' Stormy.png'),
        'drinkName': 'Dark n\' Stormy',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Mai Tai.png'),
        'drinkName': 'Mai Tai',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Mojito.png'),
        'drinkName': 'Mojito',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Painkiller.png'),
        'drinkName': 'Painkiller',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Rum/Pina Colada.png'),
        'drinkName': 'Pina Colada',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
    ],
    'Tequila': [
      {
        'drinkImage':
            const AssetImage('assets/Cocktails/Tequila/Margarita.png'),
        'drinkName': 'Margarita',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Tequila/Paloma.png'),
        'drinkName': 'Paloma',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage':
            const AssetImage('assets/Cocktails/Tequila/Tequila Sunrise.png'),
        'drinkName': 'Tequila Sunrise',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
    ],
    'Vodka': [
      {
        'drinkImage': const AssetImage('assets/Untitled design.png'),
        'drinkName': 'Tito\'s and Soda',
        'drinkDescription': 'Tito\'s Vodka, Soda, Lime',
        'drinkInstructions': 'Fill cup with ice, Add vodka, Top with soda'
      },
    ],
    'Wine': [
      {
        'drinkImage': const AssetImage('assets/Cocktails/Wine/Americano.png'),
        'drinkName': 'Americano',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Wine/Bellini.png'),
        'drinkName': 'Bellini',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
      {
        'drinkImage': const AssetImage('assets/Cocktails/Wine/Mimosa.png'),
        'drinkName': 'Mimosa',
        'drinkDescription': '',
        'drinkInstructions': ''
      },
    ]
  },
  'Beer': {
    'Lager': {
      'Draft': [
        {},
      ],
      'Bottle': [
        {
          'drinkName': 'Bud Light',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Bud Light.png'),
        },
        {
          'drinkName': 'Budweiser',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Budweiser.png'),
        },
        {
          'drinkName': 'Coors Light',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Coors Light.png'),
        },
        {
          'drinkName': 'Dos Equis',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Dos Equis.png'),
        },
        {
          'drinkName': 'Heineken',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Heineken.png'),
        },
        {
          'drinkName': 'Corona',
          'drinkImage': const AssetImage('assets/Beer/Lager/Bottle/Corona.png'),
        },
        {
          'drinkName': 'Stella Artois',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Stella Artois.png'),
        },
        {
          'drinkName': 'Michelob Ultra',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Bottle/Michelob Ultra.png'),
        },
        {
          'drinkName': 'Modelo',
          'drinkImage': const AssetImage('assets/Beer/Lager/Bottle/Modelo.png'),
        },
        {
          'drinkName': 'Pabst Blue Ribbon',
          'drinkImage': const AssetImage(
              'assets/Beer/Lager/Bottle/Pabst Blue Ribbon.png'),
        }
      ],
      'Can': [
        {
          'drinkName': 'Bud Light',
          'drinkImage': const AssetImage('assets/Beer/Lager/Can/Bud Light.png'),
        },
        {
          'drinkName': 'Pabst Blue Ribbon',
          'drinkImage':
              const AssetImage('assets/Beer/Lager/Can/Pabst Blue Ribbon.png'),
        }
      ],
      'Ale': {
        'Draft': [
          {},
        ],
        'Bottle': [
          {
            'drinkName': 'Blue Moon',
            'drinkImage':
                const AssetImage('assets/Beer/Ale/Bottle/Blue Moon.png'),
          },
          {
            'drinkName': 'Guinness',
            'drinkImage':
                const AssetImage('assets/Beer/Ale/Bottle/Guinness.png'),
          },
          {
            'drinkName': 'Fat Tire',
            'drinkImage':
                const AssetImage('assets/Beer/Ale/Bottle/Fat Tire.png'),
          },
          {
            'drinkName': 'Kona Big Wave',
            'drinkImage':
                const AssetImage('assets/Beer/Ale/Bottle/Kona Big Wave.png'),
          },
          {
            'drinkName': 'Sierra Nevada Pale Ale',
            'drinkImage': const AssetImage(
                'assets/Beer/Ale/Bottle/Sierra Nevada Pale Ale.png'),
          },
        ],
        'Can': [
          {
            'drinkName': 'Guinness',
            'drinkImage': const AssetImage('assets/Beer/Ale/Can/Guinness.png'),
          },
        ]
      },
      'Cider': {
        'Draft': [{}],
        'Bottle': [{}],
        'Can': [{}],
      },
    },
  },
  'Wine': {}
  // ... Continue with other categories like Cocktails, Beer, etc.
};
