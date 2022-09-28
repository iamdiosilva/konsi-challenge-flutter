import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../core/dictionary/lang_pt_br.dart';
import '../../../../../core/theme/app_typograph.dart';

class TitleHeaderInfo extends StatelessWidget {
  final String name;
  const TitleHeaderInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      LangPTBR.titleGreetings,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      name,
                      style: AppTypograph.nameTitle,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  LangPTBR.subtitle,
                  style: AppTypograph.subTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
