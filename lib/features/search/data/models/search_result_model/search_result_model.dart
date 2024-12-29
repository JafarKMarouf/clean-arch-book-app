part of '../../../index.dart';

class SearchResultModel {
  String? kind;
  num? totalItems;
  List<DataItem>? items;

  SearchResultModel({this.kind, this.totalItems, this.items});

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      SearchResultModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as num?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => DataItem.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
