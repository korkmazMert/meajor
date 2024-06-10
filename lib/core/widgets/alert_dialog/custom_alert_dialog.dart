import 'package:flutter/material.dart';

class CustomAlertDialog {
  static Future<void> showAlertDialog({
    required BuildContext context,
    required Widget? title,
    required Widget? content,
    required String confirmText,
    void Function()? onConfirm,
    String cancelText = 'Cancel',
    void Function()? onPressed,
  }) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: title,
          content: content,
          actions: <Widget>[
            TextButton(
              onPressed: onPressed ?? () => Navigator.of(context).pop(),
              child: Text(cancelText),
            ),
            TextButton(
              onPressed: onConfirm ?? () => Navigator.of(context).pop(),
              child: Text(confirmText),
            ),
          ],
        );
      },
    );
  }
}
