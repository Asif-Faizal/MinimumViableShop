import 'package:flutter/material.dart';
import 'package:mvs_core/env/env_manager.dart';
import 'package:mvs_app/di.dart';
import 'package:mvs_app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final env = EnvManager.fromEnvironment();
  await configureDependencies(env);
  runApp(const App());
}
