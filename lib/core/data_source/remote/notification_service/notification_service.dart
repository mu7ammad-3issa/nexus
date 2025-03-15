// import 'dart:async';
// import 'dart:developer';
// import 'package:firebase_messaging/firebase_messaging.dart';

// import 'local_notification.dart';

// class NotificationServiceImpl{

//   late FirebaseMessaging messaging;

//   NotificationServiceImpl(){
//     messaging = FirebaseMessaging.instance;
//     LocalNotificationService.getInstance.initializeNotificationService();
//   }

//   Future<void> requestPermissions()async{
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//   }


//   Future<String?> _getDeviceToken()async{
//     final String? deviceToken = await messaging.getToken();
//     log(deviceToken.toString());
//     return deviceToken;
//   }

//   Future<void> _handleForegroundNotification()async{
//     FirebaseMessaging.onMessage.listen((event) {
//       LocalNotificationService.getInstance
//           .showNotificationWithActions(event);
//     });
//   }

//   Future<void> _handleBackgroundNotification() async{
//     FirebaseMessaging.onBackgroundMessage(_messagingBackgroundHandler);
//   }

//   Future<void> _handleOpenedAppNotification() async{
//     FirebaseMessaging.onMessageOpenedApp.listen((event) {
//       handleNotificationTap(event);
//     });
//   }

//   Future<void> _setForegroundNotificationOptions() async {
//     messaging.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }


//   Future<void> initFirebaseMessagingService()async {
//     await Future.wait([
//       _getDeviceToken(),
//       _handleBackgroundNotification(),
//       _handleForegroundNotification(),
//       _handleOpenedAppNotification(),
//       _setForegroundNotificationOptions(),
//     ]);
//   }
// }


// Future<void> _messagingBackgroundHandler(RemoteMessage message)async{
//   LocalNotificationService.getInstance
//       .showNotificationWithActions(message);
// }
