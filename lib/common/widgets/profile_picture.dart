// profile_picture.dart
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/dhiya.jpeg'),
    );
  }
}
