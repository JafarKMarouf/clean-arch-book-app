// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../index.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchEntityAdapter extends TypeAdapter<SearchEntity> {
  @override
  final int typeId = 2;

  @override
  SearchEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchEntity(
      bookId: fields[0] as String,
      title: fields[1] as String?,
      author: fields[2] as String?,
      image: fields[4] as String?,
      price: fields[3] as num?,
      averageRating: fields[5] as num?,
      ratingsCount: fields[6] as num?,
      previewLink: fields[7] as String?,
      foundCount: fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, SearchEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.averageRating)
      ..writeByte(6)
      ..write(obj.ratingsCount)
      ..writeByte(7)
      ..write(obj.previewLink)
      ..writeByte(8)
      ..write(obj.foundCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
