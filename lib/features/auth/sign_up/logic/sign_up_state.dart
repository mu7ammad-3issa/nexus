import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.signUpInitial() = _Initial;
  const factory SignUpState.signUpLoading() = SignupLoading;
  const factory SignUpState.signUpSuccess(T data) = SignupSuccess<T>;
  const factory SignUpState.signUpError(String errorMessage) = SignupError;
}
