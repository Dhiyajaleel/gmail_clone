// mail_section.dart
import 'package:flutter/material.dart';
import 'mail_list_item.dart';

class MailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return MailListItem(); // Implement MailListItem widget
      },
    );
  }
}
