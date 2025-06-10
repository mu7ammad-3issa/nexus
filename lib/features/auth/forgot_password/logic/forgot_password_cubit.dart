import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/auth/forgot_password/data/models/forgot_password_request_body.dart';
import 'package:nexus/features/auth/forgot_password/data/repos/forgot_password_repo.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepo _forgotPasswordRepo;
  ForgotPasswordCubit(this._forgotPasswordRepo)
      : super(const ForgotPasswordState.forgotPasswordinitial());

  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitForgotPasswordStates() async {
    emit(const ForgotPasswordState.forgotPasswordLoading());
    final response = await _forgotPasswordRepo.forgotPassword(
      ForgotPasswordRequestBody(email: emailController.text),
    );
    response.when(
      success: (data) {
        emit(ForgotPasswordState.forgotPasswordSuccess(data));
      },
      failure: (error) {
        emit(ForgotPasswordState.forgotPasswordError(error));
      },
    );
  }
}
