import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/animations/custom_loading_indicator.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/plans/logic/plans_cubit.dart';
import 'package:nexus/features/plans/logic/plans_state.dart';
import 'package:nexus/features/plans/ui/widgets/subscription_header.dart';

import '../data/models/plans_response_model.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({
    super.key,
  });

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  int? _selectedPlanIndex;
  String _planTitle = '';
  String _planImage = '';
  List<String> _features = [];
  String _planBackgroundImage = Assets.imagesSubscriptionBackground;

  void _updatePlanDetails(int? value, PlansResponseModel plan) {
    setState(() {
      _selectedPlanIndex = value;
      if (_selectedPlanIndex != null) {
        final selectedOption = plan.options[_selectedPlanIndex!];
        _planTitle = selectedOption.price == 0 ? 'Get Basic' : 'Get Premium';
        _planImage = selectedOption.price == 0
            ? Assets.imagesBasicPlan
            : Assets.imagesPremiumPlan;
        _planBackgroundImage = selectedOption.price == 0
            ? Assets.imagesSubscriptionBackground
            : Assets.imagesPremiumBackground;
        _features = selectedOption.features.map((f) => f.description).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PlansCubit, PlansState>(
          buildWhen: (previous, current) =>
              current is PlansStateLoading ||
              current is PlansStateSuccess ||
              current is PlansStateError,
          builder: (context, state) {
            return state.maybeWhen(
              plansStateLoading: () => const Center(
                child: CustomLoadingIndicator(),
              ),
              plansStateSuccess: (plans) {
                final plan = plans.first;
                final options = plan.options;

                return Stack(
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
                          _selectedPlanIndex == null
                              ? const CustomHeader(
                                  text: 'Choose Your Plan',
                                )
                              : SubscriptionHeader(
                                  planTitle: _planTitle,
                                  planImage: _planImage,
                                  selectedPlan: _selectedPlanIndex!,
                                ),
                          _selectedPlanIndex == null
                              ? verticalSpace(55.h)
                              : verticalSpace(0),
                          _selectedPlanIndex == null
                              ? Padding(
                                  padding: context.horizontal(16.w),
                                  child: Text(
                                    'Find the perfect plan to access immersive VR training and enhance your emergency preparedness.',
                                    style: AppStyles.aldrichRegular14Violet50,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : verticalSpace(36.h),
                          _selectedPlanIndex == null
                              ? verticalSpace(36.h)
                              : verticalSpace(0),
                          // Plan Cards
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: options.length,
                            separatorBuilder: (context, index) =>
                                verticalSpace(16.h),
                            itemBuilder: (context, index) {
                              final option = options[index];
                              return _buildPlanCard(
                                value: index,
                                option: option,
                                plan: plan,
                              );
                            },
                          ),
                          verticalSpace(36.h),
                          // Page footer
                          _selectedPlanIndex == null
                              ? Padding(
                                  padding: context.horizontal(24.w),
                                  child: Text(
                                    'Subscribe to a plan and unlock full access to immersive VR training. Enjoy exclusive features, AI support, and certification. Cancel anytime!',
                                    textAlign: TextAlign.center,
                                    style: AppStyles.aldrichRegular14Violet50
                                        .copyWith(
                                      color: ColorsManager.violet200,
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    ..._features.map(
                                      (feature) => Padding(
                                        padding: context.only(
                                            left: 24.w,
                                            right: 24.w,
                                            bottom: 8.h),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                Assets.iconsCheckCircle),
                                            horizontalSpace(7),
                                            Expanded(
                                              child: Text(
                                                feature,
                                                style: AppStyles
                                                    .aldrichRegular14Violet50
                                                    .copyWith(
                                                  color: ColorsManager.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    verticalSpace(35.h),
                                    AppTextButton(
                                      text: 'Get started',
                                      onPressed: () {
                                        // context.pushNamed(Routes.paymentScreen);
                                      },
                                    ),
                                    verticalSpace(35.h),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ],
                );
              },
              plansStateError: (error) => const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPlanCard({
    required int value,
    required PlanOption option,
    required PlansResponseModel plan,
  }) {
    return Padding(
      padding: context.horizontal(25.w),
      child: Container(
        padding: context.symmetric(horizontal: 15.w, vertical: 26.h),
        decoration: BoxDecoration(
          border: _selectedPlanIndex == value
              ? Border.all(
                  color: plan.options[value].price == 0
                      ? ColorsManager.appColor
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
                groupValue: _selectedPlanIndex,
                onChanged: (val) => _updatePlanDetails(val, plan),
                activeColor: ColorsManager.violet300,
                fillColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return ColorsManager.appColor;
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
                    option.label,
                    style: AppStyles.aldrichRegular16Violet100.copyWith(
                      color: ColorsManager.appColor,
                    ),
                  ),
                  Text(
                    option.note,
                    style: AppStyles.aldrichRegular12Violet50.copyWith(
                      color: ColorsManager.violet200,
                    ),
                  ),
                ],
              ),
            ),
            // Price
            Text(
              '${option.price} ${option.priceUnit}',
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
