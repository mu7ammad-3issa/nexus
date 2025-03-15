class MainModel
{
  String message;
  dynamic data;

  MainModel({
    required this.message,
    required this.data,
});

  factory MainModel.fromJson(Map<String, dynamic> jsonData)
  {
    return MainModel(
        message: jsonData ['message'],
        data: jsonData ['data']
    );
  }
}