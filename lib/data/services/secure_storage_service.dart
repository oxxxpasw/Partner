import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

enum SecureStorageKeys {
  token('token'),
  vendistaLogin('vendistaLogin'),
  vendistaPassword('vendistaPassword');

  const SecureStorageKeys(this.value);

  final String value;
}

abstract class SecureStorageService {
  Future<void> write(
    String key,
    String? value,
  );

  Future<void> delete(String key);

  Future<String?> read(String key);
}

@releaseEnv
@debugEnv
@Singleton(as: SecureStorageService)
class SecureStorageServiceImpl extends SecureStorageService {
  SecureStorageServiceImpl(this._storage);

  final FlutterSecureStorage _storage;

  @override
  Future<void> write(
    String key,
    String? value,
  ) =>
      _storage.write(key: key, value: value);

  @override
  Future<void> delete(String key) => _storage.delete(key: key);

  @override
  Future<String?> read(String key) => _storage.read(key: key);
}

@testEnv
@Singleton(as: SecureStorageService)
class SecureStorageServiceTestImpl extends SecureStorageService {
  @override
  Future<void> delete(String key) => SynchronousFuture(null);

  @override
  Future<String?> read(String key) => SynchronousFuture(null);

  @override
  Future<void> write(String key, String? value) => SynchronousFuture(null);
}
