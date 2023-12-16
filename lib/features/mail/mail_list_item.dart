// mail_list_item.dart
import 'package:flutter/material.dart';

class MailListItem extends StatefulWidget {
  @override
  _MailListItemState createState() => _MailListItemState();
}

class _MailListItemState extends State<MailListItem> {
  bool isStarred = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Email Subject'),
      subtitle: Text('Sender Name - Email Content'),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isStarred = !isStarred;
          });
        },
        child: Icon(
          isStarred ? Icons.star : Icons.star_border,
          color: isStarred ? Colors.amber : null,
        ),
      ),
    );
  }
}
