import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'coverage_dummies.dart';
import 'generate_aws_leftover_example.dart' as aws;
import 'generate_cloudflare_leftover_example.dart' as cloudflare;
import 'generate_data_source_leftover_example.dart' as google;

const _manifest = MigrateManifest(
  package: 'terradart_example',
  entries: [
    MigrateEntry(
      tfType: 'example_queue',
      className: 'ExampleQueue',
      barrel: 'example',
      kind: CatalogKind.resource,
      slots: [
        MigrateSlot(
          tfName: 'directory_id',
          dartName: 'directoryId',
          kind: MigrateSlotKind.scalar,
          required: true,
        ),
      ],
      getters: [],
    ),
  ],
  helpers: {},
  enums: {},
);

CoverageDummies _parse(String source, {Set<String> bindings = const {}}) =>
    CoverageDummies.parse(
      source,
      path: 'example.yaml',
      manifest: _manifest,
      bindings: bindings,
    );

void main() {
  final lanes = {
    'google': (googleMigrateManifest, google.googleStackBindings),
    'aws': (awsMigrateManifest, aws.awsStackBindings),
    'cloudflare': (
      cloudflareMigrateManifest,
      cloudflare.cloudflareStackBindings,
    ),
  };

  for (final MapEntry(key: lane, value: (manifest, bindings))
      in lanes.entries) {
    group('the checked-in $lane ledger', () {
      test('loads with no key for a slot its owner no longer has', () {
        final dummies = CoverageDummies.load(
          lane,
          manifest: manifest,
          bindings: bindings,
        );
        expect(dummies.stale, isEmpty);
      });

      test('is already in the form save() writes', () {
        final tmp = Directory.systemTemp.createTempSync('coverage_dummies_');
        addTearDown(() => tmp.deleteSync(recursive: true));
        final source = File(
          'tool/coverage_dummies/$lane.yaml',
        ).readAsStringSync();
        final path = '${tmp.path}/$lane.yaml';
        CoverageDummies.parse(
          source,
          path: path,
          manifest: manifest,
          bindings: bindings,
        ).save();
        expect(File(path).readAsStringSync(), source);
      });
    });
  }

  test('an exact key wins over a bare key, and a bare key over a glob', () {
    final dummies = _parse('''
'*Id': 'from-glob'
directoryId: 'from-bare'
ExampleQueue.directoryId: 'from-exact'
''');
    expect(
      dummies.valueFor('ExampleQueue', 'directoryId')?.dart,
      "'from-exact'",
    );
    expect(
      dummies.valueFor('ExampleTopic', 'directoryId')?.dart,
      "'from-bare'",
    );
    expect(dummies.valueFor('ExampleTopic', 'queueId')?.dart, "'from-glob'");
    expect(dummies.valueFor('ExampleTopic', 'name'), isNull);
  });

  test('the first matching glob in file order wins', () {
    final dummies = _parse('''
'*DirectoryService*.directoryId': 'd-1234567890'
'*Id': '00000000000000000000000000000001'
''');
    expect(
      dummies.valueFor('AwsDirectoryServiceTrust', 'directoryId')?.dart,
      "'d-1234567890'",
    );
    expect(
      dummies.valueFor('AwsWorkspacesDirectory', 'directoryId')?.dart,
      "'00000000000000000000000000000001'",
    );
  });

  test('ownsValue is true only for an Owner.param entry', () {
    final dummies = _parse('''
'*Arn': 'arn:aws:iam::123456789012:role/leftover'
ExampleQueue.directoryId: 'd-1234567890'
''');
    expect(dummies.ownsValue('ExampleQueue', 'directoryId'), isTrue);
    expect(dummies.ownsValue('ExampleQueue', 'recipeArn'), isFalse);
  });

  test('a value is written as the Dart the stack declares', () {
    final dummies = _parse(
      r'''
network: 'projects/${projectId}/global/networks/terradart'
project: '${projectId}'
keyName: '${saId}_key'
quote: "it's $5"
asnList: [64512]
include: ['WebsiteInteract']
CloudflareSnippet.files:
  dart: '[{''name'': ''main.js''},]'
''',
      bindings: {'projectId', 'saId'},
    );
    String? dart(String param, [String owner = 'X']) =>
        dummies.valueFor(owner, param)?.dart;
    expect(dart('network'), r"'projects/$projectId/global/networks/terradart'");
    expect(dart('project'), 'projectId');
    expect(dart('keyName'), r"'${saId}_key'");
    expect(dart('quote'), r"'it\'s \$5'");
    expect(dart('asnList'), '[64512]');
    expect(dart('include'), "['WebsiteInteract']");
    expect(dart('files', 'CloudflareSnippet'), "[{'name': 'main.js'},]");
  });

  test('a value reading a name the stack does not declare fails to load', () {
    expect(
      () => _parse(r"project: '${projectNumber}'", bindings: {'projectId'}),
      throwsA(
        isA<FormatException>().having(
          (e) => e.message,
          'message',
          contains('example.yaml: project: \${projectNumber}'),
        ),
      ),
    );
  });

  test('a key for a slot the owner does not have is stale', () {
    final dummies = _parse('''
ExampleQueue.directoryId: 'd-1234567890'
ExampleQueue.queueName: 'renamed-away'
ExampleQueueScope.zoneId: 'unjudged'
''');
    expect(dummies.stale.map((k) => k.value), ['ExampleQueue.queueName']);
  });
}
