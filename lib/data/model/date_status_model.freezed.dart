// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateStatus _$DateStatusFromJson(Map<String, dynamic> json) {
  return _DateStatus.fromJson(json);
}

/// @nodoc
mixin _$DateStatus {
  @HiveField(0)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this DateStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateStatusCopyWith<DateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateStatusCopyWith<$Res> {
  factory $DateStatusCopyWith(
          DateStatus value, $Res Function(DateStatus) then) =
      _$DateStatusCopyWithImpl<$Res, DateStatus>;
  @useResult
  $Res call({@HiveField(0) DateTime date, @HiveField(1) bool? isCompleted});
}

/// @nodoc
class _$DateStatusCopyWithImpl<$Res, $Val extends DateStatus>
    implements $DateStatusCopyWith<$Res> {
  _$DateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateStatusImplCopyWith<$Res>
    implements $DateStatusCopyWith<$Res> {
  factory _$$DateStatusImplCopyWith(
          _$DateStatusImpl value, $Res Function(_$DateStatusImpl) then) =
      __$$DateStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) DateTime date, @HiveField(1) bool? isCompleted});
}

/// @nodoc
class __$$DateStatusImplCopyWithImpl<$Res>
    extends _$DateStatusCopyWithImpl<$Res, _$DateStatusImpl>
    implements _$$DateStatusImplCopyWith<$Res> {
  __$$DateStatusImplCopyWithImpl(
      _$DateStatusImpl _value, $Res Function(_$DateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isCompleted = freezed,
  }) {
    return _then(_$DateStatusImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateStatusImpl implements _DateStatus {
  const _$DateStatusImpl(
      {@HiveField(0) required this.date, @HiveField(1) this.isCompleted});

  factory _$DateStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateStatusImplFromJson(json);

  @override
  @HiveField(0)
  final DateTime date;
  @override
  @HiveField(1)
  final bool? isCompleted;

  @override
  String toString() {
    return 'DateStatus(date: $date, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateStatusImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, isCompleted);

  /// Create a copy of DateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateStatusImplCopyWith<_$DateStatusImpl> get copyWith =>
      __$$DateStatusImplCopyWithImpl<_$DateStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateStatusImplToJson(
      this,
    );
  }
}

abstract class _DateStatus implements DateStatus {
  const factory _DateStatus(
      {@HiveField(0) required final DateTime date,
      @HiveField(1) final bool? isCompleted}) = _$DateStatusImpl;

  factory _DateStatus.fromJson(Map<String, dynamic> json) =
      _$DateStatusImpl.fromJson;

  @override
  @HiveField(0)
  DateTime get date;
  @override
  @HiveField(1)
  bool? get isCompleted;

  /// Create a copy of DateStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateStatusImplCopyWith<_$DateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
