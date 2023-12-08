// features/mail/data/mail_repository.dart
import 'package:gmail_clone/features/mail/data/mail_model.dart';

class MailRepository {
  List<Mail> getDummyEmails() {
    // Implement logic to fetch emails
    return List.generate(15, (index) {
      return Mail(
        subject: 'your Nykaa order confirmation $index',
        sender: 'info@nykaa.com',
        body: 'dear dhiya,thankyou for shopping with Nykaa!.... $index.',
        isStarred: index % 2 == 0,
      );
    });
  }
}
