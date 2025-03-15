// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_error_handler.dart';

// class StorageErrorMsg{
//   static const unknown = 'An unknown error occurred.';
//   static const objectNotFound = 'No object exists at the desired reference.';
//   static const bucketNotFound = 'No bucket is configured for Cloud Storage.';
//   static const projectNotFound = 'No project is configured for Cloud Storage.';
//   static const quotaExceeded = 'Quota on your Cloud Storage bucket has been exceeded. If you\'re on the no-cost tier, upgrade to a paid plan. If you\'re on a paid plan, reach out to Firebase support.';
//   static const unauthenticated = 'User is unauthenticated, please authenticate and try again.';
//   static const unauthorized = 'User is not authorized to perform the desired action, check your security rules to ensure they are correct.';
//   static const retryLimitExceeded = 'The maximum time limit on an operation (upload, download, delete, etc.) has been exceeded. Try uploading again.';
//   static const invalidChecksum = 'An argument passed to the function is invalid.';
//   static const canceled = 'canceled on an operation';
//   static const invalidEventName = 'canceled on an operation';
//   static const invalidUrl = 'Invalid URL provided to refFromURL(). Must be of the form: gs://bucket/object or https://firebasestorage.googleapis.com/v0/b/bucket/o/object?token=<TOKEN>';
//   static const invalidArgument = 'The argument passed to put() must be File, Blob, or UInt8 Array. The argument passed to putString() must be a raw, Base64, or Base64URL string.';
//   static const noDefaultBucket = 'No bucket has been set in your config\'s storageBucket property.';
//   static const cannotSliceBlob = 'Commonly occurs when the local file has changed (deleted, saved again, etc.). Try uploading again after verifying that the file hasn\'t changed.';
// }
// class FireStorageErrorHandler extends FirebaseErrorInfo{
//   FireStorageErrorHandler(super.errorMessage);

//   factory FireStorageErrorHandler.handle(FirebaseException e){
//     String? message;
//     switch(e.code){
//       case 'storage/unknown':
//         message = StorageErrorMsg.unknown;
//         break;

//       case 'storage/object-not-found':
//         message = StorageErrorMsg.objectNotFound;
//         break;

//       case 'storage/bucket-not-found':
//         message =  StorageErrorMsg.bucketNotFound;
//         break;

//       case 'storage/project-not-found':
//         message =  StorageErrorMsg.projectNotFound;
//         break;

//       case 'storage/quota-exceeded':
//         message =  StorageErrorMsg.quotaExceeded;
//         break;

//       case 'storage/unauthenticated':
//         message =  StorageErrorMsg.unauthenticated;
//         break;

//       case 'storage/unauthorized':
//         message = StorageErrorMsg.unauthorized;
//         break;

//       case'storage/retry-limit-exceeded':
//         message =  StorageErrorMsg.retryLimitExceeded;
//         break;

//       case 'storage/invalid-checksum':
//         message =  StorageErrorMsg.invalidChecksum;
//         break;

//       case 'storage/canceled':
//         message =  StorageErrorMsg.canceled;
//         break;

//       case 'storage/invalid-event-name':
//         message =  StorageErrorMsg.invalidEventName;
//         break;

//       case 'storage/invalid-url':
//         message = StorageErrorMsg.invalidUrl;
//         break;

//       case 'storage/invalid-argument':
//         message = StorageErrorMsg.invalidArgument;
//         break;

//       case 'storage/no-default-bucket':
//         message =  StorageErrorMsg.noDefaultBucket;
//         break;

//       case 'storage/cannot-slice-blob':
//         message =  StorageErrorMsg.cannotSliceBlob;
//         break;

//       default:
//         message = 'An error occurred while handling the Firebase Storage error: ${e.message}';
//     }
//     return FireStorageErrorHandler(
//         message
//     );
//   }
// }