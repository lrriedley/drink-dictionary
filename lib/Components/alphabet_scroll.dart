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
  final List<Drink> items;

  const AlphabetScrollWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<AlphabetScrollWidget> createState() => _AlphabetScrollWidgetState();
}

class _AlphabetScrollWidgetState extends State<AlphabetScrollWidget> {
  late List<AZItem> items = [];

  @override
  void initState() {
    super.initState();
    initList(widget.items);
  }

  void initList(List<Drink> drinks) {
    items = drinks
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

  @override
  Widget build(BuildContext context) {
    return AzListView(
      
        padding: const EdgeInsets.all(16),
        data: items,
        itemCount: items.length,
        hapticFeedback: true,
        itemBuilder: (context, index) {
          final drink = widget.items[index];
          return buildList(drink);
        });
  }
}
