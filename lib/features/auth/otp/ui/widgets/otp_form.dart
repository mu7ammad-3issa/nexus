import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/validators.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/auth/otp/logic/verify_otp_cubit.dart';
import 'package:pinput/pinput.dart';

import '../../data/models/verify_otp_request_body.dart';

class OtpForm extends StatefulWidget {
  final String email;
  const OtpForm({super.key, required this.email});

  @override
  State<OtpForm> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    const fillColor = Color.fromRGBO(243, 246, 249, 0);

    final defaultPinTheme = PinTheme(
      width: 48,
      height: 48,
      textStyle: const TextStyle(
        fontSize: 22,
        color: ColorsManager.lightGray,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorsManager.grey200),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: context.read<VerifyOtpCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              length: 6,
              controller: context.read<VerifyOtpCubit>().pinController,
              focusNode: context.read<VerifyOtpCubit>().focusNode,
              autofocus: true,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              validator: Validators.validateOtp,
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
                validateThenSubmit(context);
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Row(
                children: [
                  Container(
                    margin: context.only(left: 9),
                    width: 2,
                    height: 28,
                    color: ColorsManager.lightGray,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(color: ColorsManager.appColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  border: Border.all(color: ColorsManager.appColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          verticalSpace(167),
          AppTextButton(
            text: 'Verify',
            onPressed: () {
              validateThenSubmit(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenSubmit(BuildContext context) {
    context.read<VerifyOtpCubit>().focusNode.unfocus();
    if (context.read<VerifyOtpCubit>().formKey.currentState!.validate()) {
      context.read<VerifyOtpCubit>().emitVerifyOtpStates(
            VerifyOtpRequestBody(
              email: widget.email,
              otp: context.read<VerifyOtpCubit>().pinController.text,
            ),
          );
    }
  }
}
