import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 51,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 50,
        child: Icon(Icons.person, color: Colors.grey, size: 70),
      ),
    );
  }
}
