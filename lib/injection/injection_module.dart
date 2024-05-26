import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  Dio get dio => Dio(BaseOptions(baseUrl: HttpPaths.baseUrl))..interceptors.add(PrettyDioLogger());

  @singleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();
}
