extension ConvertToInt on String {
  int toInt() {
    return int.parse(this);
  }

  double toDouble() {
    return double.parse(this);
  }
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}
