import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'components/more_researched.dart';

class TopMidComponent extends StatelessWidget {
  const TopMidComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          const MoreResearched(),
          Flexible(
            flex: 60,
            child: Column(
              children: [
                Flexible(
                  flex: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, bottom: 1, top: 1),
                    child: Container(
                      color: AppColors.primaryColor,
                      child: const Center(child: Text('Right Top')),
                    ),
                  ),
                ),
                Flexible(
                  flex: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, top: 1, bottom: 1),
                    child: Container(
                      color: Colors.yellow,
                      child: const Center(child: Text('Right Bottom TOP!')),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
