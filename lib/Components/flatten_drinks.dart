List<Map<String, dynamic>> flattenDrinks(Map<dynamic, dynamic> data) {
  final List<Map<String, dynamic>> flattenedList = [];
  data.forEach((key, value) {
    if (value is List<Map<String, dynamic>>) {
      // Check if value is a list of maps
      flattenedList.addAll(value);
    } else if (value is Map<String, dynamic>) {
      flattenedList
          .addAll(flattenDrinks(value)); // Recursively call if value is a map
    }
  });
  return flattenedList;
}
