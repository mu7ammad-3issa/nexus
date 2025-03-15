// import 'dart:developer';
// import 'package:dio/dio.dart';

// class UnknownErrorInterceptor extends InterceptorsWrapper
// {
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     if(err.type == DioExceptionType.unknown)
//     {
//       String requestMethod = 'The request method is ${err.requestOptions.method}';
//       String requestPath = 'The request path is ${err.requestOptions.baseUrl}${err.requestOptions.path}';
//       String requestHeaders = 'The request headers are ${err.requestOptions.headers}';

//       log(requestMethod);
//       log(requestHeaders);
//       log(requestPath);

//       log('${err.requestOptions.data}');
//       log(err.response?.statusMessage?? 'unknown');
//     }
//     else{
//       handler.next(err);
//     }
//   }
// }