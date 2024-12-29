part of '../../index.dart';

@HiveType(typeId: 2)
class SearchEntity {
  @HiveField(0)
  final String bookId;

  @HiveField(1)
  final String? title;

  @HiveField(2)
  final String? author;

  @HiveField(3)
  final num? price;

  @HiveField(4)
  final String? image;

  @HiveField(5)
  final num? averageRating;

  @HiveField(6)
  final num? ratingsCount;

  @HiveField(7)
  final String? previewLink;

  @HiveField(8)
  final int? foundCount;

  SearchEntity({
    required this.bookId,
    this.title,
    this.author,
    this.image,
    this.price,
    this.averageRating,
    this.ratingsCount,
    this.previewLink,
    this.foundCount,
  });
}
