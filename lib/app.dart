import 'package:flutter/material.dart';
import 'package:gmail_clone/features/mail/data/presentation/mail_listing.dart';
import "shared/widgets/drawer.dart";

void main() {
  runApp(GmailCloneApp());
}

class GmailCloneApp extends StatelessWidget {
  const GmailCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailHomePage(),
    );
  }
}

class GmailHomePage extends StatelessWidget {
  const GmailHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail Clone'),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/dhiya.jpeg'),
            ),
            onPressed: () {
              // Add functionality for profile icon
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mails',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Meet',
          ),
        ],
      ),
      body: MailListing(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Compose feature in progress'),
            ),
          );
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
