// shows all drinks from selected category in a scrollable list with 4 drinks to a row

// import 'package:drink_dictionary/Components/flatten_drinks.dart';
// SizedBox(
                //   height: 400,
                //   child: ListView.builder(
                //     scrollDirection: Axis.vertical,
                //     itemCount:
                //         (flattenDrinks(drinkData[widget.category]).length / 4)
                //             .ceil(),
                //     itemBuilder: (BuildContext context, int index) {
                //       final categoryDrinks =
                //           flattenDrinks(drinkData[widget.category]);
                //       final start = index * 4;
                //       final end = (index + 1) * 4;

                //       return Row(
                //         children: [
                //           for (var i = start; i < end; i++)
                //             if (i < categoryDrinks.length)
                //               Expanded(
                //                 child: DrinkCard(
                //                   drinkImage: categoryDrinks[i]['drinkImage'],
                //                   drinkName: categoryDrinks[i]['drinkName'],
                //                   drinkDescription: categoryDrinks[i]
                //                           ['drinkDescription'] ??
                //                       '',
                //                 ),
                //               ),
                //         ],
                //       );
                //     },
                //   ),
                // )


//                 List<Map<String, dynamic>> flattenDrinks(Map<dynamic, dynamic> data) {
//   final List<Map<String, dynamic>> flattenedList = [];
//   data.forEach((key, value) {
//     if (value is List<Map<String, dynamic>>) {
//       // Check if value is a list of maps
//       flattenedList.addAll(value);
//     } else if (value is Map<String, dynamic>) {
//       flattenedList
//           .addAll(flattenDrinks(value)); // Recursively call if value is a map
//     }
//   });
//   return flattenedList;
// }
