import 'dart:convert';
import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_plan.dart';
import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'coverage_verdict.dart';
import 'provider_diagnostics.dart';
import 'wrap_lanes.dart' show providersPath;

const _fixtures = 'tool/testdata/provider_diagnostics';

/// One line per factory: `Class(param: <ledger value, else leftover>)`.
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

/// Answers `run` from the stack the driver wrote, and `revalidate` from the
/// patched `main.tf.json`.
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
}
