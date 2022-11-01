import 'package:flutter/material.dart';

class ProfilePicRow extends StatelessWidget {
  const ProfilePicRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          radius: 50,
          child: Text(
            '?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ), //Text
        ),
        Column(
          children: const [
            Text('19'),
            Text('Posts'),
          ],
        ),
        Column(
          children: const [
            Text('19'),
            Text('Followers'),
          ],
        ),
        Column(
          children: const [
            Text('19'),
            Text('Following'),
          ],
        ),
      ],
    );
  }
}
