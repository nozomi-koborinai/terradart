import 'package:terradart_codegen/src/codegen/enum_value_parser.dart';
import 'package:test/test.dart';

void main() {
  test('bracket JSON-ish list', () {
    expect(
      parseEnumValuesFromDescription(
        'Mode. Possible values: ["BASIC", "ADVANCED"]',
      ),
      ['BASIC', 'ADVANCED'],
    );
  });
  test('valid-values-are quoted prose', () {
    expect(
      parseEnumValuesFromDescription(
          'Valid values are: "PAGELESS", "PAGINATED".'),
      ['PAGELESS', 'PAGINATED'],
    );
  });
  test('bare screaming list', () {
    expect(
      parseEnumValuesFromDescription(
          'Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY'),
      ['JOB_TYPE_UNSPECIFIED', 'PIPELINE', 'QUERY'],
    );
  });
  test('null and <2 values reject', () {
    expect(parseEnumValuesFromDescription(null), isNull);
    expect(parseEnumValuesFromDescription('Possible values: ["ONLY"]'), isNull);
  });
}
