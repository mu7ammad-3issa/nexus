// import 'package:code_base/src/core/helpers/base_widgets/text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// import '../../constants/app_constants.dart';

// class NetworkImageHandler extends StatelessWidget {
//   final String url;
//   const NetworkImageHandler({super.key, required this.url});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
//       child: Image.network(
//         url,
//         fit: BoxFit.fill,
//         loadingBuilder: (context, child, loadingProgress) {
//           if (loadingProgress == null) {
//             return child;
//           } else {
//             return SizedBox(
//                 width: 10.w,
//                 height: 10.h,
//                 child: CircularProgressIndicator(
//                     value: loadingProgress.cumulativeBytesLoaded / 3500000
//                 )
//             );
//           }
//         },
//         errorBuilder: (context, error, stackTrace) => Center(
//           child: AppText(
//             text: 'Failed Load Image',
//             color: Constants.appColor,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CachedNetworkImageHandler extends StatelessWidget {

//   final String url;
//   final double? height;
//   final double? width;

//   const CachedNetworkImageHandler({super.key,
//     required this.url,
//     this.width,
//     this.height
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: url,
//       width: width,
//       height: height,
//       fit: BoxFit.fill,
//       progressIndicatorBuilder: (context, url, downloadProgress) =>
//           CircularProgressIndicator(value: downloadProgress.progress),
//       errorWidget: (context, url, error) => Center(
//         child: AppText(
//           text: 'Failed Load Image',
//           color: Constants.appColor,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }

