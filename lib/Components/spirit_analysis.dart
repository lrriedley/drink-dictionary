import 'package:flutter/material.dart';
import 'package:drink_dictionary/components/drink_hashtag.dart';

class SpiritAnalysis extends StatelessWidget {
  const SpiritAnalysis({
    super.key,
    required this.analysis,
    required this.analysisName,
  });

  final List? analysis;
  final String? analysisName;

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        analysisName!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w900,
        ),
      ),
      SingleChildScrollView(

        scrollDirection: Axis.horizontal,
        child: Row(
          children: (analysis ?? []).map(drinkHashtag).toList(),
        ),
      ),
    ],
                ),
              );
  }
}