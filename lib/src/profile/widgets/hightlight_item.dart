import 'package:flutter/material.dart';

class HighlightItem extends StatelessWidget {
  const HighlightItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  '?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ), //Text
            ),
          ),
          const Text('Story')
        ],
      ),
    );
  }
}
