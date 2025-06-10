import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:nexus/features/auth/sign_up/logic/sign_up_state.dart';

import '../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.signUpInitial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool isTermsChecked = false;
  bool isTermsValid = true;

  void emitSignUpStates() async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        fullName: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(SignUpState.signUpSuccess(data));
      },
      failure: (error) {
        emit(SignUpState.signUpError(error));
      },
    );
  }
}
