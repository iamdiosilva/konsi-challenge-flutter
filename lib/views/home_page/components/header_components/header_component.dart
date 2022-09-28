import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_images.dart';
import 'components/last_search_info.dart';
import 'components/search_bar.dart';
import 'components/title_header_info.dart';

class HeaderComponent extends StatelessWidget {
  final String name;
  const HeaderComponent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FittedBox(
      fit: BoxFit.contain,
      child: Padding(
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleHeaderInfo(name: name),
                const SizedBox(height: 12),
                const SearchBar(),
                const SizedBox(height: 12),
                const LastSearchInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
