// features/mail/presentation/mail_listing.dart
import 'package:flutter/material.dart';
import 'package:gmail_clone/features/mail/data/mail_model.dart';
import 'package:gmail_clone/features/mail/data/mail_repository.dart';
import 'mail_item.dart';

class MailListing extends StatelessWidget {
  final MailRepository mailRepository = MailRepository();

  @override
  Widget build(BuildContext context) {
    List<Mail> emails = mailRepository.getDummyEmails();

    return ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) {
        return MailItem(mail: emails[index]);
      },
    );
  }
}
