import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('package exports compile and provider meta is exposed', () {
    expect(kGoogleProviderSource, equals('hashicorp/google'));
    expect(kBetaProviderSource, equals('hashicorp/google-beta'));
    expect(kGoogleProviderVersionConstraint, equals('~> 8.0'));
  });
}
