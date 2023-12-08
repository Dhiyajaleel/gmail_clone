// features/mail/data/mail_model.dart
class Mail {
  final String subject;
  final String sender;
  final String body;
  final bool isStarred;

  Mail(
      {required this.subject,
      required this.sender,
      required this.body,
      required this.isStarred});
}
