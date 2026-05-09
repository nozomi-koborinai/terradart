import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('package exports compile and provider meta is exposed', () {
    expect(kProviderSource, equals('hashicorp/google'));
    expect(kProviderVersionConstraint, equals('~> 7.0'));
  });
}
