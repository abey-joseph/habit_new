// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchHabitDetail,
    required TResult Function() refreshHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchHabitDetail,
    TResult? Function()? refreshHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchHabitDetail,
    TResult Function()? refreshHabitDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(fetchHabitDetail value) fetchHabitDetail,
    required TResult Function(refreshHabitDetail value) refreshHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult? Function(refreshHabitDetail value)? refreshHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult Function(refreshHabitDetail value)? refreshHabitDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$fetchHabitDetailImplCopyWith<$Res> {
  factory _$$fetchHabitDetailImplCopyWith(_$fetchHabitDetailImpl value,
          $Res Function(_$fetchHabitDetailImpl) then) =
      __$$fetchHabitDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$fetchHabitDetailImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$fetchHabitDetailImpl>
    implements _$$fetchHabitDetailImplCopyWith<$Res> {
  __$$fetchHabitDetailImplCopyWithImpl(_$fetchHabitDetailImpl _value,
      $Res Function(_$fetchHabitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$fetchHabitDetailImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$fetchHabitDetailImpl implements fetchHabitDetail {
  const _$fetchHabitDetailImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'DetailEvent.fetchHabitDetail(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchHabitDetailImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchHabitDetailImplCopyWith<_$fetchHabitDetailImpl> get copyWith =>
      __$$fetchHabitDetailImplCopyWithImpl<_$fetchHabitDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchHabitDetail,
    required TResult Function() refreshHabitDetail,
  }) {
    return fetchHabitDetail(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchHabitDetail,
    TResult? Function()? refreshHabitDetail,
  }) {
    return fetchHabitDetail?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchHabitDetail,
    TResult Function()? refreshHabitDetail,
    required TResult orElse(),
  }) {
    if (fetchHabitDetail != null) {
      return fetchHabitDetail(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(fetchHabitDetail value) fetchHabitDetail,
    required TResult Function(refreshHabitDetail value) refreshHabitDetail,
  }) {
    return fetchHabitDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult? Function(refreshHabitDetail value)? refreshHabitDetail,
  }) {
    return fetchHabitDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult Function(refreshHabitDetail value)? refreshHabitDetail,
    required TResult orElse(),
  }) {
    if (fetchHabitDetail != null) {
      return fetchHabitDetail(this);
    }
    return orElse();
  }
}

abstract class fetchHabitDetail implements DetailEvent {
  const factory fetchHabitDetail({required final int index}) =
      _$fetchHabitDetailImpl;

  int get index;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$fetchHabitDetailImplCopyWith<_$fetchHabitDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$refreshHabitDetailImplCopyWith<$Res> {
  factory _$$refreshHabitDetailImplCopyWith(_$refreshHabitDetailImpl value,
          $Res Function(_$refreshHabitDetailImpl) then) =
      __$$refreshHabitDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$refreshHabitDetailImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$refreshHabitDetailImpl>
    implements _$$refreshHabitDetailImplCopyWith<$Res> {
  __$$refreshHabitDetailImplCopyWithImpl(_$refreshHabitDetailImpl _value,
      $Res Function(_$refreshHabitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$refreshHabitDetailImpl implements refreshHabitDetail {
  const _$refreshHabitDetailImpl();

  @override
  String toString() {
    return 'DetailEvent.refreshHabitDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$refreshHabitDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchHabitDetail,
    required TResult Function() refreshHabitDetail,
  }) {
    return refreshHabitDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchHabitDetail,
    TResult? Function()? refreshHabitDetail,
  }) {
    return refreshHabitDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchHabitDetail,
    TResult Function()? refreshHabitDetail,
    required TResult orElse(),
  }) {
    if (refreshHabitDetail != null) {
      return refreshHabitDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(fetchHabitDetail value) fetchHabitDetail,
    required TResult Function(refreshHabitDetail value) refreshHabitDetail,
  }) {
    return refreshHabitDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult? Function(refreshHabitDetail value)? refreshHabitDetail,
  }) {
    return refreshHabitDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(fetchHabitDetail value)? fetchHabitDetail,
    TResult Function(refreshHabitDetail value)? refreshHabitDetail,
    required TResult orElse(),
  }) {
    if (refreshHabitDetail != null) {
      return refreshHabitDetail(this);
    }
    return orElse();
  }
}

abstract class refreshHabitDetail implements DetailEvent {
  const factory refreshHabitDetail() = _$refreshHabitDetailImpl;
}

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHabitDetail,
    required TResult Function(Habit habit) loadedHabitDetail,
    required TResult Function(String e) errorHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHabitDetail,
    TResult? Function(Habit habit)? loadedHabitDetail,
    TResult? Function(String e)? errorHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHabitDetail,
    TResult Function(Habit habit)? loadedHabitDetail,
    TResult Function(String e)? errorHabitDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialDetail value) initial,
    required TResult Function(loadingHabitDetail value) loadingHabitDetail,
    required TResult Function(loadedHabitDetail value) loadedHabitDetail,
    required TResult Function(errorHabitDetail value) errorHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialDetail value)? initial,
    TResult? Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult? Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult? Function(errorHabitDetail value)? errorHabitDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialDetail value)? initial,
    TResult Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult Function(errorHabitDetail value)? errorHabitDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$initialDetailImplCopyWith<$Res> {
  factory _$$initialDetailImplCopyWith(
          _$initialDetailImpl value, $Res Function(_$initialDetailImpl) then) =
      __$$initialDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialDetailImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$initialDetailImpl>
    implements _$$initialDetailImplCopyWith<$Res> {
  __$$initialDetailImplCopyWithImpl(
      _$initialDetailImpl _value, $Res Function(_$initialDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$initialDetailImpl implements initialDetail {
  const _$initialDetailImpl();

  @override
  String toString() {
    return 'DetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHabitDetail,
    required TResult Function(Habit habit) loadedHabitDetail,
    required TResult Function(String e) errorHabitDetail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHabitDetail,
    TResult? Function(Habit habit)? loadedHabitDetail,
    TResult? Function(String e)? errorHabitDetail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHabitDetail,
    TResult Function(Habit habit)? loadedHabitDetail,
    TResult Function(String e)? errorHabitDetail,
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
    required TResult Function(initialDetail value) initial,
    required TResult Function(loadingHabitDetail value) loadingHabitDetail,
    required TResult Function(loadedHabitDetail value) loadedHabitDetail,
    required TResult Function(errorHabitDetail value) errorHabitDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialDetail value)? initial,
    TResult? Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult? Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult? Function(errorHabitDetail value)? errorHabitDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialDetail value)? initial,
    TResult Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult Function(errorHabitDetail value)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class initialDetail implements DetailState {
  const factory initialDetail() = _$initialDetailImpl;
}

/// @nodoc
abstract class _$$loadingHabitDetailImplCopyWith<$Res> {
  factory _$$loadingHabitDetailImplCopyWith(_$loadingHabitDetailImpl value,
          $Res Function(_$loadingHabitDetailImpl) then) =
      __$$loadingHabitDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingHabitDetailImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$loadingHabitDetailImpl>
    implements _$$loadingHabitDetailImplCopyWith<$Res> {
  __$$loadingHabitDetailImplCopyWithImpl(_$loadingHabitDetailImpl _value,
      $Res Function(_$loadingHabitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingHabitDetailImpl implements loadingHabitDetail {
  const _$loadingHabitDetailImpl();

  @override
  String toString() {
    return 'DetailState.loadingHabitDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingHabitDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHabitDetail,
    required TResult Function(Habit habit) loadedHabitDetail,
    required TResult Function(String e) errorHabitDetail,
  }) {
    return loadingHabitDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHabitDetail,
    TResult? Function(Habit habit)? loadedHabitDetail,
    TResult? Function(String e)? errorHabitDetail,
  }) {
    return loadingHabitDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHabitDetail,
    TResult Function(Habit habit)? loadedHabitDetail,
    TResult Function(String e)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (loadingHabitDetail != null) {
      return loadingHabitDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialDetail value) initial,
    required TResult Function(loadingHabitDetail value) loadingHabitDetail,
    required TResult Function(loadedHabitDetail value) loadedHabitDetail,
    required TResult Function(errorHabitDetail value) errorHabitDetail,
  }) {
    return loadingHabitDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialDetail value)? initial,
    TResult? Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult? Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult? Function(errorHabitDetail value)? errorHabitDetail,
  }) {
    return loadingHabitDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialDetail value)? initial,
    TResult Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult Function(errorHabitDetail value)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (loadingHabitDetail != null) {
      return loadingHabitDetail(this);
    }
    return orElse();
  }
}

abstract class loadingHabitDetail implements DetailState {
  const factory loadingHabitDetail() = _$loadingHabitDetailImpl;
}

/// @nodoc
abstract class _$$loadedHabitDetailImplCopyWith<$Res> {
  factory _$$loadedHabitDetailImplCopyWith(_$loadedHabitDetailImpl value,
          $Res Function(_$loadedHabitDetailImpl) then) =
      __$$loadedHabitDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Habit habit});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$$loadedHabitDetailImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$loadedHabitDetailImpl>
    implements _$$loadedHabitDetailImplCopyWith<$Res> {
  __$$loadedHabitDetailImplCopyWithImpl(_$loadedHabitDetailImpl _value,
      $Res Function(_$loadedHabitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
  }) {
    return _then(_$loadedHabitDetailImpl(
      habit: null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res> get habit {
    return $HabitCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

/// @nodoc

class _$loadedHabitDetailImpl implements loadedHabitDetail {
  const _$loadedHabitDetailImpl({required this.habit});

  @override
  final Habit habit;

  @override
  String toString() {
    return 'DetailState.loadedHabitDetail(habit: $habit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadedHabitDetailImpl &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadedHabitDetailImplCopyWith<_$loadedHabitDetailImpl> get copyWith =>
      __$$loadedHabitDetailImplCopyWithImpl<_$loadedHabitDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHabitDetail,
    required TResult Function(Habit habit) loadedHabitDetail,
    required TResult Function(String e) errorHabitDetail,
  }) {
    return loadedHabitDetail(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHabitDetail,
    TResult? Function(Habit habit)? loadedHabitDetail,
    TResult? Function(String e)? errorHabitDetail,
  }) {
    return loadedHabitDetail?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHabitDetail,
    TResult Function(Habit habit)? loadedHabitDetail,
    TResult Function(String e)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (loadedHabitDetail != null) {
      return loadedHabitDetail(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialDetail value) initial,
    required TResult Function(loadingHabitDetail value) loadingHabitDetail,
    required TResult Function(loadedHabitDetail value) loadedHabitDetail,
    required TResult Function(errorHabitDetail value) errorHabitDetail,
  }) {
    return loadedHabitDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialDetail value)? initial,
    TResult? Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult? Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult? Function(errorHabitDetail value)? errorHabitDetail,
  }) {
    return loadedHabitDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialDetail value)? initial,
    TResult Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult Function(errorHabitDetail value)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (loadedHabitDetail != null) {
      return loadedHabitDetail(this);
    }
    return orElse();
  }
}

abstract class loadedHabitDetail implements DetailState {
  const factory loadedHabitDetail({required final Habit habit}) =
      _$loadedHabitDetailImpl;

  Habit get habit;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadedHabitDetailImplCopyWith<_$loadedHabitDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorHabitDetailImplCopyWith<$Res> {
  factory _$$errorHabitDetailImplCopyWith(_$errorHabitDetailImpl value,
          $Res Function(_$errorHabitDetailImpl) then) =
      __$$errorHabitDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$errorHabitDetailImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$errorHabitDetailImpl>
    implements _$$errorHabitDetailImplCopyWith<$Res> {
  __$$errorHabitDetailImplCopyWithImpl(_$errorHabitDetailImpl _value,
      $Res Function(_$errorHabitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$errorHabitDetailImpl(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorHabitDetailImpl implements errorHabitDetail {
  const _$errorHabitDetailImpl({required this.e});

  @override
  final String e;

  @override
  String toString() {
    return 'DetailState.errorHabitDetail(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorHabitDetailImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$errorHabitDetailImplCopyWith<_$errorHabitDetailImpl> get copyWith =>
      __$$errorHabitDetailImplCopyWithImpl<_$errorHabitDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHabitDetail,
    required TResult Function(Habit habit) loadedHabitDetail,
    required TResult Function(String e) errorHabitDetail,
  }) {
    return errorHabitDetail(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHabitDetail,
    TResult? Function(Habit habit)? loadedHabitDetail,
    TResult? Function(String e)? errorHabitDetail,
  }) {
    return errorHabitDetail?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHabitDetail,
    TResult Function(Habit habit)? loadedHabitDetail,
    TResult Function(String e)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (errorHabitDetail != null) {
      return errorHabitDetail(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialDetail value) initial,
    required TResult Function(loadingHabitDetail value) loadingHabitDetail,
    required TResult Function(loadedHabitDetail value) loadedHabitDetail,
    required TResult Function(errorHabitDetail value) errorHabitDetail,
  }) {
    return errorHabitDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialDetail value)? initial,
    TResult? Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult? Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult? Function(errorHabitDetail value)? errorHabitDetail,
  }) {
    return errorHabitDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialDetail value)? initial,
    TResult Function(loadingHabitDetail value)? loadingHabitDetail,
    TResult Function(loadedHabitDetail value)? loadedHabitDetail,
    TResult Function(errorHabitDetail value)? errorHabitDetail,
    required TResult orElse(),
  }) {
    if (errorHabitDetail != null) {
      return errorHabitDetail(this);
    }
    return orElse();
  }
}

abstract class errorHabitDetail implements DetailState {
  const factory errorHabitDetail({required final String e}) =
      _$errorHabitDetailImpl;

  String get e;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$errorHabitDetailImplCopyWith<_$errorHabitDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
