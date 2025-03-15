// import 'dart:io';
// import 'package:code_base/src/core/data_source/remote/api_service/extensions/file.dart';
// import 'package:code_base/src/core/data_source/remote/api_service/service/request_model/methods.dart';
// import 'package:dio/dio.dart';
// import 'headers.dart';

// class RequestModel {
//   RequestMethod method;
//   String endPoint;
//   RequestHeaders? headers;
//   dynamic data;
//   bool isFormData;
//   Map<String,dynamic>? queryParams;
//   ResponseType? responseType;
//   void Function(int count, int total)? onSendProgress;
//   void Function(int count, int total)? onReceiveProgress;

//   RequestModel({
//     required this.method,
//     required this.endPoint,
//     this.headers,
//     this.data,
//     this.queryParams,
//     this.responseType,
//     this.onSendProgress,
//     this.onReceiveProgress,
//     this.isFormData = false,
//   });



//   Future<void> prepareDataForRequest()async {
//     if(data != null) {
//       (data as Map<String, dynamic>).forEach((key, value)async {
//         if(value is File) {
//           isFormData = true;
//           await value.toMultiPartFile();
//         }
//       });
//     }
//   }
// }

