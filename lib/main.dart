import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

import 'src/presenter/views/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(const App());
}
