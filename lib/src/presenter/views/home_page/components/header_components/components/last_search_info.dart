import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/dictionary/lang_pt_br.dart';
import '../../../../../../core/theme/app_typograph.dart';

class LastSearchInfo extends StatelessWidget {
  const LastSearchInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/svg/aim.svg',
          height: 28,
          width: 28,
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        const Text(
          LangPTBR.lastSearchInfo,
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              '00000-000.',
              style: AppTypograph.lastSearchCEP,
            ),
          ),
        ),
      ],
    );
  }
}
