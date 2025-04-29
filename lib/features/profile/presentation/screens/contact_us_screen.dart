import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/custom_header.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      // mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              Assets.imagesContactUsBackground,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(40.h),
                  const CustomHeader(text: 'Contact Us'),
                  verticalSpace(55.h),
                  Padding(
                    padding: context.symmetric(horizontal: 24.w),
                    //
                    child: Text(
                      'We’d love to hear from you! Get in touch with us for any inquiries or support.',
                      style: AppStyles.aldrichRegular16Violet100.copyWith(
                        color: ColorsManager.violet50,
                      ),
                    ),
                  ),
                  verticalSpace(40.h),
                  // Form Fields
                  _buildTextField('Your Name'),
                  verticalSpace(15.h),
                  _buildTextField('Your Email'),
                  verticalSpace(15.h),
                  _buildTextField('Your Message', maxLines: 5),
                  verticalSpace(30.h),
                  // Send Message Button
                  AppTextButton(
                    text: 'Send Message',
                    onPressed: () {},
                  ),
                  verticalSpace(30.h),
                  // Contact Information

                  Padding(
                    padding: context.symmetric(horizontal: 24.h),
                    child: Container(
                      padding:
                          context.symmetric(vertical: 28.h, horizontal: 18.w),
                      decoration: BoxDecoration(
                        color: const Color(0xffC9C9C9).withOpacity(0.07),
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Contact Information',
                            style: AppStyles.aldrichRegular16Violet100.copyWith(
                              color: ColorsManager.green500,
                            ),
                          ),
                          verticalSpace(16.h),
                          // Email
                          _buildContactInfo(
                            'Email:',
                            'support@nexuesvr.com',
                          ),
                          verticalSpace(16.h),
                          // Phone
                          _buildContactInfo(
                            'Phone:',
                            '(+123) 456-7890',
                          ),
                          verticalSpace(16.h),
                          // Address
                          _buildContactInfo(
                            'Address:',
                            '123 Nexus VR Street, Tech City, MANS',
                          ),
                        ],
                      ),
                    ),
                  ),
                  verticalSpace(40.h),
                  Text(
                    'FOLLOW US',
                    style: AppStyles.aldrichRegular16Violet100.copyWith(
                      color: ColorsManager.green500,
                    ),
                  ),
                  verticalSpace(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          _launchUrl('https://www.instagram.com/nexus_vr10/');
                        },
                        child: Text(
                          'Instagram',
                          style: AppStyles.aldrichRegular16Violet100.copyWith(
                            color: ColorsManager.violet50,
                          ),
                        ),
                      ),
                      Text(
                        ' | ',
                        style: AppStyles.aldrichRegular16Violet100.copyWith(
                          color: ColorsManager.violet50,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'LinkedIn',
                          style: AppStyles.aldrichRegular16Violet100.copyWith(
                            color: ColorsManager.violet50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(129.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTextField(String hintText, {int maxLines = 1}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: TextField(
      maxLines: maxLines,
      style: AppStyles.aldrichRegular12Violet50.copyWith(
        color: ColorsManager.violet50,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.aldrichRegular12Violet50.copyWith(
          color: ColorsManager.violet200,
        ),
        filled: true,
        fillColor: const Color(0xffC9C9C9).withOpacity(0.07),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.r),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _buildContactInfo(String label, String value) {
  return Column(
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: AppStyles.aldrichRegular14Violet50.copyWith(
          color: ColorsManager.white,
        ),
      ),
      Text(
        value,
        style: AppStyles.aldrichRegular14Violet50.copyWith(
          color: ColorsManager.white,
        ),
      ),
    ],
  );
}
