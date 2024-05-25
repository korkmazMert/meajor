import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get toPrice {
    return NumberFormat('#,###.00', 'en_US').format(this);
  }
}
