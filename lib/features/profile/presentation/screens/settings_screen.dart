import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/profile/presentation/screens/about_us_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesSettingsBackground,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40.h),
                  const CustomHeader(
                    text: 'Settings',
                  ),
                  verticalSpace(50.h),
                  Padding(
                    padding: context.only(left: 24.w),
                    child: Text(
                      'Interface',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.violet50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.only(
                      top: 12,
                      bottom: 27,
                    ),
                    child: _buildListTile(
                      icon: Assets.iconsNotifications,
                      title: 'Notifications',
                      onTap: () {},
                    ),
                  ),
                  // Change Subscription Section
                  Padding(
                    padding: context.only(left: 24.w),
                    child: Text(
                      'Change Subscription',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.violet50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.vertical(24.h),
                    child: _buildListTile(
                      icon: Assets.iconsGoldenStar,
                      title: 'Premium',
                      onTap: () {},
                    ),
                  ),
                  // Support Section
                  Padding(
                    padding: context.only(left: 24.w),
                    child: Text(
                      'Support',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.violet50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.only(
                      top: 18.h,
                      bottom: 50.h,
                      left: 24.w,
                      right: 24.w,
                    ),
                    child: Container(
                      padding: context.vertical(6.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.violet500,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffDADADA).withOpacity(0.08),
                            blurRadius: 20,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: SvgPicture.asset(
                              Assets.iconsExclamationCircle,
                            ),
                            title: Text(
                              'About us',
                              style:
                                  AppStyles.aldrichRegular16Violet100.copyWith(
                                color: ColorsManager.violet50,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorsManager.violet50,
                              size: 20,
                            ),
                            onTap: () {
                              context.navigate(
                                const AboutUsScreen(),
                              );
                            },
                          ),
                          ListTile(
                            leading: SvgPicture.asset(
                              Assets.iconsAccountDelete,
                            ),
                            title: Text(
                              'Delete account',
                              style:
                                  AppStyles.aldrichRegular16Violet100.copyWith(
                                color: ColorsManager.violet50,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorsManager.violet50,
                              size: 20,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                  _buildListTile(
                    icon: Assets.iconsFacebookMessenger,
                    title: 'Contact Us',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (24.w),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.violet500,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffDADADA).withOpacity(0.08),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            icon,
          ),
          title: Text(
            title,
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: ColorsManager.violet50,
            size: 20,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
