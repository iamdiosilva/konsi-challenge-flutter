import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Function() onPressed;
  const SearchButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: const Icon(
        Icons.search,
        color: Colors.white,
      ),
    );
  }
}
