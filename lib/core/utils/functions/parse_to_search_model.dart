part of '../../index.dart';

List<SearchEntity> parseToSearchModel(Map<String, dynamic> data) {
  List<SearchEntity> results = [];

  for (var item in data['items']) {
    results.add(SearchResultItem.fromJson(item));
  }

  return results;
}
