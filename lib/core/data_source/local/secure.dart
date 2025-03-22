import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static SecureStorage? instance;
  SecureStorage();
  factory SecureStorage.getInstance() {
    return instance ??= SecureStorage();
  }

  late FlutterSecureStorage _secureStorage;
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  void init() {
    // FlutterSecureStorage.setMockInitialValues({});
    _secureStorage = FlutterSecureStorage(
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> setData({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> readData({
    required String key,
  }) async {
    return await _secureStorage.read(
      key: key,
    );
  }

  Future<void> deleteData({required String key, required String value}) async {
    await _secureStorage.delete(
      key: key,
    );
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}
