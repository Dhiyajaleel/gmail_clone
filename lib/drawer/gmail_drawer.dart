// gmail_drawer.dart
import 'package:flutter/material.dart';
import 'drawer_item.dart';

class GmailDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerItem('Item 1'),
          DrawerItem('Item 2'),
          // Add more drawer items as needed
        ],
      ),
    );
  }
}
