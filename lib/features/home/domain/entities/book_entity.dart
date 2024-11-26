part of '../../index.dart';

class BookEntity {
  final String bookId;
  final String title;
  final String? author;
  final num? price;
  final String? image;
  final num? rating;

  const BookEntity({
    required this.bookId,
    required this.title,
    this.author,
    this.image,
    this.price,
    this.rating,
  });
}
