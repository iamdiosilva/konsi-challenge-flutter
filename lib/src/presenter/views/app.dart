import 'package:flutter/material.dart';
import 'package:konsi_challange/src/core/settings/app_providers.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_colors.dart';
import 'home_page/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MaterialApp(
        theme: ThemeData(primarySwatch: AppColors.mainColorTheme),
        debugShowCheckedModeBanner: false,
        title: 'K\'Challenge - Location',
        home: const HomePage(),
      ),
    );
  }
}
