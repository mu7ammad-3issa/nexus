// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatbotState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatBotInitial,
    required TResult Function() chatBotLoading,
    required TResult Function(List<MessageModel> messages) chatBotSuccess,
    required TResult Function(String message) chatBotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatBotInitial,
    TResult? Function()? chatBotLoading,
    TResult? Function(List<MessageModel> messages)? chatBotSuccess,
    TResult? Function(String message)? chatBotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatBotInitial,
    TResult Function()? chatBotLoading,
    TResult Function(List<MessageModel> messages)? chatBotSuccess,
    TResult Function(String message)? chatBotError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatBotInitial<T> value) chatBotInitial,
    required TResult Function(ChatBotLoading<T> value) chatBotLoading,
    required TResult Function(ChatBotSuccess<T> value) chatBotSuccess,
    required TResult Function(ChatBotError<T> value) chatBotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult? Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult? Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult? Function(ChatBotError<T> value)? chatBotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult Function(ChatBotError<T> value)? chatBotError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotStateCopyWith<T, $Res> {
  factory $ChatbotStateCopyWith(
          ChatbotState<T> value, $Res Function(ChatbotState<T>) then) =
      _$ChatbotStateCopyWithImpl<T, $Res, ChatbotState<T>>;
}

/// @nodoc
class _$ChatbotStateCopyWithImpl<T, $Res, $Val extends ChatbotState<T>>
    implements $ChatbotStateCopyWith<T, $Res> {
  _$ChatbotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatBotInitialImplCopyWith<T, $Res> {
  factory _$$ChatBotInitialImplCopyWith(_$ChatBotInitialImpl<T> value,
          $Res Function(_$ChatBotInitialImpl<T>) then) =
      __$$ChatBotInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChatBotInitialImplCopyWithImpl<T, $Res>
    extends _$ChatbotStateCopyWithImpl<T, $Res, _$ChatBotInitialImpl<T>>
    implements _$$ChatBotInitialImplCopyWith<T, $Res> {
  __$$ChatBotInitialImplCopyWithImpl(_$ChatBotInitialImpl<T> _value,
      $Res Function(_$ChatBotInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatBotInitialImpl<T> implements _ChatBotInitial<T> {
  const _$ChatBotInitialImpl();

  @override
  String toString() {
    return 'ChatbotState<$T>.chatBotInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatBotInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatBotInitial,
    required TResult Function() chatBotLoading,
    required TResult Function(List<MessageModel> messages) chatBotSuccess,
    required TResult Function(String message) chatBotError,
  }) {
    return chatBotInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatBotInitial,
    TResult? Function()? chatBotLoading,
    TResult? Function(List<MessageModel> messages)? chatBotSuccess,
    TResult? Function(String message)? chatBotError,
  }) {
    return chatBotInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatBotInitial,
    TResult Function()? chatBotLoading,
    TResult Function(List<MessageModel> messages)? chatBotSuccess,
    TResult Function(String message)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotInitial != null) {
      return chatBotInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatBotInitial<T> value) chatBotInitial,
    required TResult Function(ChatBotLoading<T> value) chatBotLoading,
    required TResult Function(ChatBotSuccess<T> value) chatBotSuccess,
    required TResult Function(ChatBotError<T> value) chatBotError,
  }) {
    return chatBotInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult? Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult? Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult? Function(ChatBotError<T> value)? chatBotError,
  }) {
    return chatBotInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult Function(ChatBotError<T> value)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotInitial != null) {
      return chatBotInitial(this);
    }
    return orElse();
  }
}

abstract class _ChatBotInitial<T> implements ChatbotState<T> {
  const factory _ChatBotInitial() = _$ChatBotInitialImpl<T>;
}

/// @nodoc
abstract class _$$ChatBotLoadingImplCopyWith<T, $Res> {
  factory _$$ChatBotLoadingImplCopyWith(_$ChatBotLoadingImpl<T> value,
          $Res Function(_$ChatBotLoadingImpl<T>) then) =
      __$$ChatBotLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChatBotLoadingImplCopyWithImpl<T, $Res>
    extends _$ChatbotStateCopyWithImpl<T, $Res, _$ChatBotLoadingImpl<T>>
    implements _$$ChatBotLoadingImplCopyWith<T, $Res> {
  __$$ChatBotLoadingImplCopyWithImpl(_$ChatBotLoadingImpl<T> _value,
      $Res Function(_$ChatBotLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatBotLoadingImpl<T> implements ChatBotLoading<T> {
  const _$ChatBotLoadingImpl();

  @override
  String toString() {
    return 'ChatbotState<$T>.chatBotLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatBotLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatBotInitial,
    required TResult Function() chatBotLoading,
    required TResult Function(List<MessageModel> messages) chatBotSuccess,
    required TResult Function(String message) chatBotError,
  }) {
    return chatBotLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatBotInitial,
    TResult? Function()? chatBotLoading,
    TResult? Function(List<MessageModel> messages)? chatBotSuccess,
    TResult? Function(String message)? chatBotError,
  }) {
    return chatBotLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatBotInitial,
    TResult Function()? chatBotLoading,
    TResult Function(List<MessageModel> messages)? chatBotSuccess,
    TResult Function(String message)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotLoading != null) {
      return chatBotLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatBotInitial<T> value) chatBotInitial,
    required TResult Function(ChatBotLoading<T> value) chatBotLoading,
    required TResult Function(ChatBotSuccess<T> value) chatBotSuccess,
    required TResult Function(ChatBotError<T> value) chatBotError,
  }) {
    return chatBotLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult? Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult? Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult? Function(ChatBotError<T> value)? chatBotError,
  }) {
    return chatBotLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult Function(ChatBotError<T> value)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotLoading != null) {
      return chatBotLoading(this);
    }
    return orElse();
  }
}

abstract class ChatBotLoading<T> implements ChatbotState<T> {
  const factory ChatBotLoading() = _$ChatBotLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ChatBotSuccessImplCopyWith<T, $Res> {
  factory _$$ChatBotSuccessImplCopyWith(_$ChatBotSuccessImpl<T> value,
          $Res Function(_$ChatBotSuccessImpl<T>) then) =
      __$$ChatBotSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$ChatBotSuccessImplCopyWithImpl<T, $Res>
    extends _$ChatbotStateCopyWithImpl<T, $Res, _$ChatBotSuccessImpl<T>>
    implements _$$ChatBotSuccessImplCopyWith<T, $Res> {
  __$$ChatBotSuccessImplCopyWithImpl(_$ChatBotSuccessImpl<T> _value,
      $Res Function(_$ChatBotSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatBotSuccessImpl<T>(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ChatBotSuccessImpl<T> implements ChatBotSuccess<T> {
  const _$ChatBotSuccessImpl(final List<MessageModel> messages)
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatbotState<$T>.chatBotSuccess(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBotSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBotSuccessImplCopyWith<T, _$ChatBotSuccessImpl<T>> get copyWith =>
      __$$ChatBotSuccessImplCopyWithImpl<T, _$ChatBotSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatBotInitial,
    required TResult Function() chatBotLoading,
    required TResult Function(List<MessageModel> messages) chatBotSuccess,
    required TResult Function(String message) chatBotError,
  }) {
    return chatBotSuccess(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatBotInitial,
    TResult? Function()? chatBotLoading,
    TResult? Function(List<MessageModel> messages)? chatBotSuccess,
    TResult? Function(String message)? chatBotError,
  }) {
    return chatBotSuccess?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatBotInitial,
    TResult Function()? chatBotLoading,
    TResult Function(List<MessageModel> messages)? chatBotSuccess,
    TResult Function(String message)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotSuccess != null) {
      return chatBotSuccess(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatBotInitial<T> value) chatBotInitial,
    required TResult Function(ChatBotLoading<T> value) chatBotLoading,
    required TResult Function(ChatBotSuccess<T> value) chatBotSuccess,
    required TResult Function(ChatBotError<T> value) chatBotError,
  }) {
    return chatBotSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult? Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult? Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult? Function(ChatBotError<T> value)? chatBotError,
  }) {
    return chatBotSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult Function(ChatBotError<T> value)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotSuccess != null) {
      return chatBotSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatBotSuccess<T> implements ChatbotState<T> {
  const factory ChatBotSuccess(final List<MessageModel> messages) =
      _$ChatBotSuccessImpl<T>;

  List<MessageModel> get messages;

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBotSuccessImplCopyWith<T, _$ChatBotSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatBotErrorImplCopyWith<T, $Res> {
  factory _$$ChatBotErrorImplCopyWith(_$ChatBotErrorImpl<T> value,
          $Res Function(_$ChatBotErrorImpl<T>) then) =
      __$$ChatBotErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChatBotErrorImplCopyWithImpl<T, $Res>
    extends _$ChatbotStateCopyWithImpl<T, $Res, _$ChatBotErrorImpl<T>>
    implements _$$ChatBotErrorImplCopyWith<T, $Res> {
  __$$ChatBotErrorImplCopyWithImpl(
      _$ChatBotErrorImpl<T> _value, $Res Function(_$ChatBotErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatBotErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatBotErrorImpl<T> implements ChatBotError<T> {
  const _$ChatBotErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatbotState<$T>.chatBotError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBotErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBotErrorImplCopyWith<T, _$ChatBotErrorImpl<T>> get copyWith =>
      __$$ChatBotErrorImplCopyWithImpl<T, _$ChatBotErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatBotInitial,
    required TResult Function() chatBotLoading,
    required TResult Function(List<MessageModel> messages) chatBotSuccess,
    required TResult Function(String message) chatBotError,
  }) {
    return chatBotError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatBotInitial,
    TResult? Function()? chatBotLoading,
    TResult? Function(List<MessageModel> messages)? chatBotSuccess,
    TResult? Function(String message)? chatBotError,
  }) {
    return chatBotError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatBotInitial,
    TResult Function()? chatBotLoading,
    TResult Function(List<MessageModel> messages)? chatBotSuccess,
    TResult Function(String message)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotError != null) {
      return chatBotError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatBotInitial<T> value) chatBotInitial,
    required TResult Function(ChatBotLoading<T> value) chatBotLoading,
    required TResult Function(ChatBotSuccess<T> value) chatBotSuccess,
    required TResult Function(ChatBotError<T> value) chatBotError,
  }) {
    return chatBotError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult? Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult? Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult? Function(ChatBotError<T> value)? chatBotError,
  }) {
    return chatBotError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatBotInitial<T> value)? chatBotInitial,
    TResult Function(ChatBotLoading<T> value)? chatBotLoading,
    TResult Function(ChatBotSuccess<T> value)? chatBotSuccess,
    TResult Function(ChatBotError<T> value)? chatBotError,
    required TResult orElse(),
  }) {
    if (chatBotError != null) {
      return chatBotError(this);
    }
    return orElse();
  }
}

abstract class ChatBotError<T> implements ChatbotState<T> {
  const factory ChatBotError(final String message) = _$ChatBotErrorImpl<T>;

  String get message;

  /// Create a copy of ChatbotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBotErrorImplCopyWith<T, _$ChatBotErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
