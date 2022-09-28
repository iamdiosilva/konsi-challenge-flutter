import 'package:flutter/material.dart';

import 'components/bottom_info_components/bottom_info_component.dart';
import 'components/featured_especialist_components/featured_especialist_component.dart';
import 'components/featured_places_components/featured_places_component.dart';
import 'components/header_components/header_component.dart';
import 'components/info_components/info_component.dart';
import 'components/top_mid_components/top_mid_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderComponent(name: 'Fulano'),
            TopMidComponent(),
            FeaturedEspecialistComponent(),
            InfoComponent(),
            FeaturedPlacesComponent(),
            BottomInfoComponent(),
          ],
        ),
      ),
    );
  }
}
