import 'dart:developer';

import 'package:intl/intl.dart';

extension StringExtensions on String {
  static const List<String> imageExtensions = [
    '.png',
    '.jpeg',
    '.jpg',
    '.webp'
  ];
  static const List<String> videoExtensions = [
    '.mp4',
    '.avi',
    '.mov',
    '.wmv',
    '.flv',
    '.3gp',
    '.mkv'
  ];

  bool get isEmail {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
        caseSensitive: false);
    return emailRegex.hasMatch(this);
  }

  bool get isPhoneNumber {
    final phoneRegex = RegExp(r'^\d{10}$', caseSensitive: false);
    return phoneRegex.hasMatch(this) && length == 10;
  }

  bool get isPassword {
    final passwordRegex = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
        caseSensitive: false);
    return passwordRegex.hasMatch(this);
  }

  bool get isName {
    final nameRegex =
        RegExp(r'^[a-zA-ZğüşöçıİĞÜŞÖÇ\s]*$', caseSensitive: false);
    return nameRegex.hasMatch(this);
  }

  bool get isImage {
    return imageExtensions.contains(this);
  }

  bool get isVideo {
    return videoExtensions.contains(this);
  }

  String formatDateTime() {
    try {
      // Parse the original date string
      final parsedDate = DateTime.parse(this);
      // Format the date
      final formattedDate = DateFormat('dd-MM-yyyy HH.mm').format(parsedDate);
      return formattedDate;
    } catch (e) {
      return this;
    }
  }

  String messageDateTime() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    try {
      // Parse the original date string
      final messageDateTime = DateFormat('HH:mm dd/M/yyyy').parse(this);
      final messageDate = DateTime(
          messageDateTime.year, messageDateTime.month, messageDateTime.day);
      final messageHourString =
          '${messageDateTime.hour}:${messageDateTime.minute}';

      // Check if the message was sent today
      final isMessageSentToday = messageDate == today;
      if (isMessageSentToday) {
        return messageHourString;
      } else {
        return messageDateTime.toString().formatDateTime();
      }
    } catch (e) {
      try {
        final messageDateTime =
            DateFormat('yyyy-MM-ddTHH:mm:ss.SSSSSS').parse(this);
        final messageDate = DateTime(
            messageDateTime.year, messageDateTime.month, messageDateTime.day);
        final messageHourString =
            '${messageDateTime.hour}:${messageDateTime.minute}';
        final isMessageSentToday = messageDate == today;
        if (isMessageSentToday) {
          return messageHourString;
        } else {
          return messageDateTime.toString().formatDateTime();
        }
      } catch (e) {
        log('timeee: $e');
        return this;
      }
    }
  }
}
