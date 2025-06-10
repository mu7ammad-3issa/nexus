import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState<T> with _$ForgotPasswordState<T> {
  const factory ForgotPasswordState.forgotPasswordinitial() =
      _ForgotPasswordInitial;
  const factory ForgotPasswordState.forgotPasswordLoading() =
      ForgotPasswordLoading;
  const factory ForgotPasswordState.forgotPasswordSuccess(T data) =
      ForgotPasswordSuccess<T>;
  const factory ForgotPasswordState.forgotPasswordError(String errorMessage) =
      ForgotPasswordError;
}
