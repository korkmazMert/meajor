import 'package:alisatiyor/core/snackbar/snackbar_messenger.dart';

mixin SnackBarMessengerMixin {
  final messenger = SnackBarMessenger();

  void showSnackBar({required String message}) {
    messenger.showSnackBar(message: message);
  }
}
