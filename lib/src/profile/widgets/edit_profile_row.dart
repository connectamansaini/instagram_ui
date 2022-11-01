import 'package:flutter/material.dart';
import 'package:instagram_ui/src/core/constants.dart';

class EditProfileRow extends StatelessWidget {
  const EditProfileRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 81, 81, 81),
            ),
            onPressed: () {},
            child: const Text('Edit Profile'),
          ),
        ),
        horizontalSizedBox,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            fixedSize: const Size.fromWidth(5.0),
            backgroundColor: const Color.fromARGB(255, 81, 81, 81),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.person_add,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
