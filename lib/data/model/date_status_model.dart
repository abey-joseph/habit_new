import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_status_model.freezed.dart';
part 'date_status_model.g.dart';

@freezed
@HiveType(typeId: 2)
class DateStatus with _$DateStatus {
  const factory DateStatus({
    @HiveField(0) required DateTime date,
    @HiveField(1) bool? isCompleted,
  }) = _DateStatus;

  factory DateStatus.fromJson(Map<String, dynamic> json) =>
      _$DateStatusFromJson(json);
}
