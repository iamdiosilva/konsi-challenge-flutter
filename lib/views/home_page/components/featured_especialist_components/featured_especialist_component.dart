import 'package:flutter/material.dart';

class FeaturedEspecialistComponent extends StatelessWidget {
  const FeaturedEspecialistComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, bottom: 1),
      child: Container(
        height: 50,
        color: Colors.green,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Feature Especialist'),
            ],
          ),
        ),
      ),
    );
  }
}
