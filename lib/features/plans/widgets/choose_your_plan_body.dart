import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ChooseYourPlanBody extends StatefulWidget {
  const ChooseYourPlanBody({super.key});

  @override
  _ChooseYourPlanScreenState createState() => _ChooseYourPlanScreenState();
}

class _ChooseYourPlanScreenState extends State<ChooseYourPlanBody> {
  // Variable to track the selected plan
  int _selectedPlan = 1; // 0 for 1-month, 1 for 6-month, 2 for 1-year

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpace(40.h),
        // Title
        const CustomHeader(
          text: 'Choose Your Plan',
        ),
        verticalSpace(55.h),
        // Description
        Text(
          'Find the perfect plan to access immersive VR training and enhance your emergency preparedness.',
          style: AppStyles.aldrichRegular14Violet50,
          textAlign: TextAlign.center,
        ),
        verticalSpace(36.h),
        // Plan Cards
        _buildPlanCard(
          value: 0,
          groupValue: _selectedPlan,
          duration: '1 Month',
          label: 'that’s Basic Plan',
          price: '0.0 EGP',
          onChanged: (value) {
            setState(() {
              _selectedPlan = value!;
            });
          },
        ),
        verticalSpace(16.h),
        _buildPlanCard(
          value: 1,
          groupValue: _selectedPlan,
          duration: '6 Month',
          label: 'that’s Premium Plan',
          price: '310 EGP',
          onChanged: (value) {
            setState(() {
              _selectedPlan = value!;
            });
          },
        ),
        verticalSpace(16.h),
        _buildPlanCard(
          value: 2,
          groupValue: _selectedPlan,
          duration: '1 Year',
          label: 'that’s Premium Plan',
          price: '620 EGP',
          onChanged: (value) {
            setState(() {
              _selectedPlan = value!;
            });
          },
        ),
        verticalSpace(36.h),
        // Footer Text
        Padding(
          padding: context.horizontal(24.w),
          child: Text(
            'Subscribe to a plan and unlock full access to immersive VR training. Enjoy exclusive features, AI support, and certification. Cancel anytime!',
            style: AppStyles.aldrichRegular14Violet50.copyWith(
              color: ColorsManager.violet200,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlanCard({
    required int value,
    required int groupValue,
    required String duration,
    required String label,
    required String price,
    required ValueChanged<int?> onChanged,
  }) {
    bool isSelected = value == groupValue;

    return Padding(
      padding: context.horizontal(25.w),
      child: Container(
        padding: context.symmetric(horizontal: 15.w, vertical: 26.h),
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(
                  color: Constants.appColor,
                  width: 1,
                )
              : null,
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesPlanCardBg,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            // Radio Button
            Transform.scale(
              scale: 1.3,
              child: Radio<int>(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: ColorsManager.violet300,
                fillColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Constants.appColor;
                    }
                    return ColorsManager.violet300;
                  },
                ),
              ),
            ),
            horizontalSpace(10.w),
            // Plan Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    duration,
                    style: AppStyles.aldrichRegular16Violet100.copyWith(
                      color: Constants.appColor,
                    ),
                  ),
                  Text(
                    label,
                    style: AppStyles.aldrichRegular12Violet50.copyWith(
                      color: ColorsManager.violet200,
                    ),
                  ),
                ],
              ),
            ),
            // Price
            Text(
              price,
              style: AppStyles.aldrichRegular16Violet100.copyWith(
                color: ColorsManager.violet50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
