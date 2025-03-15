// import 'package:multiple_result/multiple_result.dart';
// import '../service/error_handling/errors.dart';

// extension ErrorHandler<T extends Object> on Future<T> {
//   Future<Result<T, RemoteError>> handleApiCalls()async{
//     try{
//       final T result = await this;
//       return Result.success(result);
//     } on RemoteError catch(e){
//       return Result.error(e);
//     }
//   }
// }