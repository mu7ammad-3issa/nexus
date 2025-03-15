// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class ImageSelector
// {
//   static Future<File?> selectImage(ImageSource source)async
//   {
//     XFile? image = await ImagePicker().pickImage(source: source);
//     if(image == null) {
//       return null;
//     }
//     else{
//       return File(image.path);
//     }
//   }

//   static Future<List<File>> getImages() async {
//     final ImagePicker picker = ImagePicker();
//     final List<XFile> result = await picker.pickMultiImage();
//     if (result.isNotEmpty) {
//       List<File> files = result.map((e) => File(e.path)).toList();
//       return files;
//     } else {
//       return List.empty();
//     }
//   }
// }