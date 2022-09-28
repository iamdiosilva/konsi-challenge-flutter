import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_images.dart';
import 'components/search_bar.dart';
import 'components/title_header_info.dart';

class HeaderComponent extends StatelessWidget {
  final String name;
  const HeaderComponent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        height: 280,
        width: size.width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          image: const DecorationImage(
            image: AssetImage(AppImages.headerCardImg),
            fit: BoxFit.contain,
          ),
        ),
        child: Stack(
          children: [
            Container(
              height: 280,
              width: size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: TitleHeaderInfo(name: name),
            ),
            const Positioned(
              top: 140,
              left: 20,
              child: SearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
