part of '../../index.dart';

void saveSearchResult(List<SearchEntity> results, String box) {
  var box = Hive.box<SearchEntity>(kSearchBox);

  box.addAll(results);
}
