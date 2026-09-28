import 'package:terradart_codegen/src/codegen/provider_version_emitter.dart';
import 'package:test/test.dart';

void main() {
  test('emits the fixture release as a const behind the generated marker', () {
    final src = providerVersionSource('6.66.0');
    expect(src.startsWith('// GENERATED FILE - DO NOT EDIT'), isTrue);
    expect(src, contains("const String terradartProviderVersion = '6.66.0';"));
  });

  test('escapes characters that would break the string literal', () {
    expect(
      providerVersionSource(r"1.0.0-a'b$c"),
      contains(r"terradartProviderVersion = '1.0.0-a\'b\$c';"),
    );
  });
}
