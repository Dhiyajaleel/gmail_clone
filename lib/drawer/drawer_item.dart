// drawer_item.dart
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;

  DrawerItem(this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        // Handle drawer item click
      },
    );
  }
}
