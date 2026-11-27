import 'dart:convert';
import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_plan.dart';
import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'coverage_verdict.dart';
import 'generate_aws_leftover_example.dart';
import 'provider_diagnostics.dart';
import 'wrap_lanes.dart' show providersPath;

const _fixtures = 'tool/testdata/provider_diagnostics';

final class _LineStack implements CoverageStackGenerator {
  const _LineStack(this.calls);

  final Map<String, String> calls;

  @override
  String get slug => 'test_leftover';

  @override
  Set<String> get bindings => const {'leftover', 'saId'};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) => RenderedStack(
    [
      for (final MapEntry(key: owner, value: param) in calls.entries)
        if (!exclude.contains(owner))
          '$owner($param: ${dummies.valueFor(owner, param)?.dart ?? 'leftover'})\n',
    ].join(),
  );
}

final class _FakeOracle implements Oracle {
  _FakeOracle(this.stack, {required this.onRun, required this.onRevalidate});

  final File stack;
  final OracleRun Function(String stackSource) onRun;
  final List<Rejection> Function(Map<String, Object?> patched) onRevalidate;

  @override
  Future<OracleRun> run(String slug) async => onRun(stack.readAsStringSync());

  @override
  Future<List<Rejection>> revalidate(String slug, String mainTfJson) async =>
      onRevalidate(jsonDecode(mainTfJson) as Map<String, Object?>);
}

void main() {
  late Directory tmp;
  setUp(() => tmp = Directory.systemTemp.createTempSync('coverage_stack_'));
  tearDown(() => tmp.deleteSync(recursive: true));

  ({CoverageLane lane, File stack, File ledger}) laneOf(
    MigrateManifest manifest,
    String ledger,
    Map<String, String> calls, {
    String? stack,
  }) {
    final ledgerFile = File('${tmp.path}/ledger.yaml')
      ..writeAsStringSync(ledger);
    final stackFile = File('${tmp.path}/main.dart');
    if (stack != null) stackFile.writeAsStringSync(stack);
    final generator = _LineStack(calls);
    return (
      lane: CoverageLane(
        name: 'test',
        generator: generator,
        manifest: manifest,
        dummies: CoverageDummies.parse(
          ledger,
          path: ledgerFile.path,
          manifest: manifest,
          bindings: generator.bindings,
        ),
        debtListed: const {},
        stackPath: stackFile.path,
      ),
      stack: stackFile,
      ledger: ledgerFile,
    );
  }

  Future<CoverageVerdict> run(CoverageLane lane, Oracle oracle) =>
      runCoverageStack(lane, oracle: oracle, format: (_) async {});

  String fixture(String name) => File('$_fixtures/$name').readAsStringSync();

  group('PR #922: google 8.6.0 rejects the JWKS resource_name', () {
    final validate = fixture('google_jwks_validate.json');
    final mainTf = fixture('google_jwks_main.tf.json');
    const before = r'''
# The google ledger before #922.
DataGoogleServiceAccountKey.name: '${saId}/keys/1'
''';
    const calls = {'DataGoogleIamWorkloadIdentityPoolJwks': 'resourceName'};
    final address = TfAddress.parse(
      'data.google_iam_workload_identity_pool_jwks.jwks',
    )!;

    List<Rejection> hostRequired(Map<String, Object?> patched) {
      final data = patched['data'] as Map<String, Object?>;
      final type =
          data['google_iam_workload_identity_pool_jwks']
              as Map<String, Object?>;
      final value =
          (type['jwks'] as Map<String, Object?>)['resource_name'] as String;
      return Uri.parse(value).host.isNotEmpty
          ? const []
          : [
              ValueRejection(
                address,
                const AttrPath(['resource_name']),
                value,
                'expected "resource_name" to have a host, got $value',
                '',
              ),
            ];
    }

    test('learns https://example.com/leftover from the host message', () async {
      final (:lane, :stack, :ledger) = laneOf(
        googleMigrateManifest,
        before,
        calls,
      );
      final verdict = await run(
        lane,
        _FakeOracle(
          stack,
          onRun: (source) =>
              source.contains("resourceName: 'https://example.com/leftover'")
              ? const OracleGreen('tofu 1.13.1', {'hashicorp/google': '8.6.0'})
              : OracleRejected(parseValidateJson(validate, mainTf), mainTf),
          onRevalidate: hostRequired,
        ),
      );

      expect(encodeVerdict(verdict), {
        'verdict': 'green',
        'slug': 'test_leftover',
        'engine': 'tofu 1.13.1',
        'providers': {'hashicorp/google': '8.6.0'},
        'learned': [
          {
            'key': 'DataGoogleIamWorkloadIdentityPoolJwks.resourceName',
            'value': 'https://example.com/leftover',
            'source': 'family url-host',
            'rejected': 'terradart-leftover',
            'at':
                'data.google_iam_workload_identity_pool_jwks.jwks.resource_name',
            'detail':
                'expected "resource_name" to have a host, got terradart-leftover',
          },
        ],
        'excluded': <Object?>[],
        'pruned': <Object?>[],
      });
      expect(
        stack.readAsStringSync(),
        "DataGoogleIamWorkloadIdentityPoolJwks(resourceName: 'https://example.com/leftover')\n",
      );
      expect(ledger.readAsStringSync(), r'''
# The google ledger before #922.

DataGoogleIamWorkloadIdentityPoolJwks.resourceName:
  value: 'https://example.com/leftover'
  why: 'data.google_iam_workload_identity_pool_jwks.jwks.resource_name rejected terradart-leftover: expected "resource_name" to have a host, got terradart-leftover (family url-host)'
DataGoogleServiceAccountKey.name: '${saId}/keys/1'
''');
    });

    test('a stack-level failure restores the stack and the ledger', () async {
      const committed = '// the stack as committed\n';
      final (:lane, :stack, :ledger) = laneOf(
        googleMigrateManifest,
        before,
        calls,
        stack: committed,
      );
      final verdict = await run(
        lane,
        _FakeOracle(
          stack,
          onRun: (source) =>
              source.contains("resourceName: 'https://example.com/leftover'")
              ? OracleRejected([
                  StackRejection('Invalid provider configuration', ''),
                ], mainTf)
              : OracleRejected(parseValidateJson(validate, mainTf), mainTf),
          onRevalidate: hostRequired,
        ),
      );

      expect(encodeVerdict(verdict), {
        'verdict': 'broken',
        'slug': 'test_leftover',
        'stage': 'validate',
        'log': 'Invalid provider configuration',
      });
      expect(stack.readAsStringSync(), committed);
      expect(ledger.readAsStringSync(), before);
    });
  });

  group('PR #923: aws 6.68.0 rejects directory_id "leftover"', () {
    final validate = fixture('aws_directory_validate.json');
    final mainTf = fixture('aws_directory_main.tf.json');
    const rejected =
        'Attribute directory_id must be a valid Directory Service '
        'Directory ID, got: leftover';
    final address = TfAddress.parse('aws_directory_service_ip_route.route')!;

    List<Rejection> directoryIdRequired(Map<String, Object?> patched) {
      final resource = patched['resource'] as Map<String, Object?>;
      final type =
          resource['aws_directory_service_ip_route'] as Map<String, Object?>;
      final value =
          (type['route'] as Map<String, Object?>)['directory_id'] as String;
      return RegExp(r'^d-[0-9a-f]{10}$').hasMatch(value)
          ? const []
          : [
              ValueRejection(
                address,
                const AttrPath(['directory_id']),
                value,
                'Invalid Attribute Value Match',
                'Attribute directory_id must be a valid Directory Service '
                    'Directory ID, got: $value',
              ),
            ];
    }

    test(
      'learns d-1234567890 from the AwsDirectoryServiceTrust sibling',
      () async {
        final (:lane, :stack, :ledger) = laneOf(
          awsMigrateManifest,
          '''
# The aws ledger before #923's name rule.
AwsDirectoryServiceTrust.directoryId: 'd-1234567890'
AwsDirectoryServiceTrust.remoteDomainName: 'example.com'
''',
          {
            'AwsDirectoryServiceIpRoute': 'directoryId',
            'AwsDirectoryServiceTrust': 'directoryId',
          },
        );
        final verdict = await run(
          lane,
          _FakeOracle(
            stack,
            onRun: (source) =>
                source.contains(
                  "AwsDirectoryServiceIpRoute(directoryId: 'd-1234567890')",
                )
                ? const OracleGreen('tofu 1.13.1', {'hashicorp/aws': '6.68.0'})
                : OracleRejected(parseValidateJson(validate, mainTf), mainTf),
            onRevalidate: directoryIdRequired,
          ),
        );

        expect((encodeVerdict(verdict))['learned'], [
          {
            'key': 'AwsDirectoryServiceIpRoute.directoryId',
            'value': 'd-1234567890',
            'source': 'sibling AwsDirectoryServiceTrust.directoryId',
            'rejected': 'leftover',
            'at': 'aws_directory_service_ip_route.route.directory_id',
            'detail': rejected,
          },
        ]);
        expect(
          stack.readAsStringSync(),
          "AwsDirectoryServiceIpRoute(directoryId: 'd-1234567890')\n"
          "AwsDirectoryServiceTrust(directoryId: 'd-1234567890')\n",
        );
      },
    );

    test(
      'with no candidate, leaves the factory out of the saved stack',
      () async {
        const noSibling = '''
# No other entry names a directoryId.
AwsDirectoryServiceTrust.remoteDomainName: 'example.com'
''';
        final (:lane, :stack, :ledger) = laneOf(awsMigrateManifest, noSibling, {
          'AwsDirectoryServiceIpRoute': 'directoryId',
          'AwsDirectoryServiceTrust': 'remoteDomainName',
        });
        final verdict = await run(
          lane,
          _FakeOracle(
            stack,
            onRun: (source) => source.contains('AwsDirectoryServiceIpRoute(')
                ? OracleRejected(parseValidateJson(validate, mainTf), mainTf)
                : const OracleGreen('tofu 1.13.1', {'hashicorp/aws': '6.68.0'}),
            onRevalidate: (_) => fail('no candidate means no trial round'),
          ),
        );

        expect(encodeVerdict(verdict), {
          'verdict': 'green',
          'slug': 'test_leftover',
          'engine': 'tofu 1.13.1',
          'providers': {'hashicorp/aws': '6.68.0'},
          'learned': <Object?>[],
          'excluded': [
            {
              'class_name': 'AwsDirectoryServiceIpRoute',
              'tf_type': 'aws_directory_service_ip_route',
              'kind': 'resource',
              'cause': {
                'kind': 'provider_rejected',
                'at': 'aws_directory_service_ip_route.route.directory_id',
                'rejected': 'leftover',
                'detail': rejected,
              },
            },
          ],
          'pruned': <Object?>[],
        });
        expect(
          stack.readAsStringSync(),
          "AwsDirectoryServiceTrust(remoteDomainName: 'example.com')\n",
        );
        expect(ledger.readAsStringSync(), noSibling);
      },
    );
  });

  test('every bump.exampleGenerator has a coverage stack, and only those', () {
    final generators = {
      for (final lane in parseBumpLanes(File(providersPath).readAsStringSync()))
        ?lane.exampleGenerator,
    };
    expect(kCoverageStacks.keys.toSet(), generators);
  });

  group('only the driver writes a coverage stack', () {
    test('the scan flags the rule PR #922 needed', () {
      expect(
        generatorViolations('''
void main() => File(_outPath).writeAsStringSync(render());

String _literal(String className, String name) {
  if (name == 'resourceName' &&
      className == 'DataGoogleIamWorkloadIdentityPoolJwks') {
    return "'https://example.com/.well-known/jwks.json'";
  }
  if (owner.startsWith('AwsDirectoryService')) return "'d-1234567890'";
  switch (owner) {
    case 'AwsDirectoryServiceTrust':
      return "'d-1234567890'";
  }
  return _literalByKey['\$className.\$name'] ?? _stringLiteral(name);
}
'''),
        [
          'declares main: void main(',
          'uses _literalByKey',
          'uses _stringLiteral',
          "compares an owner class name: className == '",
          "compares an owner class name: owner.startsWith('",
          "compares an owner class name: case 'AwsDirectoryServiceTrust'",
        ],
      );
    });

    test('no leftover generator chooses a dummy value itself', () {
      expect(
        {
          for (final path in kCoverageStacks.keys)
            path: generatorViolations(File(path).readAsStringSync()),
        },
        {for (final path in kCoverageStacks.keys) path: isEmpty},
      );
    });

    test('the schema bump runs the driver, never a generator', () {
      final workflow = File(
        '.github/workflows/schema-bump.yml',
      ).readAsStringSync();
      expect(
        RegExp(
          r'dart tool/coverage_stack\.dart --lane="\$LANE"',
        ).allMatches(workflow),
        hasLength(1),
      );
      expect([
        for (final m in RegExp(
          r'dart\s+(?:run\s+)?"?\$\{?EXAMPLE_GENERATOR',
        ).allMatches(workflow))
          m[0],
      ], isEmpty);
    });
  });

  test('trial patches keep a nested path and defer the path around it', () {
    final chosen = trialPatches({
      'parent': (
        json: 'whole',
        paths: [
          ['resource', 'volume'],
        ],
      ),
      'child': (
        json: 'leaf',
        paths: [
          ['resource', 'volume', 0, 'id'],
        ],
      ),
    });
    expect(chosen.deferred, {'parent'});
    expect(chosen.patches, hasLength(1));
    expect(chosen.patches.single.$1, ['resource', 'volume', 0, 'id']);
    expect(chosen.patches.single.$2, 'leaf');
  });

  test('trial patches a path the same key reports twice only once', () {
    const path = [
      'resource',
      'azurerm_stack_hci_deployment_setting',
      'setting',
      'scale_unit',
      0,
      'infrastructure_network',
      0,
      'ip_pool',
      0,
      'ending_address',
    ];
    final chosen = trialPatches({
      'AzurermStackHciDeploymentSetting.endingAddress': (
        json: '10.0.0.2',
        paths: [path, path],
      ),
    });
    expect(chosen.deferred, isEmpty);
    expect(chosen.patches, hasLength(1));
    expect(chosen.patches.single.$1, path);
    expect(chosen.patches.single.$2, '10.0.0.2');
  });

  group('required-block learning', () {
    const blockManifest = MigrateManifest(
      package: 'terradart_example',
      entries: [
        MigrateEntry(
          tfType: 'example_deployment',
          className: 'ExampleDeployment',
          barrel: 'example',
          kind: CatalogKind.resource,
          slots: [
            MigrateSlot(
              tfName: 'name',
              dartName: 'name',
              kind: MigrateSlotKind.scalar,
              required: true,
              dartType: 'String',
            ),
            MigrateSlot(
              tfName: 'configuration',
              dartName: 'configuration',
              kind: MigrateSlotKind.helper,
              required: false,
              repeated: true,
              helper: 'ExampleDeploymentConfiguration',
            ),
          ],
          getters: [],
        ),
      ],
      helpers: {
        'ExampleDeploymentConfiguration': MigrateHelper(
          className: 'ExampleDeploymentConfiguration',
          slots: [
            MigrateSlot(
              tfName: 'mode',
              dartName: 'mode',
              kind: MigrateSlotKind.scalar,
              required: true,
              dartType: 'String',
            ),
          ],
        ),
      },
      enums: {},
    );

    final address = TfAddress.parse('example_deployment.dep')!;

    test(
      'learns a required block and then an inner scalar value across passes',
      () async {
        final ledgerFile = File('${tmp.path}/block_ledger.yaml')
          ..writeAsStringSync("# block ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/block_main.dart');
        final generator = _BlockStack();
        final lane = CoverageLane(
          name: 'test',
          generator: generator,
          manifest: blockManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: blockManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );

        final mainTfWithConfig = jsonEncode({
          'resource': {
            'example_deployment': {
              'dep': {
                'name': 'leftover',
                'configuration': [
                  {'mode': 'leftover'},
                ],
              },
            },
          },
        });

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('configuration:')) {
                return OracleRejected([
                  BlockRejection(
                    address,
                    'Missing Configuration for Required Attribute',
                    'Block configuration must have a configuration value as the '
                        'provider has marked it as required',
                  ),
                ], '{}');
              }
              if (!source.contains("mode: 'ACTIVE'")) {
                return OracleRejected([
                  ValueRejection(
                    address,
                    const AttrPath(['configuration', 0, 'mode']),
                    'leftover',
                    'Invalid Attribute Value Match',
                    'Attribute mode value must be one of: ["ACTIVE"], got: "leftover"',
                  ),
                ], mainTfWithConfig);
              }
              return const OracleGreen('tofu 1.13.1', {
                'hashicorp/aws': '6.73.0',
              });
            },
            onRevalidate: (patched) {
              final res = patched['resource']! as Map<String, Object?>;
              final dep =
                  (res['example_deployment']! as Map<String, Object?>)['dep']!
                      as Map<String, Object?>;
              final cfg =
                  (dep['configuration']! as List).first as Map<String, Object?>;
              return cfg['mode'] == 'ACTIVE'
                  ? const []
                  : [
                      ValueRejection(
                        address,
                        const AttrPath(['configuration', 0, 'mode']),
                        cfg['mode']!,
                        'Invalid Attribute Value Match',
                        'Attribute mode value must be one of: ["ACTIVE"]',
                      ),
                    ];
            },
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded, isEmpty);
        expect(
          green.learned.map((l) => (l.key, l.value, l.source)),
          unorderedEquals([
            ('ExampleDeployment.configuration', 'include', 'required block'),
            ('ExampleDeploymentConfiguration.mode', 'ACTIVE', 'family one-of'),
          ]),
        );
        final saved = ledgerFile.readAsStringSync();
        expect(
          saved,
          contains('ExampleDeployment.configuration:\n  include: true'),
        );
        expect(
          saved,
          contains("ExampleDeploymentConfiguration.mode:\n  value: 'ACTIVE'"),
        );
      },
    );

    test(
      'leaves factory out and drops learned include when provider still rejects',
      () async {
        final ledgerFile = File('${tmp.path}/fail_ledger.yaml')
          ..writeAsStringSync("# fail ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/fail_main.dart');
        final lane = CoverageLane(
          name: 'test',
          generator: _BlockStack(),
          manifest: blockManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: blockManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('ExampleDeployment(')) {
                return const OracleGreen('tofu 1.13.1', {
                  'hashicorp/aws': '6.73.0',
                });
              }
              if (!source.contains('configuration:')) {
                return OracleRejected([
                  BlockRejection(
                    address,
                    'Missing Configuration for Required Attribute',
                    'Block configuration must have a configuration value as the '
                        'provider has marked it as required',
                  ),
                ], '{}');
              }
              return OracleRejected([
                BlockRejection(
                  address,
                  'Invalid Configuration',
                  'Conflicting attributes inside configuration',
                ),
              ], '{}');
            },
            onRevalidate: (_) => const [],
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded.map((e) => e.className), ['ExampleDeployment']);
        expect(green.learned, isEmpty);
        expect(ledgerFile.readAsStringSync(), isNot(contains('include: true')));
      },
    );

    test(
      'owner includedParams do not hijack unrelated sealed variant choices',
      () {
        final allOtherAws = {
          for (final e in awsMigrateManifest.entries)
            if (e.className != 'AwsVpclatticeListenerRule') e.className,
        };
        final dummies = CoverageDummies.parse(
          '''
AwsVpclatticeListenerRule.forward:
  include: true
''',
          path: 'aws.yaml',
          manifest: awsMigrateManifest,
          bindings: awsLeftoverStack.bindings,
        );
        final rendered = awsLeftoverStack.render(dummies, exclude: allOtherAws);
        expect(rendered.source, contains('action: .fixedResponse('));
        expect(rendered.source, isNot(contains('action: .forward(')));
      },
    );

    test(
      'two factories sharing a nested helper required-block key both learn and stay covered',
      () async {
        const sharedManifest = MigrateManifest(
          package: 'terradart_example',
          entries: [
            MigrateEntry(
              tfType: 'example_alpha',
              className: 'ExampleAlpha',
              barrel: 'example',
              kind: CatalogKind.resource,
              slots: [
                MigrateSlot(
                  tfName: 'config',
                  dartName: 'config',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  repeated: true,
                  helper: 'SharedConfig',
                ),
              ],
              getters: [],
            ),
            MigrateEntry(
              tfType: 'example_beta',
              className: 'ExampleBeta',
              barrel: 'example',
              kind: CatalogKind.resource,
              slots: [
                MigrateSlot(
                  tfName: 'config',
                  dartName: 'config',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  repeated: true,
                  helper: 'SharedConfig',
                ),
              ],
              getters: [],
            ),
          ],
          helpers: {
            'SharedConfig': MigrateHelper(
              className: 'SharedConfig',
              slots: [
                MigrateSlot(
                  tfName: 'inner',
                  dartName: 'inner',
                  kind: MigrateSlotKind.helper,
                  required: false,
                  repeated: true,
                  helper: 'SharedInner',
                ),
              ],
            ),
            'SharedInner': MigrateHelper(className: 'SharedInner', slots: []),
          },
          enums: {},
        );
        final ledgerFile = File('${tmp.path}/shared_ledger.yaml')
          ..writeAsStringSync("# shared ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/shared_main.dart');
        final lane = CoverageLane(
          name: 'test',
          generator: _SharedBlockStack(),
          manifest: sharedManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: sharedManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );
        final alpha = TfAddress.parse('example_alpha.alpha')!;
        final beta = TfAddress.parse('example_beta.beta')!;

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('inner: [SharedInner()]')) {
                return OracleRejected([
                  BlockRejection(
                    alpha,
                    'Missing Configuration for Required Attribute',
                    'Block config[0].inner must have a configuration value as '
                        'the provider has marked it as required',
                  ),
                  BlockRejection(
                    beta,
                    'Missing Configuration for Required Attribute',
                    'Block config[0].inner must have a configuration value as '
                        'the provider has marked it as required',
                  ),
                ], '{}');
              }
              return const OracleGreen('tofu 1.13.1', {
                'hashicorp/aws': '6.73.0',
              });
            },
            onRevalidate: (_) => const [],
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded, isEmpty);
        expect(green.learned.map((l) => (l.key, l.value, l.source)), [
          ('SharedConfig.inner', 'include', 'required block'),
        ]);
        expect(
          ledgerFile.readAsStringSync(),
          contains('SharedConfig.inner:\n  include: true'),
        );
      },
    );

    test(
      'excluding one sibling factory preserves a shared include still needed by another',
      () async {
        const sharedManifest = MigrateManifest(
          package: 'terradart_example',
          entries: [
            MigrateEntry(
              tfType: 'example_alpha',
              className: 'ExampleAlpha',
              barrel: 'example',
              kind: CatalogKind.resource,
              slots: [
                MigrateSlot(
                  tfName: 'config',
                  dartName: 'config',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  repeated: true,
                  helper: 'SharedConfig',
                ),
              ],
              getters: [],
            ),
            MigrateEntry(
              tfType: 'example_beta',
              className: 'ExampleBeta',
              barrel: 'example',
              kind: CatalogKind.resource,
              slots: [
                MigrateSlot(
                  tfName: 'config',
                  dartName: 'config',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  repeated: true,
                  helper: 'SharedConfig',
                ),
              ],
              getters: [],
            ),
          ],
          helpers: {
            'SharedConfig': MigrateHelper(
              className: 'SharedConfig',
              slots: [
                MigrateSlot(
                  tfName: 'inner',
                  dartName: 'inner',
                  kind: MigrateSlotKind.helper,
                  required: false,
                  repeated: true,
                  helper: 'SharedInner',
                ),
              ],
            ),
            'SharedInner': MigrateHelper(className: 'SharedInner', slots: []),
          },
          enums: {},
        );
        final ledgerFile = File('${tmp.path}/shared_sibling_ledger.yaml')
          ..writeAsStringSync("# shared ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/shared_sibling_main.dart');
        final lane = CoverageLane(
          name: 'test',
          generator: _SharedBlockStack(),
          manifest: sharedManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: sharedManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );
        final alpha = TfAddress.parse('example_alpha.alpha')!;
        final beta = TfAddress.parse('example_beta.beta')!;

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('inner: [SharedInner()]')) {
                return OracleRejected([
                  BlockRejection(
                    alpha,
                    'Missing Configuration for Required Attribute',
                    'Block config[0].inner must have a configuration value as '
                        'the provider has marked it as required',
                  ),
                  BlockRejection(
                    beta,
                    'Missing Configuration for Required Attribute',
                    'Block config[0].inner must have a configuration value as '
                        'the provider has marked it as required',
                  ),
                ], '{}');
              }
              if (source.contains('ExampleAlpha(')) {
                return OracleRejected([
                  BlockRejection(
                    alpha,
                    'Invalid Configuration',
                    'Alpha fails an unrelated check',
                  ),
                ], '{}');
              }
              return const OracleGreen('tofu 1.13.1', {
                'hashicorp/aws': '6.73.0',
              });
            },
            onRevalidate: (_) => const [],
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded.map((e) => e.className), ['ExampleAlpha']);
        expect(green.learned.map((l) => (l.key, l.value, l.source)), [
          ('SharedConfig.inner', 'include', 'required block'),
        ]);
        expect(
          ledgerFile.readAsStringSync(),
          contains('SharedConfig.inner:\n  include: true'),
        );
      },
    );

    test(
      'unused helper include still falls back to first optional helper parameter',
      () {
        final allOtherAws = {
          for (final e in awsMigrateManifest.entries)
            if (e.className != 'AwsDsqlStream') e.className,
        };
        final dummies = CoverageDummies.parse(
          '''
DsqlStreamTargetDefinition.nonExistent:
  include: true
''',
          path: 'aws.yaml',
          manifest: awsMigrateManifest,
          bindings: awsLeftoverStack.bindings,
        );
        final rendered = awsLeftoverStack.render(dummies, exclude: allOtherAws);
        expect(
          rendered.source,
          contains('DsqlStreamTargetDefinition(kinesis:'),
        );
      },
    );

    test(
      'unplaceable factory after learning an include prunes the learned include',
      () async {
        final ledgerFile = File('${tmp.path}/unplaceable_ledger.yaml')
          ..writeAsStringSync("# ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/unplaceable_main.dart');
        final lane = CoverageLane(
          name: 'test',
          generator: _UnplaceableOnIncludeStack(),
          manifest: blockManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: blockManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('ExampleDeployment(')) {
                return const OracleGreen('tofu 1.13.1', {
                  'appwrite/appwrite': '2.7.0',
                });
              }
              return OracleRejected([
                BlockRejection(
                  address,
                  'Missing Configuration for Required Attribute',
                  'Block configuration must have a configuration value as the '
                      'provider has marked it as required',
                ),
              ], '{}');
            },
            onRevalidate: (_) => const [],
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded.map((e) => e.className), ['ExampleDeployment']);
        expect(green.learned, isEmpty);
        expect(ledgerFile.readAsStringSync(), isNot(contains('include: true')));
      },
    );

    test(
      'sealed include with variant picks the named variant on that slot',
      () {
        final allOtherAws = {
          for (final e in awsMigrateManifest.entries)
            if (e.className != 'AwsVpclatticeListenerRule') e.className,
        };
        final dummies = CoverageDummies.parse(
          '''
AwsVpclatticeListenerRule.action:
  include: true
  variant: forward
''',
          path: 'aws.yaml',
          manifest: awsMigrateManifest,
          bindings: awsLeftoverStack.bindings,
        );
        final rendered = awsLeftoverStack.render(dummies, exclude: allOtherAws);
        expect(rendered.source, contains('action: .forward('));
        expect(rendered.source, isNot(contains('action: .fixedResponse(')));
      },
    );

    test(
      'wrapped sealed slot learns specific variant across passes (action -> action[0].forward)',
      () async {
        const wrappedManifest = MigrateManifest(
          package: 'terradart_example',
          entries: [
            MigrateEntry(
              tfType: 'example_rule',
              className: 'ExampleRule',
              barrel: 'example',
              kind: CatalogKind.resource,
              slots: [
                MigrateSlot(
                  tfName: 'action',
                  dartName: 'action',
                  kind: MigrateSlotKind.sealed,
                  required: false,
                  wrapped: false,
                  variants: {
                    'fixed_response': 'ExampleRuleActionFixed',
                    'forward': 'ExampleRuleActionForward',
                  },
                ),
              ],
              getters: [],
            ),
          ],
          helpers: {
            'ExampleRuleActionFixed': MigrateHelper(
              className: 'ExampleRuleActionFixed',
              shorthand: 'fixedResponse',
              slots: [
                MigrateSlot(
                  tfName: 'fixed_response',
                  dartName: 'fixedResponse',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  positional: true,
                  helper: 'ExampleRuleFixed',
                ),
              ],
            ),
            'ExampleRuleActionForward': MigrateHelper(
              className: 'ExampleRuleActionForward',
              shorthand: 'forward',
              slots: [
                MigrateSlot(
                  tfName: 'forward',
                  dartName: 'forward',
                  kind: MigrateSlotKind.helper,
                  required: true,
                  positional: true,
                  helper: 'ExampleRuleForward',
                ),
              ],
            ),
            'ExampleRuleFixed': MigrateHelper(
              className: 'ExampleRuleFixed',
              slots: [],
            ),
            'ExampleRuleForward': MigrateHelper(
              className: 'ExampleRuleForward',
              slots: [],
            ),
          },
          enums: {},
        );
        final ledgerFile = File('${tmp.path}/wrapped_sealed_ledger.yaml')
          ..writeAsStringSync("# ledger\nname: 'leftover'\n");
        final stackFile = File('${tmp.path}/wrapped_sealed_main.dart');
        final lane = CoverageLane(
          name: 'test',
          generator: _WrappedSealedStack(),
          manifest: wrappedManifest,
          dummies: CoverageDummies.parse(
            ledgerFile.readAsStringSync(),
            path: ledgerFile.path,
            manifest: wrappedManifest,
            bindings: const {},
          ),
          debtListed: const {},
          stackPath: stackFile.path,
        );
        final rule = TfAddress.parse('example_rule.rule')!;

        final verdict = await run(
          lane,
          _FakeOracle(
            stackFile,
            onRun: (source) {
              if (!source.contains('action:')) {
                return OracleRejected([
                  BlockRejection(
                    rule,
                    'Missing Configuration for Required Attribute',
                    'Block action must have a configuration value as the '
                        'provider has marked it as required',
                  ),
                ], '{}');
              }
              if (!source.contains('action: .forward(')) {
                return OracleRejected([
                  BlockRejection(
                    rule,
                    'Missing Configuration for Required Attribute',
                    'Block action[0].forward must have a configuration value '
                        'as the provider has marked it as required',
                  ),
                ], '{}');
              }
              return const OracleGreen('tofu 1.13.1', {
                'hashicorp/aws': '6.73.0',
              });
            },
            onRevalidate: (_) => const [],
          ),
        );

        expect(verdict, isA<CoverageGreen>());
        final green = verdict as CoverageGreen;
        expect(green.excluded, isEmpty);
        expect(
          ledgerFile.readAsStringSync(),
          contains(
            "ExampleRule.action:\n  include: true\n  variant: 'forward'",
          ),
        );
      },
    );
  });
}

final class _WrappedSealedStack implements CoverageStackGenerator {
  @override
  String get slug => 'wrapped_sealed_leftover';

  @override
  Set<String> get bindings => const {};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    if (exclude.contains('ExampleRule')) return const RenderedStack('');
    if (!dummies.includedParams('ExampleRule').contains('action')) {
      return const RenderedStack('ExampleRule()\n');
    }
    final variant =
        dummies.includedVariant('ExampleRule', 'action') ?? 'fixedResponse';
    return RenderedStack('ExampleRule(action: .$variant(.new()))\n');
  }
}

final class _UnplaceableOnIncludeStack implements CoverageStackGenerator {
  @override
  String get slug => 'unplaceable_leftover';

  @override
  Set<String> get bindings => const {};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    if (exclude.contains('ExampleDeployment')) return const RenderedStack('');
    if (dummies.includedParams('ExampleDeployment').contains('configuration')) {
      return const RenderedStack(
        '',
        unplaceable: {
          'ExampleDeployment': 'cannot construct helper configuration',
        },
      );
    }
    return const RenderedStack("ExampleDeployment(name: 'leftover')\n");
  }
}

final class _SharedBlockStack implements CoverageStackGenerator {
  @override
  String get slug => 'shared_block_leftover';

  @override
  Set<String> get bindings => const {};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    final hasInner = dummies.includedParams('SharedConfig').contains('inner');
    final innerArg = hasInner ? 'inner: [SharedInner()]' : '';
    final out = StringBuffer();
    if (!exclude.contains('ExampleAlpha')) {
      out.writeln('ExampleAlpha(config: [SharedConfig($innerArg)])');
    }
    if (!exclude.contains('ExampleBeta')) {
      out.writeln('ExampleBeta(config: [SharedConfig($innerArg)])');
    }
    return RenderedStack(out.toString());
  }
}

final class _BlockStack implements CoverageStackGenerator {
  @override
  String get slug => 'block_leftover';

  @override
  Set<String> get bindings => const {};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    if (exclude.contains('ExampleDeployment')) return const RenderedStack('');
    final hasConfig = dummies
        .includedParams('ExampleDeployment')
        .contains('configuration');
    final mode =
        dummies.valueFor('ExampleDeploymentConfiguration', 'mode')?.dart ??
        "'leftover'";
    final configArg = hasConfig ? ', configuration: [Config(mode: $mode)]' : '';
    return RenderedStack("ExampleDeployment(name: 'leftover'$configArg)\n");
  }
}

List<String> generatorViolations(String source) => [
  for (final m in RegExp(
    r'^(?:[\w<>?]+\s+)?main\s*\(',
    multiLine: true,
  ).allMatches(source))
    'declares main: ${m[0]}',
  for (final name in [
    '_literalByKey',
    '_stringLiteral',
    '_valueByKey',
    '_numberByKey',
  ])
    if (RegExp('\\b$name\\b').hasMatch(source)) 'uses $name',
  for (final m in RegExp(
    r"\b\w*(?:[cC]lassName|[oO]wner)\s*(?:==|!=)\s*'"
    r"|\b\w*(?:[cC]lassName|[oO]wner)\.(?:contains|startsWith|endsWith)\(\s*'"
    r"|\bcase\s+'(?:Data)?(?:Aws|Cloudflare|Google)[A-Z]\w*'",
  ).allMatches(source))
    'compares an owner class name: ${m[0]}',
];
