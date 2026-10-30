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
        'Valid values are: "PAGELESS", "PAGINATED".',
      ),
      ['PAGELESS', 'PAGINATED'],
    );
  });
  test('bare screaming list', () {
    expect(
      parseEnumValuesFromDescription(
        'Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY',
      ),
      ['JOB_TYPE_UNSPECIFIED', 'PIPELINE', 'QUERY'],
    );
  });
  test('null and <2 values reject', () {
    expect(parseEnumValuesFromDescription(null), isNull);
    expect(parseEnumValuesFromDescription('Possible values: ["ONLY"]'), isNull);
  });

  test('a sentence that opens with One of quoted values', () {
    expect(
      parseEnumValuesFromDescription(
        'The mode in which to attach this disk. One of "READ_ONLY" or '
        '"READ_WRITE". Default is READ_WRITE.',
      ),
      ['READ_ONLY', 'READ_WRITE'],
    );
    expect(
      parseEnumValuesFromDescription(
        'The deployment source type. Must be one of "code" or "template".',
      ),
      ['code', 'template'],
    );
    expect(parseEnumValuesFromDescription('One of "A", "B", or "C"'), [
      'A',
      'B',
      'C',
    ]);
  });

  test('a mid-sentence one of constrains part of the value', () {
    expect(
      parseEnumValuesFromDescription(
        'The forward proxy URI. Note that the scheme must be one of "http" '
        'or "https", and the port must be supplied.',
      ),
      isNull,
    );
    expect(
      parseEnumValuesFromDescription(
        'The value can only be one of "global", "us" and "eu".',
      ),
      isNull,
    );
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
      expect(parseAvailableValues('Available values: "cloudflare.standard".'), [
        'cloudflare.standard',
      ]);
    });
    test('ignores unquoted numbers and other dialects', () {
      expect(parseAvailableValues('Available values: 301, 302, 307.'), isNull);
      expect(parseAvailableValues('Possible values: ["A", "B"]'), isNull);
      expect(parseAvailableValues(null), isNull);
    });
    test('an expression attribute lists fields, not values', () {
      expect(
        parseAvailableValues(
          'The wirefilter expression to match registrations. Available '
          'values: "identity.name", "identity.email".',
        ),
        isNull,
      );
      expect(
        parseAvailableValues(
          'The action to take if the expression matches\n'
          'Available values: "allow", "log".',
        ),
        ['allow', 'log'],
      );
    });
    test('the lane-wide parser does not read it', () {
      expect(
        parseEnumValuesFromDescription('Available values: "a", "b".'),
        isNull,
      );
    });
  });
}
