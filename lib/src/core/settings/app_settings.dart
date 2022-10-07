import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/local_entity.dart';

class AppSettings extends ChangeNotifier {
  late SharedPreferences _prefs;
  late LocalEntity lastLocalEntity;

  AppSettings() {
    _init();
  }

  _init() async {
    await _startPrefs();
  }

  Future<void> _startPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
