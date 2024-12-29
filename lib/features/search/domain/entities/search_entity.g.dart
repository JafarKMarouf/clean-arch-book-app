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
      previewLink: fields[5] as String?,
      totalItems: fields[6] as int?,
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
      ..write(obj.previewLink)
      ..writeByte(6)
      ..write(obj.totalItems);
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
