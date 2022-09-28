import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class MoreResearched extends StatelessWidget {
  const MoreResearched({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 40,
      child: Padding(
        padding: const EdgeInsets.only(right: 1, bottom: 1, top: 1),
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryColor,
                  Colors.black,
                ],
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 30,
                      width: 130,
                      child: const Center(
                        child: const Text('Mais Pesquisados'),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
