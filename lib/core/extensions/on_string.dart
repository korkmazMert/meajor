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
}
