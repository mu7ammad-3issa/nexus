// import 'package:permission_handler/permission_handler.dart';
// import '../data_types/permession_process_model.dart';

// class AppPermission{
//   late Permission _permission;
//   Future<void> check(PermissionProcessModel processModel)async {
//     switch(processModel.permissionClient) {
//       case PermissionClient.camera:
//         _permission = Permission.camera;

//       case PermissionClient.storage:
//         _permission = Permission.storage;

//       case PermissionClient.contacts:
//         _permission = Permission.contacts;

//       case PermissionClient.notification:
//         _permission = Permission.notification;

//       default:
//         return;
//     }

//     await askForPermission(
//         onPermissionGranted: processModel.onPermissionGranted,
//         onPermissionDenied: processModel.onPermissionDenied
//     );
//   }
//   Future<void> askForPermission({
//     required Function() onPermissionGranted,
//     required Function() onPermissionDenied,
//   })async
//   {
//     bool status = await _permission.status.isGranted;
//     if(!status)
//     {
//       PermissionStatus status = await _permission.request();
//       switch(status)
//       {
//         case PermissionStatus.granted:
//           onPermissionGranted();
//         default:
//           onPermissionDenied();
//       }
//     }
//     else{
//       onPermissionGranted();
//     }
//   }
// }