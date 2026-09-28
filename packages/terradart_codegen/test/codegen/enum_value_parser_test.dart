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

  group('parseAvailableValues', () {
    test('reads the quoted Stainless line', () {
      expect(
        parseAvailableValues(
          'The configuration target.\n'
          'Available values: "ip", "ip6", "ip_range", "asn".',
        ),
        ['ip', 'ip6', 'ip_range', 'asn'],
      );
    });
    test('keeps dots and stops at the first unquoted text', () {
      expect(
        parseAvailableValues(
          'Available values: "apac", "weur".  Note: `location` is only '
          'honored the first time.',
        ),
        ['apac', 'weur'],
      );
      expect(
        parseAvailableValues('Available values: "cloudflare.standard".'),
        ['cloudflare.standard'],
      );
    });
    test('ignores unquoted numbers and other dialects', () {
      expect(parseAvailableValues('Available values: 301, 302, 307.'), isNull);
      expect(parseAvailableValues('Possible values: ["A", "B"]'), isNull);
      expect(parseAvailableValues(null), isNull);
    });
    test('the lane-wide parser does not read it', () {
      expect(
        parseEnumValuesFromDescription('Available values: "a", "b".'),
        isNull,
      );
    });
  });
}
