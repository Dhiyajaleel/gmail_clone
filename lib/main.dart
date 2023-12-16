import 'package:flutter/material.dart';
import 'package:gmail_clone/common/widgets/snackbar.dart';
import 'package:gmail_clone/drawer/gmail_drawer.dart';
import 'features/mail/mail_section.dart';
import 'common/widgets/profile_picture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailClone(),
    );
  }
}

class GmailClone extends StatelessWidget {
  const GmailClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/gmail-logo-0.png',
          height: 90,
        ),
        actions: [
          IconButton(
            icon: ProfilePicture(),
            onPressed: () {
              // Handle profile icon click
            },
          ),
        ],
      ),
      drawer: GmailDrawer(),
      body: MailSection(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Meet',
          ),
        ],
        selectedItemColor: Colors.red, // Customize color as needed
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomSnackBar.showSnackBar(context);
          // Implement compose feature
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
