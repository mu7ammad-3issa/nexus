// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaderboardInitial,
    required TResult Function() leaderboardLoading,
    required TResult Function(T data) leaderboardSuccess,
    required TResult Function(String error) leaderboardError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaderboardInitial,
    TResult? Function()? leaderboardLoading,
    TResult? Function(T data)? leaderboardSuccess,
    TResult? Function(String error)? leaderboardError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaderboardInitial,
    TResult Function()? leaderboardLoading,
    TResult Function(T data)? leaderboardSuccess,
    TResult Function(String error)? leaderboardError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardInitial<T> value) leaderboardInitial,
    required TResult Function(_LeaderboardLoading<T> value) leaderboardLoading,
    required TResult Function(_LeaderboardSuccess<T> value) leaderboardSuccess,
    required TResult Function(_LeaderboardError<T> value) leaderboardError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult? Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult? Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult? Function(_LeaderboardError<T> value)? leaderboardError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult Function(_LeaderboardError<T> value)? leaderboardError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<T, $Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState<T> value, $Res Function(LeaderboardState<T>) then) =
      _$LeaderboardStateCopyWithImpl<T, $Res, LeaderboardState<T>>;
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<T, $Res, $Val extends LeaderboardState<T>>
    implements $LeaderboardStateCopyWith<T, $Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LeaderboardInitialImplCopyWith<T, $Res> {
  factory _$$LeaderboardInitialImplCopyWith(_$LeaderboardInitialImpl<T> value,
          $Res Function(_$LeaderboardInitialImpl<T>) then) =
      __$$LeaderboardInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LeaderboardInitialImplCopyWithImpl<T, $Res>
    extends _$LeaderboardStateCopyWithImpl<T, $Res, _$LeaderboardInitialImpl<T>>
    implements _$$LeaderboardInitialImplCopyWith<T, $Res> {
  __$$LeaderboardInitialImplCopyWithImpl(_$LeaderboardInitialImpl<T> _value,
      $Res Function(_$LeaderboardInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LeaderboardInitialImpl<T> implements _LeaderboardInitial<T> {
  const _$LeaderboardInitialImpl();

  @override
  String toString() {
    return 'LeaderboardState<$T>.leaderboardInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaderboardInitial,
    required TResult Function() leaderboardLoading,
    required TResult Function(T data) leaderboardSuccess,
    required TResult Function(String error) leaderboardError,
  }) {
    return leaderboardInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaderboardInitial,
    TResult? Function()? leaderboardLoading,
    TResult? Function(T data)? leaderboardSuccess,
    TResult? Function(String error)? leaderboardError,
  }) {
    return leaderboardInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaderboardInitial,
    TResult Function()? leaderboardLoading,
    TResult Function(T data)? leaderboardSuccess,
    TResult Function(String error)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardInitial != null) {
      return leaderboardInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardInitial<T> value) leaderboardInitial,
    required TResult Function(_LeaderboardLoading<T> value) leaderboardLoading,
    required TResult Function(_LeaderboardSuccess<T> value) leaderboardSuccess,
    required TResult Function(_LeaderboardError<T> value) leaderboardError,
  }) {
    return leaderboardInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult? Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult? Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult? Function(_LeaderboardError<T> value)? leaderboardError,
  }) {
    return leaderboardInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult Function(_LeaderboardError<T> value)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardInitial != null) {
      return leaderboardInitial(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardInitial<T> implements LeaderboardState<T> {
  const factory _LeaderboardInitial() = _$LeaderboardInitialImpl<T>;
}

/// @nodoc
abstract class _$$LeaderboardLoadingImplCopyWith<T, $Res> {
  factory _$$LeaderboardLoadingImplCopyWith(_$LeaderboardLoadingImpl<T> value,
          $Res Function(_$LeaderboardLoadingImpl<T>) then) =
      __$$LeaderboardLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LeaderboardLoadingImplCopyWithImpl<T, $Res>
    extends _$LeaderboardStateCopyWithImpl<T, $Res, _$LeaderboardLoadingImpl<T>>
    implements _$$LeaderboardLoadingImplCopyWith<T, $Res> {
  __$$LeaderboardLoadingImplCopyWithImpl(_$LeaderboardLoadingImpl<T> _value,
      $Res Function(_$LeaderboardLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LeaderboardLoadingImpl<T> implements _LeaderboardLoading<T> {
  const _$LeaderboardLoadingImpl();

  @override
  String toString() {
    return 'LeaderboardState<$T>.leaderboardLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaderboardInitial,
    required TResult Function() leaderboardLoading,
    required TResult Function(T data) leaderboardSuccess,
    required TResult Function(String error) leaderboardError,
  }) {
    return leaderboardLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaderboardInitial,
    TResult? Function()? leaderboardLoading,
    TResult? Function(T data)? leaderboardSuccess,
    TResult? Function(String error)? leaderboardError,
  }) {
    return leaderboardLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaderboardInitial,
    TResult Function()? leaderboardLoading,
    TResult Function(T data)? leaderboardSuccess,
    TResult Function(String error)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardLoading != null) {
      return leaderboardLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardInitial<T> value) leaderboardInitial,
    required TResult Function(_LeaderboardLoading<T> value) leaderboardLoading,
    required TResult Function(_LeaderboardSuccess<T> value) leaderboardSuccess,
    required TResult Function(_LeaderboardError<T> value) leaderboardError,
  }) {
    return leaderboardLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult? Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult? Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult? Function(_LeaderboardError<T> value)? leaderboardError,
  }) {
    return leaderboardLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult Function(_LeaderboardError<T> value)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardLoading != null) {
      return leaderboardLoading(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardLoading<T> implements LeaderboardState<T> {
  const factory _LeaderboardLoading() = _$LeaderboardLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LeaderboardSuccessImplCopyWith<T, $Res> {
  factory _$$LeaderboardSuccessImplCopyWith(_$LeaderboardSuccessImpl<T> value,
          $Res Function(_$LeaderboardSuccessImpl<T>) then) =
      __$$LeaderboardSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LeaderboardSuccessImplCopyWithImpl<T, $Res>
    extends _$LeaderboardStateCopyWithImpl<T, $Res, _$LeaderboardSuccessImpl<T>>
    implements _$$LeaderboardSuccessImplCopyWith<T, $Res> {
  __$$LeaderboardSuccessImplCopyWithImpl(_$LeaderboardSuccessImpl<T> _value,
      $Res Function(_$LeaderboardSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LeaderboardSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LeaderboardSuccessImpl<T> implements _LeaderboardSuccess<T> {
  const _$LeaderboardSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LeaderboardState<$T>.leaderboardSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardSuccessImplCopyWith<T, _$LeaderboardSuccessImpl<T>>
      get copyWith => __$$LeaderboardSuccessImplCopyWithImpl<T,
          _$LeaderboardSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaderboardInitial,
    required TResult Function() leaderboardLoading,
    required TResult Function(T data) leaderboardSuccess,
    required TResult Function(String error) leaderboardError,
  }) {
    return leaderboardSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaderboardInitial,
    TResult? Function()? leaderboardLoading,
    TResult? Function(T data)? leaderboardSuccess,
    TResult? Function(String error)? leaderboardError,
  }) {
    return leaderboardSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaderboardInitial,
    TResult Function()? leaderboardLoading,
    TResult Function(T data)? leaderboardSuccess,
    TResult Function(String error)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardSuccess != null) {
      return leaderboardSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardInitial<T> value) leaderboardInitial,
    required TResult Function(_LeaderboardLoading<T> value) leaderboardLoading,
    required TResult Function(_LeaderboardSuccess<T> value) leaderboardSuccess,
    required TResult Function(_LeaderboardError<T> value) leaderboardError,
  }) {
    return leaderboardSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult? Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult? Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult? Function(_LeaderboardError<T> value)? leaderboardError,
  }) {
    return leaderboardSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult Function(_LeaderboardError<T> value)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardSuccess != null) {
      return leaderboardSuccess(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardSuccess<T> implements LeaderboardState<T> {
  const factory _LeaderboardSuccess(final T data) = _$LeaderboardSuccessImpl<T>;

  T get data;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardSuccessImplCopyWith<T, _$LeaderboardSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaderboardErrorImplCopyWith<T, $Res> {
  factory _$$LeaderboardErrorImplCopyWith(_$LeaderboardErrorImpl<T> value,
          $Res Function(_$LeaderboardErrorImpl<T>) then) =
      __$$LeaderboardErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LeaderboardErrorImplCopyWithImpl<T, $Res>
    extends _$LeaderboardStateCopyWithImpl<T, $Res, _$LeaderboardErrorImpl<T>>
    implements _$$LeaderboardErrorImplCopyWith<T, $Res> {
  __$$LeaderboardErrorImplCopyWithImpl(_$LeaderboardErrorImpl<T> _value,
      $Res Function(_$LeaderboardErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LeaderboardErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LeaderboardErrorImpl<T> implements _LeaderboardError<T> {
  const _$LeaderboardErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LeaderboardState<$T>.leaderboardError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardErrorImplCopyWith<T, _$LeaderboardErrorImpl<T>> get copyWith =>
      __$$LeaderboardErrorImplCopyWithImpl<T, _$LeaderboardErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaderboardInitial,
    required TResult Function() leaderboardLoading,
    required TResult Function(T data) leaderboardSuccess,
    required TResult Function(String error) leaderboardError,
  }) {
    return leaderboardError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaderboardInitial,
    TResult? Function()? leaderboardLoading,
    TResult? Function(T data)? leaderboardSuccess,
    TResult? Function(String error)? leaderboardError,
  }) {
    return leaderboardError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaderboardInitial,
    TResult Function()? leaderboardLoading,
    TResult Function(T data)? leaderboardSuccess,
    TResult Function(String error)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardError != null) {
      return leaderboardError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardInitial<T> value) leaderboardInitial,
    required TResult Function(_LeaderboardLoading<T> value) leaderboardLoading,
    required TResult Function(_LeaderboardSuccess<T> value) leaderboardSuccess,
    required TResult Function(_LeaderboardError<T> value) leaderboardError,
  }) {
    return leaderboardError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult? Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult? Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult? Function(_LeaderboardError<T> value)? leaderboardError,
  }) {
    return leaderboardError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardInitial<T> value)? leaderboardInitial,
    TResult Function(_LeaderboardLoading<T> value)? leaderboardLoading,
    TResult Function(_LeaderboardSuccess<T> value)? leaderboardSuccess,
    TResult Function(_LeaderboardError<T> value)? leaderboardError,
    required TResult orElse(),
  }) {
    if (leaderboardError != null) {
      return leaderboardError(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardError<T> implements LeaderboardState<T> {
  const factory _LeaderboardError(final String error) =
      _$LeaderboardErrorImpl<T>;

  String get error;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardErrorImplCopyWith<T, _$LeaderboardErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
