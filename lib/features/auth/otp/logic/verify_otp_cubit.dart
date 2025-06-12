import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/auth/otp/data/models/verify_otp_request_body.dart';
import 'package:nexus/features/auth/otp/data/repos/verify_otp_repo.dart';

import 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final VerifyOtpRepo _verifyOtpRepo;
  VerifyOtpCubit(this._verifyOtpRepo)
      : super(const VerifyOtpState.verifyOtpInitial());

  TextEditingController pinController = TextEditingController();
  FocusNode focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void emitVerifyOtpStates(VerifyOtpRequestBody verifyOtpRequestBody) async {
    emit(const VerifyOtpState.verifyOtpLoading());
    final response = await _verifyOtpRepo.verifyOtp(verifyOtpRequestBody);
    response.when(
      success: (data) {
        emit(VerifyOtpState.verifyOtpSuccess(data));
      },
      failure: (errorMessage) {
        emit(VerifyOtpState.verifyOtpError(errorMessage));
      },
    );
  }
}
