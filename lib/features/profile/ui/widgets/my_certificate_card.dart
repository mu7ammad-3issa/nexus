import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class MyCertificateCard extends StatelessWidget {
  final String? title;
  final String? completionDate;
  final VoidCallback? onDownloadPressed;

  const MyCertificateCard(
      {super.key, this.title, this.completionDate, this.onDownloadPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        image: const DecorationImage(
          image: AssetImage(
            Assets.imagesMyCertificateCardBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                context.only(right: 12.w, left: 12.w, top: 18.h, bottom: 22.h),
            child: Image.asset(Assets.imagesCertificate),
          ),
          Text(
            'Fire Safety Training',
            style: AppStyles.aldrichRegular18Violet50,
          ),
          verticalSpace(30.h),
          Padding(
            padding: context.horizontal(8.w),
            // CertificateDetails
            child: Row(
              children: [
                SvgPicture.asset(Assets.iconsMedal),
                horizontalSpace(2),
                Text(
                  'Completed: Jan 15, 2024',
                  style: AppStyles.aldrichRegular12Violet50,
                ),
                horizontalSpace(24.w),
                TextButton(
                  onPressed: () {
                    // Handle the button press here
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Download PDF',
                      style: AppStyles.aldrichRegular12Violet50.copyWith(
                        color: ColorsManager.green500,
                        decoration: TextDecoration.underline,
                        decorationColor: ColorsManager.green500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(30.h),
        ],
      ),
    );
  }
}
