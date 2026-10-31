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

    test('a name snake-cases as the provider generator does', () {
      final result = const MmYamlParser().parseString('''
name: Rule
properties:
  - name: 'IPProtocol'
    type: Enum
    enum_values: [TCP, UDP]
  - name: 'enableIPv6Route'
    type: Enum
    enum_values: [ON]
  - name: 'v1Mode'
    type: Enum
    enum_values: [A]
''');
      expect(result.enumValuesByPath.keys, [
        'ip_protocol',
        'enable_i_pv6_route',
        'v1_mode',
      ]);
    });

    test('constraints key by the Terraform name, never api_name', () {
      final result = const MmYamlParser().parseString('''
name: Job
properties:
  - name: 'state'
    type: Enum
    output: true
    enum_values: [DRAFT, RUNNING, FAILED]
  - name: 'desiredState'
    api_name: state
    type: Enum
    enum_values: [RUNNING]
''');
      expect(result.fieldOverrides['state']!.enumValues, [
        'DRAFT',
        'RUNNING',
        'FAILED',
      ]);
      expect(result.fieldOverrides['desired_state']!.enumValues, ['RUNNING']);
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

    test('unions a 3-way group whose members each list the other two', () {
      // Magic Modules omits the declaring property from exactly_one_of, so a
      // 3-way set arrives as three overlapping pairs. They are one group;
      // sealing a pair would drop the third member.
      final result = const MmYamlParser().parseString('''
properties:
  - name: vpcPeeringConfig
    type: NestedObject
    exactly_one_of:
      - pscInterfaceConfig
      - reservedPublicIpConfig
    properties:
      - name: vpcName
        type: String
  - name: pscInterfaceConfig
    type: NestedObject
    exactly_one_of:
      - vpcPeeringConfig
      - reservedPublicIpConfig
    properties:
      - name: networkAttachment
        type: String
  - name: reservedPublicIpConfig
    type: NestedObject
    exactly_one_of:
      - vpcPeeringConfig
      - pscInterfaceConfig
    properties:
      - name: natIpsCount
        type: Integer
''');
      expect(result.exactlyOneOfPaths, [
        [
          'psc_interface_config',
          'reserved_public_ip_config',
          'vpc_peering_config',
        ],
      ]);
    });

    test('leaves a 2-way omit-self pair ungrouped', () {
      // Each side lists only the other member. The list has length 1, so it
      // is not a group. Adding the declaring property would seal the pair
      // and change every constructor that already takes both fields.
      final result = const MmYamlParser().parseString('''
properties:
  - name: vpcPeeringConfig
    type: NestedObject
    exactly_one_of:
      - pscInterfaceConfig
    properties:
      - name: vpcName
        type: String
  - name: pscInterfaceConfig
    type: NestedObject
    exactly_one_of:
      - vpcPeeringConfig
    properties:
      - name: networkAttachment
        type: String
''');
      expect(result.exactlyOneOfPaths, isEmpty);
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

    test('resolves members upstream writes from another block', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: postgresqlProfile
    properties:
      - name: sslConfig
        properties:
          - name: serverVerification
            exactly_one_of:
              - ssl_config.0.server_verification
              - ssl_config.0.server_and_client_verification
          - name: serverAndClientVerification
  - name: tlsSettings
    properties:
      - name: subjectAltNames
        type: Array
        item_type:
          properties:
            - name: dnsName
              exactly_one_of:
                - tlsSettings.0.dns_name
                - tlsSettings.0.uniform_resource_identifier
            - name: uniformResourceIdentifier
  - name: eventConfig
    exactly_one_of:
      - pull_request
      - push
    properties:
      - name: pullRequest
      - name: push
        exactly_one_of:
          - branch
          - tag
        properties:
          - name: branch
          - name: tag
''');
      expect(result.exactlyOneOfPaths, [
        [
          'postgresql_profile.ssl_config.server_verification',
          'postgresql_profile.ssl_config.server_and_client_verification',
        ],
        [
          'tls_settings.subject_alt_names.dns_name',
          'tls_settings.subject_alt_names.uniform_resource_identifier',
        ],
        ['event_config.pull_request', 'event_config.push'],
        ['event_config.push.branch', 'event_config.push.tag'],
      ]);
    });

    test('a bare member that is no sibling names the root input', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: network
    exactly_one_of:
      - network
      - subnet.0.name
  - name: subnet
    properties:
      - name: name
        exactly_one_of:
          - network
          - subnet.0.name
''');
      expect(
        result.exactlyOneOfPaths,
        isEmpty,
        reason: '[network, subnet.name] spans two blocks',
      );
    });

    test('betaPaths are the beta properties and every one below', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: memberKey
    min_version: beta
    properties:
      - name: id
  - name: preferredMemberKey
    properties:
      - name: id
      - name: namespace
        min_version: beta
''');
      expect(result.betaPaths, {
        'member_key',
        'member_key.id',
        'preferred_member_key.namespace',
      });
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

    test('an object of output fields is an output, unless it may be empty', () {
      final result = const MmYamlParser().parseString('''
properties:
  - name: failureDetails
    type: NestedObject
    properties:
      - name: errorCode
        output: true
  - name: onDeployUpdatePolicy
    type: NestedObject
    allow_empty_object: true
    properties:
      - name: runtimeVersion
        output: true
''');
      expect(result.outputPaths, {
        'failure_details',
        'failure_details.error_code',
        'on_deploy_update_policy.runtime_version',
      });
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

  test('enumValuesByPath keys parameters and blocks by Terraform name', () {
    final result = const MmYamlParser().parseString('''
parameters:
  - name: region
    type: Enum
    enum_values: [EU, US]
properties:
  - name: backend
    api_name: backends
    type: Array
    item_type:
      type: NestedObject
      properties:
        - name: balancingMode
          type: Enum
          enum_values: [RATE, UTILIZATION]
  - name: settings
    type: NestedObject
    flatten_object: true
    properties:
      - name: tier
        type: Enum
        enum_values: [BASIC]
''');
    expect(result.enumValuesByPath, {
      'region': ['EU', 'US'],
      'backend.balancing_mode': ['RATE', 'UTILIZATION'],
      'tier': ['BASIC'],
    });
  });

  test('Map value_type properties carry enum and REST paths', () {
    final result = const MmYamlParser().parseString('''
name: Federation
api_resource_type_kind: MetastoreFederation
properties:
  - name: backendMetastores
    type: Map
    key_name: rank
    value_type:
      type: NestedObject
      properties:
        - name: metastoreType
          type: Enum
          enum_values: [BIGQUERY, DATAPROC_METASTORE]
  - name: settings
    type: NestedObject
    flatten_object: true
    properties:
      - name: tierName
        api_name: tier
        type: String
''');
    expect(result.apiResource, 'MetastoreFederation');
    expect(result.enumValuesByPath, {
      'backend_metastores.metastore_type': ['BIGQUERY', 'DATAPROC_METASTORE'],
    });
    expect(result.restPathsByPath, {
      'backend_metastores': ['backendMetastores'],
      'backend_metastores.metastore_type': [
        'backendMetastores',
        'metastoreType',
      ],
      'tier_name': ['settings', 'tier'],
    });
  });
}
