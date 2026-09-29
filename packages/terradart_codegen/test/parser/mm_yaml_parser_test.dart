import 'dart:io';

import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';

void main() {
  group('MmYamlParser', () {
    final yaml = File('test/fixtures/mm/Topic.yaml').readAsStringSync();

    test('top-level description is captured', () {
      final result = const MmYamlParser().parseString(yaml);
      expect(
        result.description,
        contains('named resource to which messages are sent'),
      );
    });

    test('immutable: true is mapped to forceNew via the snake_case key', () {
      final result = const MmYamlParser().parseString(yaml);
      expect(result.fieldOverrides['name']!.forceNew, isTrue);
      expect(result.fieldOverrides['kms_key_name']!.forceNew, isTrue);
      expect(result.fieldOverrides['project']?.forceNew ?? false, isFalse);
    });

    test('validation.regex / minLength / maxLength are surfaced', () {
      final result = const MmYamlParser().parseString(yaml);
      final c = result.fieldOverrides['name']!;
      expect(c.regex, r'^[a-zA-Z][a-zA-Z0-9._~%+-]{2,254}$');
      expect(c.minLength, 3);
      expect(c.maxLength, 255);
    });

    test('Enum properties surface enum_values in MM YAML order', () {
      final result = const MmYamlParser().parseString(yaml);
      // schema_settings is a nested object — its child fields are namespaced
      // with a dot separator: 'schema_settings.encoding'.
      final c = result.fieldOverrides['schema_settings.encoding']!;
      expect(c.enumValues, ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY']);
    });

    test('empty YAML produces empty overrides', () {
      final result = const MmYamlParser().parseString('properties: []\n');
      expect(result.fieldOverrides, isEmpty);
      expect(result.description, isNull);
    });

    test('a missing properties key is treated as empty', () {
      final result = const MmYamlParser().parseString('name: Foo\n');
      expect(result.fieldOverrides, isEmpty);
    });
  });

  test('parses top-level `product:` field when present', () {
    final yaml = '''
description: Test resource.
product: pubsub
properties: []
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.product, 'pubsub');
  });

  test('product is null when absent', () {
    final yaml = '''
description: Test resource.
properties: []
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.product, isNull);
  });

  test('parses top-level `exactly_one_of` into a single group', () {
    final yaml = '''
description: Test.
exactly_one_of:
  - pubsub_target
  - http_target
  - app_engine_http_target
properties: []
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.exactlyOneOfGroups, hasLength(1));
    expect(result.exactlyOneOfGroups.first, [
      'pubsub_target',
      'http_target',
      'app_engine_http_target',
    ]);
  });

  test('parses per-property `exactly_one_of` with prefix-scoped paths', () {
    final yaml = '''
properties:
  - name: foo
    exactly_one_of:
      - foo_a
      - foo_b
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.exactlyOneOfGroups, hasLength(1));
    expect(result.exactlyOneOfGroups.first, ['foo.foo_a', 'foo.foo_b']);
  });

  test('exactlyOneOfGroups is empty when absent', () {
    final yaml = '''
description: Test.
properties:
  - name: name
    type: String
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.exactlyOneOfGroups, isEmpty);
  });

  group('exactlyOneOfPaths', () {
    test('normalizes top-level, indexed and bare nested members', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: httpTarget
    exactly_one_of:
      - http_target
      - pubsub_target
  - name: pubsubTarget
    exactly_one_of:
      - http_target
      - pubsub_target
  - name: schedule
    properties:
      - name: daily
        exactly_one_of:
          - schedule.0.daily
          - schedule.0.weeklyRun
  - name: rules
    type: Array
    item_type:
      type: NestedObject
      properties:
        - name: allow
          exactly_one_of:
            - allow
            - deny
''');
      expect(result.exactlyOneOfPaths, [
        ['http_target', 'pubsub_target'],
        ['schedule.daily', 'schedule.weekly_run'],
        ['rules.allow', 'rules.deny'],
      ]);
      expect(result.exactlyOneOfGroups, hasLength(3));
    });

    test('drops a group whose members span parent blocks', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: a
    exactly_one_of:
      - a
      - b.0.c
''');
      expect(result.exactlyOneOfPaths, isEmpty);
    });

    test('ignores rules on output-only properties and their members', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: state
    output: true
    exactly_one_of:
      - STATE_UNSPECIFIED
      - CREATING
  - name: status
    output: true
    properties:
      - name: code
        exactly_one_of:
          - status.0.code
          - status.0.message
  - name: source
    exactly_one_of:
      - source
      - state
      - image
''');
      expect(result.exactlyOneOfPaths, [
        ['source', 'image'],
      ]);
    });

    test('lifts the fields of a flatten_object property into its parent', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: serviceLevelIndicator
    flatten_object: true
    properties:
      - name: basicSli
        exactly_one_of:
          - service_level_indicator.0.basic_sli
          - service_level_indicator.0.request_based_sli
        properties:
          - name: latency
            exactly_one_of:
              - service_level_indicator.0.basic_sli.0.latency
              - service_level_indicator.0.basic_sli.0.availability
          - name: availability
      - name: requestBasedSli
''');
      expect(result.exactlyOneOfPaths, [
        ['basic_sli', 'request_based_sli'],
        ['basic_sli.latency', 'basic_sli.availability'],
      ]);
    });
  });

  group('atMostOneOfPaths', () {
    test('turns pairwise conflicts into at-most-one groups', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: expireTime
    conflicts:
      - ttl
  - name: ttl
    conflicts:
      - expireTime
  - name: config
    properties:
      - name: network
        conflicts:
          - config.0.subnetwork
      - name: subnetwork
''');
      expect(result.atMostOneOfPaths, [
        ['expire_time', 'ttl'],
        ['config.network', 'config.subnetwork'],
      ]);
      expect(result.exactlyOneOfPaths, isEmpty);
    });

    test('promotes an at_least_one_of set whose members conflict', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: a
    at_least_one_of:
      - a
      - b
    conflicts:
      - b
  - name: b
    at_least_one_of:
      - a
      - b
  - name: c
    at_least_one_of:
      - c
      - d
''');
      expect(result.exactlyOneOfPaths, [
        ['a', 'b'],
      ]);
      expect(result.atMostOneOfPaths, isEmpty);
    });

    test('adds the _wo sibling of a write_only member', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: sensitiveLabels
    properties:
      - name: authToken
        write_only: true
        exactly_one_of:
          - sensitive_labels.0.auth_token
          - sensitive_labels.0.password
      - name: password
        exactly_one_of:
          - sensitive_labels.0.auth_token
          - sensitive_labels.0.password
  - name: sharedSecret
    write_only: true
  - name: privateKey
    write_only: true
    required: true
''');
      expect(result.exactlyOneOfPaths, [
        [
          'sensitive_labels.auth_token',
          'sensitive_labels.auth_token_wo',
          'sensitive_labels.password',
        ],
        ['private_key', 'private_key_wo'],
      ]);
      expect(result.atMostOneOfPaths, [
        ['shared_secret', 'shared_secret_wo'],
      ]);
    });

    test('names the _wo sibling after the Terraform name, not api_name', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: secretData
    api_name: data
    write_only: true
    required: true
''');
      expect(result.exactlyOneOfPaths, [
        ['secret_data', 'secret_data_wo'],
      ]);
    });
  });

  test(
    'enumValuesByPath reaches Array item properties; fieldOverrides not',
    () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: mode
    type: Enum
    enum_values: [A, B]
  - name: rules
    type: Array
    item_type:
      type: NestedObject
      properties:
        - name: action
          type: Enum
          enum_values: [ALLOW, DENY]
''');
      expect(result.enumValuesByPath, {
        'mode': ['A', 'B'],
        'rules.action': ['ALLOW', 'DENY'],
      });
      expect(result.fieldOverrides.keys, ['mode']);
    },
  );
}
