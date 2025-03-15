// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_error_handler.dart';

// class StoreErrorCode {

//   static const String unavailable = 'No internet connection, please try again later';
//   static const String permissionDenied = 'You do not have permission to perform this operation';
//   static const String resourceExhausted = 'please try again later';
//   static const String aborted = 'Operation aborted, please try again.';
//   static const String defaultError = 'can\'t make changes, please try again later';
// }

// class FireStoreErrorHandler extends FirebaseErrorInfo {
//   FireStoreErrorHandler(super.errorMessage);
//   factory FireStoreErrorHandler.handle(FirebaseException e){
//     String? errorMsg;
//     switch (e.code) {
//       case 'unavailable':
//         errorMsg = StoreErrorCode.unavailable;
//         break;

//       case 'permission-denied':
//         errorMsg = StoreErrorCode.permissionDenied;
//         break;

//       case 'resource-exhausted':
//         errorMsg = StoreErrorCode.resourceExhausted;
//         break;

//       case 'aborted':
//         errorMsg = StoreErrorCode.aborted;
//         break;

//       default:
//         errorMsg = StoreErrorCode.defaultError;
//         break;
//     }
//     return FireStoreErrorHandler(
//         errorMsg
//     );
//   }
// }