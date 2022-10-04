import 'package:flutter/material.dart';

import '../../../../../../core/dictionary/lang_pt_br.dart';
import 'search_button.dart';

class SearchBar extends StatelessWidget {
  final Function() onPressed;
  final TextEditingController controller;
  const SearchBar(
      {super.key, required this.onPressed, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Form(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextFormField(
            controller: controller,
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(color: Colors.grey),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: LangPTBR.searchBarLabel,
              labelStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                child: SearchButton(onPressed: onPressed),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
