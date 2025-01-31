// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitAdapter extends TypeAdapter<Habit> {
  @override
  final int typeId = 1;

  @override
  Habit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Habit(
      habit: fields[0] as String,
      uid: fields[1] as String,
      dateStatus: (fields[2] as List).cast<DateStatus>(),
    );
  }

  @override
  void write(BinaryWriter writer, Habit obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.habit)
      ..writeByte(1)
      ..write(obj.uid)
      ..writeByte(2)
      ..write(obj.dateStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      habit: json['habit'] as String,
      uid: json['uid'] as String,
      dateStatus: (json['dateStatus'] as List<dynamic>)
          .map((e) => DateStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'habit': instance.habit,
      'uid': instance.uid,
      'dateStatus': instance.dateStatus,
    };
