// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_status_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DateStatusAdapter extends TypeAdapter<DateStatus> {
  @override
  final int typeId = 2;

  @override
  DateStatus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DateStatus(
      date: fields[0] as DateTime,
      isCompleted: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DateStatus obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DateStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateStatusImpl _$$DateStatusImplFromJson(Map<String, dynamic> json) =>
    _$DateStatusImpl(
      date: DateTime.parse(json['date'] as String),
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$DateStatusImplToJson(_$DateStatusImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'isCompleted': instance.isCompleted,
    };
