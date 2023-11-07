import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:drink_dictionary/drinks.dart';
import 'package:drink_dictionary/components/drink_list.dart';

class AZItem extends ISuspensionBean {
  final String title;
  final String tag;
  final String category;

  AZItem({
    required this.title,
    required this.tag,
    required this.category,
  });
  @override
  String getSuspensionTag() => tag;
}

class AlphabetScrollWidget extends StatefulWidget {
  final List<Drink> items; // Define the 'items' property here

  const AlphabetScrollWidget({Key? key, required this.items}) : super(key: key);

  @override
  AlphabetScrollWidgetState createState() => AlphabetScrollWidgetState();
}

class AlphabetScrollWidgetState extends State<AlphabetScrollWidget> {
  late List<AZItem> azItems = [];

  @override
  void initState() {
    super.initState();
    initList(widget.items);
  }

  void initList(List<Drink> drinks) {
    azItems = drinks
        .map((drink) => AZItem(title: drink.drinkName, tag: drink.drinkName[0], category: drink.drinkName))
        .toList();
  }

  Widget buildList(Drink drink) {
    return DrinkList(
      drinkImage: drink.drinkImage,
      drinkName: drink.drinkName,
      category: drink.category,
      drinkDescription: drink.drinkDescription,
      aroma: drink.aroma,
      taste: drink.taste,
      finish: drink.finish,
      instructions: drink.instructions,
    );
  }

  void updateAlphabetList(String query) {
    final suggestions = widget.items.where((drink) {
      final name = drink.drinkName.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();

    setState(() {
      azItems = suggestions
          .map((drink) => AZItem(title: drink.drinkName, tag: drink.drinkName[0], category: drink.drinkName))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AzListView(
      padding: const EdgeInsets.all(16),
      data: azItems,
      itemCount: azItems.length,
      hapticFeedback: true,
      itemBuilder: (context, index) {
        final drink = widget.items.firstWhere((item) => item.drinkName == azItems[index].title);
        return buildList(drink);
      },
    );
  }
}
