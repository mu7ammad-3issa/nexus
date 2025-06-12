import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_state.freezed.dart';

@freezed
class VerifyOtpState<T> with _$VerifyOtpState<T> {
  const factory VerifyOtpState.verifyOtpInitial() = _verifyOtpInitial;
  const factory VerifyOtpState.verifyOtpLoading() = verifyOtpLoading;
  const factory VerifyOtpState.verifyOtpSuccess(T data) = verifyOtpSuccess<T>;
  const factory VerifyOtpState.verifyOtpError(String errorMessage) =
      verifyOtpError;
}
