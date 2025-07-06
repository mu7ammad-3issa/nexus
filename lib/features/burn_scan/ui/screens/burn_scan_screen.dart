import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/burn_scan/logic/burn_scan_cubit.dart';

import '../../../../core/animations/custom_loading_indicator.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/burn_scan_state.dart';

class BurnScanScreen extends StatefulWidget {
  const BurnScanScreen({super.key});

  @override
  State<BurnScanScreen> createState() => _BurnScanScreenState();
}

class _BurnScanScreenState extends State<BurnScanScreen> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  // Function to handle image selection
  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  void _showImageOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: ColorsManager.violet500,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: context.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.camera_alt,
                  color: ColorsManager.green500,
                ),
                title: Text(
                  'Take Photo',
                  style: AppStyles.aldrichRegular14Violet50,
                ),
                onTap: () async {
                  _pickImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo_library,
                  color: ColorsManager.green500,
                ),
                title: Text(
                  'Choose from Gallery',
                  style: AppStyles.aldrichRegular14Violet50,
                ),
                onTap: () async {
                  _pickImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.cancel,
                  color: ColorsManager.deletionColor,
                ),
                title: Text(
                  'Cancel',
                  style: AppStyles.aldrichRegular14Violet50,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<BurnScanCubit, BurnScanState>(
          buildWhen: (previous, current) =>
              current is burnScanLoading ||
              current is burnScanSuccess ||
              current is burnScanError,
          listener: (context, state) {
            state.whenOrNull(
              burnScanSuccess: (response) {
                final burnDetails = response.result;
                context.pushNamed(
                  Routes.classificationScreen,
                  arguments: burnDetails,
                );
              },
              burnScanError: (errorMsg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMsg),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            final isLoading = state is burnScanLoading;

            return Column(
              children: [
                verticalSpace(40),
                const CustomHeader(text: 'Burn Scan'),
                verticalSpace(119),
                if (isLoading)
                  const CustomLoadingIndicator(text: 'Analyzing...')
                else if (_selectedImage != null)
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.file(
                          _selectedImage!,
                          width: 250.w,
                          height: 250.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedImage = null;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 130.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.appColor.withOpacity(0.15),
                        ),
                      ),
                      Container(
                        width: 109.w,
                        height: 109.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.appColor.withOpacity(0.38),
                        ),
                      ),
                      Container(
                        width: 90.w,
                        height: 90.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.appColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.iconsScanInlined,
                            width: 45.w,
                            height: 45.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                verticalSpace(42),
                Text(
                  _selectedImage == null
                      ? 'Please show your burn hand to scan it'
                      : 'Image selected. Ready to analyze.',
                  style: AppStyles.aldrichRegular14Violet50.copyWith(
                    color: ColorsManager.violet200,
                  ),
                ),
                verticalSpace(122),
                AppTextButton(
                  text: _selectedImage == null ? 'Get Started' : 'Analyze Burn',
                  onPressed: () {
                    if (_selectedImage == null) {
                      _showImageOptionsBottomSheet(context);
                    } else {
                      context
                          .read<BurnScanCubit>()
                          .analyzeBurn(_selectedImage!);
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
