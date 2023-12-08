// shared/widgets/drawer.dart
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 246, 243),
            ),
            child: Text('Gmail'),
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.mail, size: 18), // Mail icon
                    ),
                  ),
                  TextSpan(
                    text: 'Primary',
                  ),
                ],
              ),
            ),
            onTap: () {
              // Handle Primary category click
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('social'),
            onTap: () {
              // Handle item 1 click
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_offer),
            title: const Text('promotion'),
            onTap: () {
              // Handle item 2 click
            },
          ),
          ListTile(
            leading: const Icon(Icons.send),
            title: const Text('sent'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
