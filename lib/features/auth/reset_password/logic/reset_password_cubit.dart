import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/auth/reset_password/data/models/reset_password_request_body.dart';
import 'package:nexus/features/auth/reset_password/data/repos/reset_password_repo.dart';
import 'package:nexus/features/auth/reset_password/logic/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _resetPasswordRepo;
  ResetPasswordCubit(this._resetPasswordRepo)
      : super(const ResetPasswordState.resetPasswordInitial());

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitResetPasswordStates(
      ResetPasswordRequestBody resetPasswordRequestBody) async {
    emit(const ResetPasswordState.resetPasswordLoading());
    final response =
        await _resetPasswordRepo.resetPassword(resetPasswordRequestBody);
    response.when(
      success: (data) {
        emit(ResetPasswordState.resetPasswordSuccess(data));
      },
      failure: (errorMessage) {
        emit(ResetPasswordState.resetPasswordError(errorMessage));
      },
    );
  }
}
