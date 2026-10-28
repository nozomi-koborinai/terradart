import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'provider_diagnostics.dart';

String _fixture(String name) =>
    File('tool/testdata/provider_diagnostics/$name').readAsStringSync();

/// [validate] with its one diagnostic's fields replaced by [diagnostic].
String _withDiagnostic(String validate, Map<String, Object?> diagnostic) {
  final report = jsonDecode(validate) as Map<String, Object?>;
  final d = (report['diagnostics'] as List).single as Map<String, Object?>;
  d.addAll(diagnostic);
  d.removeWhere((_, v) => v == null);
  return jsonEncode(report);
}

void main() {
  group('parseValidateJson', () {
    test('reads the #922 rejection from the bytes tofu highlights', () {
      final rejections = parseValidateJson(
        _fixture('google_jwks_validate.json'),
        _fixture('google_jwks_main.tf.json'),
      );
      final r = rejections.single as ValueRejection;
      expect(
        r.address.toString(),
        'data.google_iam_workload_identity_pool_jwks.jwks',
      );
      expect(r.address.dataSource, isTrue);
      expect(r.path.segments, ['resource_name']);
      expect(r.rejected, 'terradart-leftover');
      expect(
        r.at,
        'data.google_iam_workload_identity_pool_jwks.jwks.resource_name',
      );
      expect(
        r.message,
        'expected "resource_name" to have a host, got terradart-leftover',
      );
    });

    test('reads the #923 rejection from the bytes tofu highlights', () {
      final rejections = parseValidateJson(
        _fixture('aws_directory_validate.json'),
        _fixture('aws_directory_main.tf.json'),
      );
      final r = rejections.single as ValueRejection;
      expect(r.address.toString(), 'aws_directory_service_ip_route.route');
      expect(r.address.dataSource, isFalse);
      expect(r.path.segments, ['directory_id']);
      expect(r.rejected, 'leftover');
      expect(
        r.message,
        'Attribute directory_id must be a valid Directory Service Directory '
        'ID, got: leftover',
      );
    });

    test('a range covering the whole block is a block rejection', () {
      final rejections = parseValidateJson(
        _withDiagnostic(_fixture('aws_directory_validate.json'), {
          'summary': 'Missing required argument',
          'detail': 'The argument "cidr_ip" is required.',
          'range': {
            'filename': 'main.tf.json',
            'start': {'line': 17, 'column': 18, 'byte': 285},
            'end': {'line': 20, 'column': 8, 'byte': 363},
          },
        }),
        _fixture('aws_directory_main.tf.json'),
      );
      final r = rejections.single as BlockRejection;
      expect(r.address.toString(), 'aws_directory_service_ip_route.route');
      expect(r.message, 'The argument "cidr_ip" is required.');
    });

    test('a diagnostic with no block address breaks the stack', () {
      final rejections = parseValidateJson(
        _withDiagnostic(_fixture('aws_directory_validate.json'), {
          'summary': 'Invalid provider configuration',
          'detail': '',
          'address': null,
          'range': null,
        }),
        _fixture('aws_directory_main.tf.json'),
      );
      expect(rejections.single, isA<StackRejection>());
      expect(rejections.single.message, 'Invalid provider configuration');
    });

    test('warnings are dropped', () {
      final rejections = parseValidateJson(
        _withDiagnostic(_fixture('aws_directory_validate.json'), {
          'severity': 'warning',
        }),
        _fixture('aws_directory_main.tf.json'),
      );
      expect(rejections, isEmpty);
    });
  });

  test('jsonPathAt names a list element by its index', () {
    expect(jsonPathAt('{"a": ["x", "y"]}', 12, 15), ['a', 1]);
    expect(jsonPathAt('{"a": ["x", "y"]}', 11, 15), isNull);
  });

  test('patchJson replaces only the value at the path', () {
    final source = _fixture('google_jwks_main.tf.json');
    expect(
      patchJson(source, {
        [
          'data',
          'google_iam_workload_identity_pool_jwks',
          'jwks',
          'resource_name',
        ]: 'https://example.com/leftover',
      }),
      source.replaceFirst(
        '"terradart-leftover"',
        '"https://example.com/leftover"',
      ),
    );
  });

  group('shapesNamedBy', () {
    List<(Object, String)> shapes(String message) => [
      for (final c in shapesNamedBy(message)) (c.value.json, c.source),
    ];

    test('the #922 host message names a URL with a host', () {
      expect(
        shapes(
          'expected "resource_name" to have a host, got terradart-leftover',
        ),
        [('https://example.com/leftover', 'family url-host')],
      );
    });

    test('the #923 message names no value', () {
      expect(
        shapes(
          'Attribute directory_id must be a valid Directory Service '
          'Directory ID, got: leftover',
        ),
        isEmpty,
      );
    });

    test('one-of gives the first member, framework or SDKv2 quoting', () {
      expect(
        shapes(
          r'Attribute mode value must be one of: ["\"STANDARD\"" "\"ADVANCED\""], got: "leftover"',
        ),
        [('STANDARD', 'family one-of')],
      );
      expect(
        shapes(
          'expected mode to be one of ["STANDARD" "ADVANCED"], got leftover',
        ),
        [('STANDARD', 'family one-of')],
      );
      expect(shapes('expected vcores to be one of [4 6 8], got 200'), [
        (4, 'family one-of'),
      ]);
    });

    test('an Azure resource id example in the parse error is a candidate', () {
      expect(
        shapes(
          'parsing "/subscriptions/00000000-0000-0000-0000-000000000000/'
          'resourceGroups/leftover": parsing the Factory ID: the number of '
          'segments didn\'t match\n\n'
          'Expected a Factory ID that matched (containing 8 segments):\n\n'
          '> /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/'
          'example-resource-group/providers/Microsoft.DataFactory/factories/'
          'factoryName\n',
        ),
        [
          (
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/'
                'example-resource-group/providers/Microsoft.DataFactory/'
                'factories/factoryName',
            'family azure-resource-id',
          ),
        ],
      );
    });

    test('a go-azure-sdk sample path is a candidate, subscription or not', () {
      expect(
        shapes(
          'Expected a ManagementGroup ID that matched:\n\n'
          '> /providers/Microsoft.Management/managementGroups/groupIdValue\n',
        ),
        [
          (
            '/providers/Microsoft.Management/managementGroups/groupIdValue',
            'family azure-resource-id',
          ),
          (
            '/providers/Microsoft.Management/managementGroups/leftover',
            'family management-group-id',
          ),
        ],
      );
    });

    test('a UUID or duration message names a value of that shape', () {
      expect(shapes('expected "tenant_id" to be a valid UUID, got leftover'), [
        ('11111111-1111-1111-1111-111111111111', 'family uuid'),
      ]);
      expect(shapes("leftover: expected 'P' period mark at the start"), [
        ('P1D', 'family iso8601-duration'),
      ]);
      expect(
        shapes(
          'invalid value for cluster_version (must be a version in the '
          'format `x.y` or `a.b.c.d`)',
        ),
        [('1.1', 'family dotted-version')],
      );
      expect(
        shapes(
          'expected "expiry_time" to be a valid RFC3339 date, got "leftover"',
        ),
        [('2024-01-01T00:00:00Z', 'family rfc3339')],
      );
      expect(
        shapes(
          'expected "address_prefixes.0" to be a valid CIDR Value, got leftover',
        ),
        [('10.0.0.0/24', 'family cidr')],
      );
      expect(
        shapes(
          'expected end_ip_address to contain a valid IPv4 address, got: leftover',
        ),
        [('10.0.0.1', 'family ipv4')],
      );
      expect(
        shapes('expected end_ip_address to contain a valid IP, got: leftover'),
        [('10.0.0.1', 'family ipv4')],
      );
      expect(
        shapes(
          'expected peer_ip to contain a valid IPv6 address, got: leftover',
        ),
        isEmpty,
      );
      expect(
        shapes(
          'expected backup_retention_period_in_days to be in the range (1 - 60), got 200',
        ),
        [(1, 'family int-range')],
      );
      expect(
        shapes(
          'expected length of application_identifier to be in the range (1 - 3), got leftover',
        ),
        isEmpty,
      );
      expect(
        shapes(
          'cannot parse Azure ID: parse "leftover": invalid URI for request',
        ),
        [
          (
            '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
            'family azure-id-uri',
          ),
        ],
      );
      expect(
        shapes(
          'expected 2 or 3 path segments, found 4 segment(s) in `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover`',
        ),
        [
          ('https://example.com/keys/leftover', 'family key-vault-nested-item'),
          (
            'https://example.com/keys/leftover/v',
            'family key-vault-nested-item',
          ),
          (
            'https://example.com/secrets/leftover',
            'family key-vault-nested-item',
          ),
          (
            'https://example.com/certificates/leftover',
            'family key-vault-nested-item',
          ),
          (
            'https://example.com/secrets/leftover/v',
            'family key-vault-nested-item',
          ),
          (
            'https://example.com/certificates/leftover/v',
            'family key-vault-nested-item',
          ),
        ],
      );
      expect(
        shapes(
          '"product_id" may only contain alphanumeric characters, underscores and dashes up to 80 characters in length',
        ),
        [('leftover', 'family alphanumeric-token')],
      );
    });

    test('regex gives a sample of the pattern, framework or Go quoting', () {
      expect(
        shapes(
          'Attribute directory_id value must match regular expression '
          '\'^d-[0-9a-f]{10}\$\', got: "leftover"',
        ),
        [('d-0000000000', 'family regex')],
      );
      expect(
        shapes(
          r'expected value of name to match regular expression "^[a-z][a-z0-9-]{2,}\\.example$", got leftover',
        ),
        [('a00.example', 'family regex')],
      );
    });
  });

  test('sampleRegex declines what it cannot sample', () {
    expect(sampleRegex('^(?i)abc'), isNull);
    expect(sampleRegex(r'(a)\1'), isNull);
    expect(sampleRegex('^(prod|dev)-[0-9]+?\$'), 'prod-0');
  });
}
