// import 'package:in_app_review/in_app_review.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:animated_snack_bar/animated_snack_bar.dart';

// class Launch{
//   static void callPhone({phone}) async {
//     await launchUrl(Uri.parse('tel:$phone'));
//   }

//   static void sendMail(mail) async {
//     await launchUrl(Uri.parse('mailto:$mail'));
//   }

//   static Future<void> share(context)async
//   {
//     final result = await Share.shareWithResult('https://play.google.com/store/apps/details?id=com.app.be_fit&pcampaignid=web_share');

//     if (result.status == ShareResultStatus.success) {
//       AnimatedSnackBar.material(
//           'Thank you for sharing the app!',
//           type: AnimatedSnackBarType.info,
//           mobileSnackBarPosition: MobileSnackBarPosition.bottom
//       ).show(context);
//     }
//   }

// }

// class Rating{
//   static Future<void> rate()async
//   {
//     final InAppReview inAppReview = InAppReview.instance;

//     if (await inAppReview.isAvailable()) {
//       inAppReview.requestReview();
//     }
//   }
// }