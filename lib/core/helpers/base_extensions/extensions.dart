extension ConvertToInt on String {
  int toInt() {
    return int.parse(this);
  }

  double toDouble() {
    return double.parse(this);
  }
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}
