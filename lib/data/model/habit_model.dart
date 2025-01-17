import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'habit_model.g.dart';
part 'habit_model.freezed.dart';

@freezed
@HiveType(typeId: 1)
class Habit with _$Habit {
  const factory Habit({
    @HiveField(0) required String habit,
    @HiveField(1) required String UID,
    @HiveField(2) required List<DateStatus> dateStatus,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
