import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/plans/widgets/subscription_header.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({
    super.key,
  });

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int? _selectedPlan; // 0 for 1-month, 1 for 6-month, 2 for 1-year
  late String _planTitle;
  late String _planImage;
  late List<String> _features;
  String _planBackgroundImage = Assets.imagesSubscriptionBackground;

  void _updatePlanDetails(int? value) {
    setState(() {
      _selectedPlan = value!;
      if (_selectedPlan == 0) {
        _planTitle = "GET BASIC";
        _planImage = Assets.imagesBasicPlan;
        _planBackgroundImage = Assets.imagesSubscriptionBackground;
        _features = [
          "LIMITED VR TRAINING",
          "ACCESS TO HOME SCENARIO",
        ];
      } else if (_selectedPlan == 1) {
        _planTitle = "GET PREMIUM";
        _planImage = Assets.imagesPremiumPlan;
        _planBackgroundImage = Assets.imagesPremiumBackground;
        _features = [
          "AI CHATBOT SUPPORT",
          "HOME & FACTORY SCENARIOS",
          "FULL VR TRAINING ACCESS",
          "CERTIFICATION",
        ];
      } else if (_selectedPlan == 2) {
        _planTitle = "GET PREMIUM";
        _planImage = Assets.imagesPremiumPlan;
        _features = [
          "UNLIMITED VR TRAINING",
          "ALL SCENARIOS (HOME, FACTORY, ...",
          "AI CHATBOT + BURN DETECTION",
          "MULTI-USER & CUSTOM REPORTS",
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    _planBackgroundImage,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(25.h),
                  _selectedPlan == null
                      ? const CustomHeader(
                          text: 'Choose Your Plan',
                        )
                      : SubscriptionHeader(
                          planTitle: _planTitle,
                          planImage: _planImage,
                          selectedPlan: _selectedPlan!,
                        ),
                  _selectedPlan == null
                      ? verticalSpace(55.h)
                      : verticalSpace(0),
                  _selectedPlan == null
                      ? Text(
                          'Find the perfect plan to access immersive VR training and enhance your emergency preparedness.',
                          style: AppStyles.aldrichRegular14Violet50,
                          textAlign: TextAlign.center,
                        )
                      : verticalSpace(36.h),
                  _selectedPlan == null
                      ? verticalSpace(36.h)
                      : verticalSpace(0),
                  // Plan Cards
                  _buildPlanCard(
                    value: 0,
                    duration: '1 Month',
                    description: 'that’s Basic Plan',
                    price: '0.0 EGP',
                    planType: 'GET BASIC',
                  ),
                  verticalSpace(16.h),
                  _buildPlanCard(
                    value: 1,
                    duration: '6 Month',
                    description: 'that’s Premium Plan',
                    planType: 'GET PREMIUM',
                    price: '310 EGP',
                  ),
                  verticalSpace(16.h),
                  _buildPlanCard(
                    value: 2,
                    duration: '1 Year',
                    description: 'that’s Premium Plan',
                    planType: 'GET PREMIUM',
                    price: '620 EGP',
                  ),
                  verticalSpace(36.h),
                  // Page footer
                  _selectedPlan == null
                      ? Padding(
                          padding: context.horizontal(24.w),
                          child: Text(
                            'Subscribe to a plan and unlock full access to immersive VR training. Enjoy exclusive features, AI support, and certification. Cancel anytime!',
                            style: AppStyles.aldrichRegular14Violet50.copyWith(
                              color: ColorsManager.violet200,
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            ..._features.map(
                              (feature) => Padding(
                                padding: context.horizontal(24.w),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(Assets.iconsCheckCircle),
                                    horizontalSpace(7),
                                    Text(
                                      feature,
                                      style: AppStyles.aldrichRegular14Violet50
                                          .copyWith(
                                        color: ColorsManager.white,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            verticalSpace(35.h),
                            AppTextButton(
                              text: 'Get started',
                              onPressed: () {},
                            ),
                            verticalSpace(35.h),
                          ],
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCard({
    required int value,
    required String duration,
    required String planType,
    required String description,
    required String price,
  }) {
    return Padding(
      padding: context.horizontal(25.w),
      child: Container(
        padding: context.symmetric(horizontal: 15.w, vertical: 26.h),
        decoration: BoxDecoration(
          border: _selectedPlan == value
              ? Border.all(
                  color: _selectedPlan == 0
                      ? Constants.appColor
                      : ColorsManager.premium,
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
                groupValue: _selectedPlan,
                onChanged: _updatePlanDetails,
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
                    description,
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
