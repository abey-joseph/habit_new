// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitEventCopyWith<$Res> {
  factory $HabitEventCopyWith(
          HabitEvent value, $Res Function(HabitEvent) then) =
      _$HabitEventCopyWithImpl<$Res, HabitEvent>;
}

/// @nodoc
class _$HabitEventCopyWithImpl<$Res, $Val extends HabitEvent>
    implements $HabitEventCopyWith<$Res> {
  _$HabitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchHabitImplCopyWith<$Res> {
  factory _$$FetchHabitImplCopyWith(
          _$FetchHabitImpl value, $Res Function(_$FetchHabitImpl) then) =
      __$$FetchHabitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$FetchHabitImpl>
    implements _$$FetchHabitImplCopyWith<$Res> {
  __$$FetchHabitImplCopyWithImpl(
      _$FetchHabitImpl _value, $Res Function(_$FetchHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchHabitImpl implements _FetchHabit {
  const _$FetchHabitImpl();

  @override
  String toString() {
    return 'HabitEvent.fetchHabit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHabitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) {
    return fetchHabit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) {
    return fetchHabit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) {
    if (fetchHabit != null) {
      return fetchHabit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) {
    return fetchHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) {
    return fetchHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) {
    if (fetchHabit != null) {
      return fetchHabit(this);
    }
    return orElse();
  }
}

abstract class _FetchHabit implements HabitEvent {
  const factory _FetchHabit() = _$FetchHabitImpl;
}

/// @nodoc
abstract class _$$AddHabitImplCopyWith<$Res> {
  factory _$$AddHabitImplCopyWith(
          _$AddHabitImpl value, $Res Function(_$AddHabitImpl) then) =
      __$$AddHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String habitName});
}

/// @nodoc
class __$$AddHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$AddHabitImpl>
    implements _$$AddHabitImplCopyWith<$Res> {
  __$$AddHabitImplCopyWithImpl(
      _$AddHabitImpl _value, $Res Function(_$AddHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitName = null,
  }) {
    return _then(_$AddHabitImpl(
      habitName: null == habitName
          ? _value.habitName
          : habitName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddHabitImpl implements _AddHabit {
  const _$AddHabitImpl({required this.habitName});

  @override
  final String habitName;

  @override
  String toString() {
    return 'HabitEvent.addHabit(habitName: $habitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHabitImpl &&
            (identical(other.habitName, habitName) ||
                other.habitName == habitName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitName);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHabitImplCopyWith<_$AddHabitImpl> get copyWith =>
      __$$AddHabitImplCopyWithImpl<_$AddHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) {
    return addHabit(habitName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) {
    return addHabit?.call(habitName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(habitName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) {
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) {
    return addHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(this);
    }
    return orElse();
  }
}

abstract class _AddHabit implements HabitEvent {
  const factory _AddHabit({required final String habitName}) = _$AddHabitImpl;

  String get habitName;

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddHabitImplCopyWith<_$AddHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHabitImplCopyWith<$Res> {
  factory _$$DeleteHabitImplCopyWith(
          _$DeleteHabitImpl value, $Res Function(_$DeleteHabitImpl) then) =
      __$$DeleteHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$DeleteHabitImpl>
    implements _$$DeleteHabitImplCopyWith<$Res> {
  __$$DeleteHabitImplCopyWithImpl(
      _$DeleteHabitImpl _value, $Res Function(_$DeleteHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteHabitImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteHabitImpl implements _DeleteHabit {
  const _$DeleteHabitImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HabitEvent.deleteHabit(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHabitImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      __$$DeleteHabitImplCopyWithImpl<_$DeleteHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) {
    return deleteHabit(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) {
    return deleteHabit?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) {
    return deleteHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) {
    return deleteHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(this);
    }
    return orElse();
  }
}

abstract class _DeleteHabit implements HabitEvent {
  const factory _DeleteHabit({required final int index}) = _$DeleteHabitImpl;

  int get index;

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditHabitImplCopyWith<$Res> {
  factory _$$EditHabitImplCopyWith(
          _$EditHabitImpl value, $Res Function(_$EditHabitImpl) then) =
      __$$EditHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String habitName});
}

/// @nodoc
class __$$EditHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$EditHabitImpl>
    implements _$$EditHabitImplCopyWith<$Res> {
  __$$EditHabitImplCopyWithImpl(
      _$EditHabitImpl _value, $Res Function(_$EditHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? habitName = null,
  }) {
    return _then(_$EditHabitImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      habitName: null == habitName
          ? _value.habitName
          : habitName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditHabitImpl implements _EditHabit {
  const _$EditHabitImpl({required this.index, required this.habitName});

  @override
  final int index;
  @override
  final String habitName;

  @override
  String toString() {
    return 'HabitEvent.editHabit(index: $index, habitName: $habitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditHabitImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.habitName, habitName) ||
                other.habitName == habitName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, habitName);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditHabitImplCopyWith<_$EditHabitImpl> get copyWith =>
      __$$EditHabitImplCopyWithImpl<_$EditHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) {
    return editHabit(index, habitName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) {
    return editHabit?.call(index, habitName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) {
    if (editHabit != null) {
      return editHabit(index, habitName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) {
    return editHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) {
    return editHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) {
    if (editHabit != null) {
      return editHabit(this);
    }
    return orElse();
  }
}

abstract class _EditHabit implements HabitEvent {
  const factory _EditHabit(
      {required final int index,
      required final String habitName}) = _$EditHabitImpl;

  int get index;
  String get habitName;

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditHabitImplCopyWith<_$EditHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshHabitImplCopyWith<$Res> {
  factory _$$RefreshHabitImplCopyWith(
          _$RefreshHabitImpl value, $Res Function(_$RefreshHabitImpl) then) =
      __$$RefreshHabitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$RefreshHabitImpl>
    implements _$$RefreshHabitImplCopyWith<$Res> {
  __$$RefreshHabitImplCopyWithImpl(
      _$RefreshHabitImpl _value, $Res Function(_$RefreshHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshHabitImpl implements _RefreshHabit {
  const _$RefreshHabitImpl();

  @override
  String toString() {
    return 'HabitEvent.refreshHabit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshHabitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHabit,
    required TResult Function(String habitName) addHabit,
    required TResult Function(int index) deleteHabit,
    required TResult Function(int index, String habitName) editHabit,
    required TResult Function() refreshHabit,
  }) {
    return refreshHabit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHabit,
    TResult? Function(String habitName)? addHabit,
    TResult? Function(int index)? deleteHabit,
    TResult? Function(int index, String habitName)? editHabit,
    TResult? Function()? refreshHabit,
  }) {
    return refreshHabit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHabit,
    TResult Function(String habitName)? addHabit,
    TResult Function(int index)? deleteHabit,
    TResult Function(int index, String habitName)? editHabit,
    TResult Function()? refreshHabit,
    required TResult orElse(),
  }) {
    if (refreshHabit != null) {
      return refreshHabit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHabit value) fetchHabit,
    required TResult Function(_AddHabit value) addHabit,
    required TResult Function(_DeleteHabit value) deleteHabit,
    required TResult Function(_EditHabit value) editHabit,
    required TResult Function(_RefreshHabit value) refreshHabit,
  }) {
    return refreshHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHabit value)? fetchHabit,
    TResult? Function(_AddHabit value)? addHabit,
    TResult? Function(_DeleteHabit value)? deleteHabit,
    TResult? Function(_EditHabit value)? editHabit,
    TResult? Function(_RefreshHabit value)? refreshHabit,
  }) {
    return refreshHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHabit value)? fetchHabit,
    TResult Function(_AddHabit value)? addHabit,
    TResult Function(_DeleteHabit value)? deleteHabit,
    TResult Function(_EditHabit value)? editHabit,
    TResult Function(_RefreshHabit value)? refreshHabit,
    required TResult orElse(),
  }) {
    if (refreshHabit != null) {
      return refreshHabit(this);
    }
    return orElse();
  }
}

abstract class _RefreshHabit implements HabitEvent {
  const factory _RefreshHabit() = _$RefreshHabitImpl;
}

/// @nodoc
mixin _$HabitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> habits) loaded,
    required TResult Function(String e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> habits)? loaded,
    TResult? Function(String e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> habits)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(loaded value) loaded,
    required TResult Function(error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(loaded value)? loaded,
    TResult? Function(error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(loaded value)? loaded,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStateCopyWith<$Res> {
  factory $HabitStateCopyWith(
          HabitState value, $Res Function(HabitState) then) =
      _$HabitStateCopyWithImpl<$Res, HabitState>;
}

/// @nodoc
class _$HabitStateCopyWithImpl<$Res, $Val extends HabitState>
    implements $HabitStateCopyWith<$Res> {
  _$HabitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$initialImpl implements initial {
  const _$initialImpl();

  @override
  String toString() {
    return 'HabitState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> habits) loaded,
    required TResult Function(String e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> habits)? loaded,
    TResult? Function(String e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> habits)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(loaded value) loaded,
    required TResult Function(error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(loaded value)? loaded,
    TResult? Function(error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(loaded value)? loaded,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class initial implements HabitState {
  const factory initial() = _$initialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingImpl implements loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'HabitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> habits) loaded,
    required TResult Function(String e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> habits)? loaded,
    TResult? Function(String e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> habits)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(loaded value) loaded,
    required TResult Function(error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(loaded value)? loaded,
    TResult? Function(error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(loaded value)? loaded,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading implements HabitState {
  const factory loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$loadedImplCopyWith<$Res> {
  factory _$$loadedImplCopyWith(
          _$loadedImpl value, $Res Function(_$loadedImpl) then) =
      __$$loadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> habits});
}

/// @nodoc
class __$$loadedImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$loadedImpl>
    implements _$$loadedImplCopyWith<$Res> {
  __$$loadedImplCopyWithImpl(
      _$loadedImpl _value, $Res Function(_$loadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
  }) {
    return _then(_$loadedImpl(
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$loadedImpl implements loaded {
  const _$loadedImpl({required final List<String> habits}) : _habits = habits;

  final List<String> _habits;
  @override
  List<String> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'HabitState.loaded(habits: $habits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadedImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
      __$$loadedImplCopyWithImpl<_$loadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> habits) loaded,
    required TResult Function(String e) error,
  }) {
    return loaded(habits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> habits)? loaded,
    TResult? Function(String e)? error,
  }) {
    return loaded?.call(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> habits)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(loaded value) loaded,
    required TResult Function(error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(loaded value)? loaded,
    TResult? Function(error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(loaded value)? loaded,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class loaded implements HabitState {
  const factory loaded({required final List<String> habits}) = _$loadedImpl;

  List<String> get habits;

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$errorImpl(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorImpl implements error {
  const _$errorImpl({required this.e});

  @override
  final String e;

  @override
  String toString() {
    return 'HabitState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> habits) loaded,
    required TResult Function(String e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> habits)? loaded,
    TResult? Function(String e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> habits)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(loaded value) loaded,
    required TResult Function(error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(loaded value)? loaded,
    TResult? Function(error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(loaded value)? loaded,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class error implements HabitState {
  const factory error({required final String e}) = _$errorImpl;

  String get e;

  /// Create a copy of HabitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
