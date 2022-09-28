import 'package:flutter/material.dart';

class InfoComponent extends StatelessWidget {
  const InfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, bottom: 1),
      child: Container(
        height: 160,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Info'),
          ],
        ),
      ),
    );
  }
}
