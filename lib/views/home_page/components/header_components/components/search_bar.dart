import 'dart:ui';

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: SizedBox(
          width: 320,
          child: Form(
            child: TextFormField(
              style: const TextStyle(color: Colors.white70),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white10,
                label: Text('Pesquisar CEP'),
                labelStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.location_on, color: Colors.white54),
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
