part of '../../../index.dart';

class BookDataModel {
  String? kind;
  num? totalItems;
  List<Item>? items;

  BookDataModel({this.kind, this.totalItems, this.items});

  factory BookDataModel.fromJson(Map<String, dynamic> json) => BookDataModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as num?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
