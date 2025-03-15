// import 'package:code_base/src/core/data_source/remote/backend_as_service/firebase_error_handler.dart';
// import 'package:firebase_core/firebase_core.dart';

// class DatabaseErrorCode {
//   static const String unavailable = 'No internet connection, please try again later';
//   static const String permissionDenied = 'You do not have permission to perform this operation';
//   static const String defaultError = 'can\'t make changes, please try again later';
// }

// class RealTimeErrorHandler extends FirebaseErrorInfo {
//   RealTimeErrorHandler(super.errorMessage);
//   factory RealTimeErrorHandler.handle(FirebaseException e){
//     String? errorMsg;
//     switch (e.code) {
//       case 'database/permission-denied':
//         errorMsg = DatabaseErrorCode.permissionDenied;

//       case 'database/network-error':
//         errorMsg = DatabaseErrorCode.unavailable;

//       case 'database/timeout':
//         errorMsg = DatabaseErrorCode.unavailable;

//       default:
//         errorMsg = DatabaseErrorCode.defaultError;
//     }
//     return RealTimeErrorHandler(
//         errorMsg
//     );
//   }
// }