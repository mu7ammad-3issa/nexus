import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class EditProfileInfo extends StatelessWidget {
  final String infoTitle;
  final String initialValue;

  const EditProfileInfo({
    super.key,
    required this.infoTitle,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller =
        TextEditingController(text: initialValue);

    return Padding(
      padding: context.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            infoTitle,
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
          verticalSpace(10),
          AppTextFormField(
            controller: controller,
            backgroundColor: Colors.transparent,
            inputTextStyle: AppStyles.aldrichRegular12Violet50,
          ),
        ],
      ),
    );
  }
}
