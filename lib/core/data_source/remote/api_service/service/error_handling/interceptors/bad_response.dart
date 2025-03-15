// import 'dart:developer';
// import 'package:dio/dio.dart';
// import '../../../../../local/secure.dart';
// import '../../Api_constants.dart';
// import '../../request_model/headers.dart';
// import '../../request_model/request_model.dart';

// class BadResponseInterceptor extends InterceptorsWrapper {
//   Dio dio;
//   BadResponseInterceptor(this.dio);

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler)async {

//     log(err.type.name);

//     if(err.type == DioExceptionType.badResponse)
//     {
//       switch(err.response?.statusCode)
//       {
//         case 400:
//         // bad request

//         case 401:
//           log(err.response!.statusMessage!);
//           // await _refreshToken();
//           // await _reRequest(
//           //   RequestModel(
//           //       method: err.requestOptions.method,
//           //       endPoint: err.requestOptions.path,
//           //       headers: HeadersWithToken()
//           //   ),
//           //   handler,
//           // );

//         default:
//           handler.reject(err);
//       }
//     }
//     else{
//       handler.next(err);
//     }
//   }

//   // Future<void> _refreshToken() async {
//   //   await dio.post(
//   //       ApiConstants.refreshToken,
//   //       options: Options(
//   //           headers: await HeadersWithToken().toJson()
//   //       )
//   //   ).then((newToken)async
//   //   {
//   //     await SecureStorage.getInstance().setData(
//   //         key: 'userToken',
//   //         value: newToken.data
//   //     );
//   //   });
//   // }

//   // Future<void> _reRequest(RequestModel oldRequest,ErrorInterceptorHandler handler)async {
//   //   log('re request');
//   //   await dio.request(
//   //     oldRequest.endPoint,
//   //     options: Options(
//   //       headers: await oldRequest.headers!.toJson(),
//   //       method: oldRequest.method,
//   //     ),
//   //     data: oldRequest.data,
//   //     queryParameters: oldRequest.queryParams,
//   //   ).then((newResponse)
//   //   {
//   //     handler.resolve(newResponse);
//   //   }).catchError((error){handler.reject(error);});
//   // }
// }