// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_box_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckBoxEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshCheckBox,
    required TResult Function(int row, int column, bool value) toggleCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshCheckBox,
    TResult? Function(int row, int column, bool value)? toggleCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshCheckBox,
    TResult Function(int row, int column, bool value)? toggleCheckBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(refreshCheckBox value) refreshCheckBox,
    required TResult Function(toggleCheckBox value) toggleCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(refreshCheckBox value)? refreshCheckBox,
    TResult? Function(toggleCheckBox value)? toggleCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(refreshCheckBox value)? refreshCheckBox,
    TResult Function(toggleCheckBox value)? toggleCheckBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxEventCopyWith<$Res> {
  factory $CheckBoxEventCopyWith(
          CheckBoxEvent value, $Res Function(CheckBoxEvent) then) =
      _$CheckBoxEventCopyWithImpl<$Res, CheckBoxEvent>;
}

/// @nodoc
class _$CheckBoxEventCopyWithImpl<$Res, $Val extends CheckBoxEvent>
    implements $CheckBoxEventCopyWith<$Res> {
  _$CheckBoxEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckBoxEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$refreshCheckBoxImplCopyWith<$Res> {
  factory _$$refreshCheckBoxImplCopyWith(_$refreshCheckBoxImpl value,
          $Res Function(_$refreshCheckBoxImpl) then) =
      __$$refreshCheckBoxImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$refreshCheckBoxImplCopyWithImpl<$Res>
    extends _$CheckBoxEventCopyWithImpl<$Res, _$refreshCheckBoxImpl>
    implements _$$refreshCheckBoxImplCopyWith<$Res> {
  __$$refreshCheckBoxImplCopyWithImpl(
      _$refreshCheckBoxImpl _value, $Res Function(_$refreshCheckBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$refreshCheckBoxImpl implements refreshCheckBox {
  const _$refreshCheckBoxImpl();

  @override
  String toString() {
    return 'CheckBoxEvent.refreshCheckBox()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$refreshCheckBoxImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshCheckBox,
    required TResult Function(int row, int column, bool value) toggleCheckBox,
  }) {
    return refreshCheckBox();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshCheckBox,
    TResult? Function(int row, int column, bool value)? toggleCheckBox,
  }) {
    return refreshCheckBox?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshCheckBox,
    TResult Function(int row, int column, bool value)? toggleCheckBox,
    required TResult orElse(),
  }) {
    if (refreshCheckBox != null) {
      return refreshCheckBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(refreshCheckBox value) refreshCheckBox,
    required TResult Function(toggleCheckBox value) toggleCheckBox,
  }) {
    return refreshCheckBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(refreshCheckBox value)? refreshCheckBox,
    TResult? Function(toggleCheckBox value)? toggleCheckBox,
  }) {
    return refreshCheckBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(refreshCheckBox value)? refreshCheckBox,
    TResult Function(toggleCheckBox value)? toggleCheckBox,
    required TResult orElse(),
  }) {
    if (refreshCheckBox != null) {
      return refreshCheckBox(this);
    }
    return orElse();
  }
}

abstract class refreshCheckBox implements CheckBoxEvent {
  const factory refreshCheckBox() = _$refreshCheckBoxImpl;
}

/// @nodoc
abstract class _$$toggleCheckBoxImplCopyWith<$Res> {
  factory _$$toggleCheckBoxImplCopyWith(_$toggleCheckBoxImpl value,
          $Res Function(_$toggleCheckBoxImpl) then) =
      __$$toggleCheckBoxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int row, int column, bool value});
}

/// @nodoc
class __$$toggleCheckBoxImplCopyWithImpl<$Res>
    extends _$CheckBoxEventCopyWithImpl<$Res, _$toggleCheckBoxImpl>
    implements _$$toggleCheckBoxImplCopyWith<$Res> {
  __$$toggleCheckBoxImplCopyWithImpl(
      _$toggleCheckBoxImpl _value, $Res Function(_$toggleCheckBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? value = null,
  }) {
    return _then(_$toggleCheckBoxImpl(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$toggleCheckBoxImpl implements toggleCheckBox {
  const _$toggleCheckBoxImpl(
      {required this.row, required this.column, required this.value});

  @override
  final int row;
  @override
  final int column;
  @override
  final bool value;

  @override
  String toString() {
    return 'CheckBoxEvent.toggleCheckBox(row: $row, column: $column, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$toggleCheckBoxImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, column, value);

  /// Create a copy of CheckBoxEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$toggleCheckBoxImplCopyWith<_$toggleCheckBoxImpl> get copyWith =>
      __$$toggleCheckBoxImplCopyWithImpl<_$toggleCheckBoxImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshCheckBox,
    required TResult Function(int row, int column, bool value) toggleCheckBox,
  }) {
    return toggleCheckBox(row, column, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshCheckBox,
    TResult? Function(int row, int column, bool value)? toggleCheckBox,
  }) {
    return toggleCheckBox?.call(row, column, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshCheckBox,
    TResult Function(int row, int column, bool value)? toggleCheckBox,
    required TResult orElse(),
  }) {
    if (toggleCheckBox != null) {
      return toggleCheckBox(row, column, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(refreshCheckBox value) refreshCheckBox,
    required TResult Function(toggleCheckBox value) toggleCheckBox,
  }) {
    return toggleCheckBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(refreshCheckBox value)? refreshCheckBox,
    TResult? Function(toggleCheckBox value)? toggleCheckBox,
  }) {
    return toggleCheckBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(refreshCheckBox value)? refreshCheckBox,
    TResult Function(toggleCheckBox value)? toggleCheckBox,
    required TResult orElse(),
  }) {
    if (toggleCheckBox != null) {
      return toggleCheckBox(this);
    }
    return orElse();
  }
}

abstract class toggleCheckBox implements CheckBoxEvent {
  const factory toggleCheckBox(
      {required final int row,
      required final int column,
      required final bool value}) = _$toggleCheckBoxImpl;

  int get row;
  int get column;
  bool get value;

  /// Create a copy of CheckBoxEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$toggleCheckBoxImplCopyWith<_$toggleCheckBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckBoxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<List<bool>> checkList, int hash) loaded,
    required TResult Function(String e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<List<bool>> checkList, int hash)? loaded,
    TResult? Function(String e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<List<bool>> checkList, int hash)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkBoxinitial value) initial,
    required TResult Function(checkBoxloading value) loading,
    required TResult Function(checkBoxloaded value) loaded,
    required TResult Function(checkBoxerror value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkBoxinitial value)? initial,
    TResult? Function(checkBoxloading value)? loading,
    TResult? Function(checkBoxloaded value)? loaded,
    TResult? Function(checkBoxerror value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkBoxinitial value)? initial,
    TResult Function(checkBoxloading value)? loading,
    TResult Function(checkBoxloaded value)? loaded,
    TResult Function(checkBoxerror value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxStateCopyWith<$Res> {
  factory $CheckBoxStateCopyWith(
          CheckBoxState value, $Res Function(CheckBoxState) then) =
      _$CheckBoxStateCopyWithImpl<$Res, CheckBoxState>;
}

/// @nodoc
class _$CheckBoxStateCopyWithImpl<$Res, $Val extends CheckBoxState>
    implements $CheckBoxStateCopyWith<$Res> {
  _$CheckBoxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$checkBoxinitialImplCopyWith<$Res> {
  factory _$$checkBoxinitialImplCopyWith(_$checkBoxinitialImpl value,
          $Res Function(_$checkBoxinitialImpl) then) =
      __$$checkBoxinitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkBoxinitialImplCopyWithImpl<$Res>
    extends _$CheckBoxStateCopyWithImpl<$Res, _$checkBoxinitialImpl>
    implements _$$checkBoxinitialImplCopyWith<$Res> {
  __$$checkBoxinitialImplCopyWithImpl(
      _$checkBoxinitialImpl _value, $Res Function(_$checkBoxinitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$checkBoxinitialImpl implements checkBoxinitial {
  const _$checkBoxinitialImpl();

  @override
  String toString() {
    return 'CheckBoxState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkBoxinitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<List<bool>> checkList, int hash) loaded,
    required TResult Function(String e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<List<bool>> checkList, int hash)? loaded,
    TResult? Function(String e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<List<bool>> checkList, int hash)? loaded,
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
    required TResult Function(checkBoxinitial value) initial,
    required TResult Function(checkBoxloading value) loading,
    required TResult Function(checkBoxloaded value) loaded,
    required TResult Function(checkBoxerror value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkBoxinitial value)? initial,
    TResult? Function(checkBoxloading value)? loading,
    TResult? Function(checkBoxloaded value)? loaded,
    TResult? Function(checkBoxerror value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkBoxinitial value)? initial,
    TResult Function(checkBoxloading value)? loading,
    TResult Function(checkBoxloaded value)? loaded,
    TResult Function(checkBoxerror value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class checkBoxinitial implements CheckBoxState {
  const factory checkBoxinitial() = _$checkBoxinitialImpl;
}

/// @nodoc
abstract class _$$checkBoxloadingImplCopyWith<$Res> {
  factory _$$checkBoxloadingImplCopyWith(_$checkBoxloadingImpl value,
          $Res Function(_$checkBoxloadingImpl) then) =
      __$$checkBoxloadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkBoxloadingImplCopyWithImpl<$Res>
    extends _$CheckBoxStateCopyWithImpl<$Res, _$checkBoxloadingImpl>
    implements _$$checkBoxloadingImplCopyWith<$Res> {
  __$$checkBoxloadingImplCopyWithImpl(
      _$checkBoxloadingImpl _value, $Res Function(_$checkBoxloadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$checkBoxloadingImpl implements checkBoxloading {
  const _$checkBoxloadingImpl();

  @override
  String toString() {
    return 'CheckBoxState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkBoxloadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<List<bool>> checkList, int hash) loaded,
    required TResult Function(String e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<List<bool>> checkList, int hash)? loaded,
    TResult? Function(String e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<List<bool>> checkList, int hash)? loaded,
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
    required TResult Function(checkBoxinitial value) initial,
    required TResult Function(checkBoxloading value) loading,
    required TResult Function(checkBoxloaded value) loaded,
    required TResult Function(checkBoxerror value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkBoxinitial value)? initial,
    TResult? Function(checkBoxloading value)? loading,
    TResult? Function(checkBoxloaded value)? loaded,
    TResult? Function(checkBoxerror value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkBoxinitial value)? initial,
    TResult Function(checkBoxloading value)? loading,
    TResult Function(checkBoxloaded value)? loaded,
    TResult Function(checkBoxerror value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class checkBoxloading implements CheckBoxState {
  const factory checkBoxloading() = _$checkBoxloadingImpl;
}

/// @nodoc
abstract class _$$checkBoxloadedImplCopyWith<$Res> {
  factory _$$checkBoxloadedImplCopyWith(_$checkBoxloadedImpl value,
          $Res Function(_$checkBoxloadedImpl) then) =
      __$$checkBoxloadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<bool>> checkList, int hash});
}

/// @nodoc
class __$$checkBoxloadedImplCopyWithImpl<$Res>
    extends _$CheckBoxStateCopyWithImpl<$Res, _$checkBoxloadedImpl>
    implements _$$checkBoxloadedImplCopyWith<$Res> {
  __$$checkBoxloadedImplCopyWithImpl(
      _$checkBoxloadedImpl _value, $Res Function(_$checkBoxloadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkList = null,
    Object? hash = null,
  }) {
    return _then(_$checkBoxloadedImpl(
      checkList: null == checkList
          ? _value._checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as List<List<bool>>,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$checkBoxloadedImpl implements checkBoxloaded {
  const _$checkBoxloadedImpl(
      {required final List<List<bool>> checkList, required this.hash})
      : _checkList = checkList;

  final List<List<bool>> _checkList;
  @override
  List<List<bool>> get checkList {
    if (_checkList is EqualUnmodifiableListView) return _checkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkList);
  }

  @override
  final int hash;

  @override
  String toString() {
    return 'CheckBoxState.loaded(checkList: $checkList, hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkBoxloadedImpl &&
            const DeepCollectionEquality()
                .equals(other._checkList, _checkList) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checkList), hash);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$checkBoxloadedImplCopyWith<_$checkBoxloadedImpl> get copyWith =>
      __$$checkBoxloadedImplCopyWithImpl<_$checkBoxloadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<List<bool>> checkList, int hash) loaded,
    required TResult Function(String e) error,
  }) {
    return loaded(checkList, hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<List<bool>> checkList, int hash)? loaded,
    TResult? Function(String e)? error,
  }) {
    return loaded?.call(checkList, hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<List<bool>> checkList, int hash)? loaded,
    TResult Function(String e)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(checkList, hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkBoxinitial value) initial,
    required TResult Function(checkBoxloading value) loading,
    required TResult Function(checkBoxloaded value) loaded,
    required TResult Function(checkBoxerror value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkBoxinitial value)? initial,
    TResult? Function(checkBoxloading value)? loading,
    TResult? Function(checkBoxloaded value)? loaded,
    TResult? Function(checkBoxerror value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkBoxinitial value)? initial,
    TResult Function(checkBoxloading value)? loading,
    TResult Function(checkBoxloaded value)? loaded,
    TResult Function(checkBoxerror value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class checkBoxloaded implements CheckBoxState {
  const factory checkBoxloaded(
      {required final List<List<bool>> checkList,
      required final int hash}) = _$checkBoxloadedImpl;

  List<List<bool>> get checkList;
  int get hash;

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$checkBoxloadedImplCopyWith<_$checkBoxloadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkBoxerrorImplCopyWith<$Res> {
  factory _$$checkBoxerrorImplCopyWith(
          _$checkBoxerrorImpl value, $Res Function(_$checkBoxerrorImpl) then) =
      __$$checkBoxerrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$checkBoxerrorImplCopyWithImpl<$Res>
    extends _$CheckBoxStateCopyWithImpl<$Res, _$checkBoxerrorImpl>
    implements _$$checkBoxerrorImplCopyWith<$Res> {
  __$$checkBoxerrorImplCopyWithImpl(
      _$checkBoxerrorImpl _value, $Res Function(_$checkBoxerrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$checkBoxerrorImpl(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkBoxerrorImpl implements checkBoxerror {
  const _$checkBoxerrorImpl({required this.e});

  @override
  final String e;

  @override
  String toString() {
    return 'CheckBoxState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkBoxerrorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$checkBoxerrorImplCopyWith<_$checkBoxerrorImpl> get copyWith =>
      __$$checkBoxerrorImplCopyWithImpl<_$checkBoxerrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<List<bool>> checkList, int hash) loaded,
    required TResult Function(String e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<List<bool>> checkList, int hash)? loaded,
    TResult? Function(String e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<List<bool>> checkList, int hash)? loaded,
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
    required TResult Function(checkBoxinitial value) initial,
    required TResult Function(checkBoxloading value) loading,
    required TResult Function(checkBoxloaded value) loaded,
    required TResult Function(checkBoxerror value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkBoxinitial value)? initial,
    TResult? Function(checkBoxloading value)? loading,
    TResult? Function(checkBoxloaded value)? loaded,
    TResult? Function(checkBoxerror value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkBoxinitial value)? initial,
    TResult Function(checkBoxloading value)? loading,
    TResult Function(checkBoxloaded value)? loaded,
    TResult Function(checkBoxerror value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class checkBoxerror implements CheckBoxState {
  const factory checkBoxerror({required final String e}) = _$checkBoxerrorImpl;

  String get e;

  /// Create a copy of CheckBoxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$checkBoxerrorImplCopyWith<_$checkBoxerrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
