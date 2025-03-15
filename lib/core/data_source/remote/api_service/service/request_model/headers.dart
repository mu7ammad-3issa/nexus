// import 'dart:io';

// import '../../../../local/secure.dart';

// abstract class RequestHeaders
// {
//   String contentType;
//   String accept;

//   RequestHeaders({
//     this.contentType = 'application/json',
//     this.accept  = 'application/json',
//   });

//   Future<Map<String,dynamic>> toJson();
// }

// class HeadersWithToken extends RequestHeaders
// {
//   HeadersWithToken({super.contentType});

//   Future<String?> get _getToken async
//   {
//     String? token = 'Bearer ${await SecureStorage.getInstance().readData(key: 'userToken')}';
//     return token;
//   }

//   @override
//   Future<Map<String, dynamic>> toJson()async {
//     return
//       {
//         HttpHeaders.contentTypeHeader : accept,
//         HttpHeaders.acceptHeader : contentType,
//         HttpHeaders.authorizationHeader : await _getToken,
//       };
//   }
// }

// class HeadersWithoutToken extends RequestHeaders
// {
//   HeadersWithoutToken({super.contentType});

//   @override
//   Future<Map<String, dynamic>> toJson()async {
//     return
//       {
//         HttpHeaders.contentTypeHeader : accept,
//         HttpHeaders.acceptHeader : contentType,
//       };
//   }
// }