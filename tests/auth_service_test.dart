import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthService', () {
    final service = AuthService.instance;

    test('login', () async {
      final result = await service.signin('api@deneme.com', '123');

      expect(result, isNotNull);
    });
  });
}
