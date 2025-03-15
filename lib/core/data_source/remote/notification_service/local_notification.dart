// import 'dart:convert';
// import 'dart:math';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'navigation_types.dart';

// class LocalNotificationService{

//   late FlutterLocalNotificationsPlugin localNotification;

//   static LocalNotificationService? _service;
//   static LocalNotificationService get getInstance =>
//       _service ??= LocalNotificationService();

//   Future<void> initializeNotificationService()async {
//     AndroidInitializationSettings androidSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');
//     DarwinInitializationSettings iosSettings = const DarwinInitializationSettings(
//         requestAlertPermission: true,
//         requestSoundPermission: true
//     );
//     InitializationSettings initializationSettings = InitializationSettings(
//         android: androidSettings,
//         iOS: iosSettings
//     );
//     localNotification = FlutterLocalNotificationsPlugin();
//     localNotification.initialize(
//         initializationSettings,
//         onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
//         onDidReceiveBackgroundNotificationResponse: _onDidReceiveBackgroundNotificationResponse
//     );
//   }

//   Future<NotificationDetails> _getNotificationDetails()async {
//     AndroidNotificationDetails androidNotificationDetails =  const AndroidNotificationDetails(
//       'high_importance_channel',
//       'High Importance Notifications',
//       importance: Importance.max,
//       priority: Priority.high,
//       ticker: 'ticker',
//       playSound: true,
//       enableVibration: true,
//       icon: '@mipmap/ic_launcher',
//       actions: <AndroidNotificationAction>[
//         AndroidNotificationAction('1', 'Open'),
//         AndroidNotificationAction('2', 'Hide'),
//       ],
//     );
//     DarwinNotificationDetails iosNotificationDetails = const DarwinNotificationDetails(
//         presentAlert: true, presentBadge: true, presentSound: true
//     );

//     NotificationDetails notificationDetails = NotificationDetails(
//         android: androidNotificationDetails,
//         iOS: iosNotificationDetails
//     );
//     return notificationDetails;
//   }

//   Future<void> showNotificationWithActions(RemoteMessage message)async {
//     final RemoteNotification? notification = message.notification;

//     await localNotification.show(
//         notification.hashCode,
//         notification?.title,
//         notification?.body,
//         await _getNotificationDetails(),
//         payload: json.encode(message.toMap()),
//     );
//   }

//   Future<void> periodicallyShow()async{
//     final result = await localNotification.periodicallyShowWithDuration(
//         Random.secure().nextInt(1000000),
//         'Good Morning Coach',
//         'Wish a nice training day for you',
//         const Duration(minutes: 1),
//         await _getNotificationDetails(),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//     );

//     print('finish');
//     // await localNotification.periodicallyShow(
//     //     Random.secure().nextInt(1000000),
//     //     'Good Morning Coach',
//     //     'Wish a nice training day for you',
//     //     RepeatInterval.everyMinute,
//     //     await _getNotificationDetails(),
//     //     androidScheduleMode: AndroidScheduleMode.exact
//     // );
//   }

//   Future<void> cancel(int id)async{
//     await localNotification.cancel(id);
//   }
// }


// void handleNotificationTap(RemoteMessage message){
//   int id = 1 ;
//   NavigationType navigationType = NavigationType.home;
//   switch(id){
//     case 0:
//       navigationType = NavigationType.home;
//       break;

//     case 1:
//       navigationType = NavigationType.exercises;
//       break;

//     case 2:
//       navigationType = NavigationType.plans;
//       break;

//     default:
//   }
//   navigationType.notificationNavigation.navigate();
// }

// void _onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
//   final String? payload = notificationResponse.payload;
//   if (payload != null) {
//     final jsonObject = jsonDecode(payload);
//     handleNotificationTap(
//         RemoteMessage.fromMap(jsonObject)
//     );
//     debugPrint('notification payload: $payload');
//   }
// }

// void _onDidReceiveBackgroundNotificationResponse(NotificationResponse notificationResponse) async {
//   final String? payload = notificationResponse.payload;
//   if (notificationResponse.payload != null) {
//     final jsonObject = jsonDecode(payload!);
//     handleNotificationTap(
//         RemoteMessage.fromMap(jsonObject)
//     );
//     debugPrint('notification payload: $payload');
//   }
// }