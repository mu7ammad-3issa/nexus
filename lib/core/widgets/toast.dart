// import 'package:code_base/src/core/helpers/base_extensions/context/mediaQuery.dart';
// import 'package:code_base/src/core/helpers/base_widgets/text.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:nexus/core/helpers/base_widgets/text.dart';

// class AppToast
// {
//   static final toast = FToast();

//   static void showToast(BuildContext context,{required String msg, Color? color})
//   {
//     toast.init(context);
//     toast.showToast(
//       child: Align(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: color?? Colors.green,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 28),
//             child: AppText(
//               text: msg,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       toastDuration: const Duration(seconds: 2),
//       positionedToastBuilder: (context, child)
//       {
//         return Positioned(
//           bottom: context.setWidth(5),
//           left: context.setWidth(4),
//           right: context.setWidth(4),
//           child: child,
//         );
//       },
//       gravity: ToastGravity.BOTTOM,
//     );
//   }
// }