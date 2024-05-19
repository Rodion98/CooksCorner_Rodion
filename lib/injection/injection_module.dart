import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class RegisterModule {
  @injectable
  Dio get dio => Dio()..interceptors.add(PrettyDioLogger());

  @singleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();
}
