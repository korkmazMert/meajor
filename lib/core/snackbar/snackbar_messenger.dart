import 'package:alisatiyor/core/globals/globals.dart';
import 'package:flutter/material.dart';

class SnackBarMessenger {
  void showSnackBar({required String message}) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    Globals.scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
    Globals.scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
  }
}
