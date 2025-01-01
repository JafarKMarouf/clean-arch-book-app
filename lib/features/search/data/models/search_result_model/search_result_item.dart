part of '../../../index.dart';

class SearchResultItem extends SearchEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  SearchResultItem({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          bookId: id!,
          title: volumeInfo!.title!,
          author: volumeInfo.authors!.isNotEmpty
              ? volumeInfo.authors!.first
              : 'Not Found Author',
          price: 0.0,
          image: volumeInfo.imageLinks != null
              ? volumeInfo.imageLinks!.thumbnail
              : 'http://books.google.com/books/content?id=0RXLCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
          previewLink: volumeInfo.previewLink ?? "",
          averageRating: volumeInfo.averageRating ?? 0,
          ratingsCount: volumeInfo.ratingsCount ?? 0,
        );

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      SearchResultItem(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
      };
}
