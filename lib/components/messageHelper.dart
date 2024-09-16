import 'package:flutter/material.dart';

class Messagehelper {
  static GlobalKey<ScaffoldMessengerState> ScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static showMessage(bool isSuccess, String message) {
    ScaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        duration: Duration(seconds: 5),
        backgroundColor: isSuccess == true ? Colors.green: Colors.red,
        content: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
