import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  @Singleton()
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @LazySingleton()
  GS1BarcodeParser get gs1BarcodeParser => GS1BarcodeParser.defaultParser();

  @singleton
  FlutterSecureStorage get secureStorage =>
      FlutterSecureStorage();
}
