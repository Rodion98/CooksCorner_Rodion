import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/app.dart';
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const MyApp());
}
