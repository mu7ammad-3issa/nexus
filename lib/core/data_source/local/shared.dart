// import 'dart:developer';
// import 'package:shared_preferences/shared_preferences.dart';

// class CacheHelper
// {
//   static CacheHelper? instance;
//   CacheHelper();

//   factory CacheHelper.getInstance()
//   {
//     return instance ??= CacheHelper();
//   }

//   late SharedPreferences shared;

//   Future<void> cacheInit()async
//   {
//     shared = await SharedPreferences.getInstance();
//     log('Done');
//   }

//   Future<void> setData({
//     required String key,
//     required dynamic value,
//   })async
//   {
//     switch(value.runtimeType)
//     {
//       case String:
//         await shared.setString(key, value);

//       case int:
//         await shared.setInt(key, value);

//       case bool:
//         await shared.setBool(key, value);

//       case double :
//         await shared.setDouble(key, value);

//       default:
//         await shared.setStringList(key, value);
//     }
//   }

//   void clearCache()async
//   {
//     await shared.clear();
//   }

//   List<String>? getUserData()
//   {
//     return shared.getStringList('userData');
//   }
// }
