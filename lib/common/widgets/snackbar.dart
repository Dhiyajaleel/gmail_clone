// snackbar.dart
import 'package:flutter/material.dart';

class CustomSnackBar {
  static showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Compose feature in progress'),
      ),
    );
  }
}
