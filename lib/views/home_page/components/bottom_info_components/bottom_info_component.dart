import 'package:flutter/material.dart';

class BottomInfoComponent extends StatelessWidget {
  const BottomInfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(
            flex: 50,
            child: Padding(
              padding: const EdgeInsets.only(top: 1, right: 1),
              child: Container(
                color: Colors.lightBlueAccent,
                child: const Center(child: Text('Left')),
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: Padding(
              padding: const EdgeInsets.only(top: 1, left: 1),
              child: Container(
                color: Colors.lightBlueAccent,
                child: const Center(child: Text('Right')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
