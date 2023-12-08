// features/mail/presentation/mail_item.dart
import 'package:flutter/material.dart';
import 'package:gmail_clone/features/mail/data/mail_model.dart';

class MailItem extends StatefulWidget {
  final Mail mail;

  const MailItem({required this.mail});

  @override
  _MailItemState createState() => _MailItemState();
}

class _MailItemState extends State<MailItem> {
  late bool _isStarred;

  @override
  void initState() {
    super.initState();
    _isStarred = widget.mail.isStarred;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.mail.subject),
      subtitle: Text('${widget.mail.sender} - ${widget.mail.body}'),
      trailing: IconButton(
        icon: Icon(_isStarred ? Icons.star : Icons.star_border),
        onPressed: () {
          setState(() {
            _isStarred = !_isStarred;
          });
          // Add functionality to handle star/favorite state
        },
      ),
    );
  }
}
