import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'retire_stale_sealed_names.dart';

void main() {
  test('staleSealedNamesIn reads only the matches-no-group E406', () {
    const log = '''
terradart wrap: exactly-one group not sealed: google_compute_firewall [allow, deny]
[E406] terradart wrap: google_pubsub_topic sealedNames "ingestion_data_source_settings.aws_kinesis, ingestion_data_source_settings.cloud_storage" matches no sealed group
[E406] terradart wrap: google_cloud_run_v2_service sealedNames "a, b" repeats the derived name
[E406] terradart wrap: google_ces_agent sealedNames "model, other" matches no sealed group
''';
    expect(staleSealedNamesIn(log), [
      (
        type: 'google_pubsub_topic',
        key:
            'ingestion_data_source_settings.aws_kinesis, ingestion_data_source_settings.cloud_storage',
      ),
      (type: 'google_ces_agent', key: 'model, other'),
    ]);
  });

  test('dropSealedNames removes one key and keeps the rest of the file', () {
    const source = '''
outputDir: pubsub

sealedNames:
  "keep.a, keep.b": kept
  "drop.a, drop.b": gone

paramOrder:
  - name
''';
    expect(dropSealedNames(source, {'drop.a, drop.b'}), '''
outputDir: pubsub

sealedNames:
  "keep.a, keep.b": kept

paramOrder:
  - name
''');
  });

  test('dropSealedNames removes an emptied section', () {
    const source = '''
deriveExactlyOne: true

sealedNames:
  "only.a, only.b": name

paramOrder:
  - name
''';
    expect(dropSealedNames(source, {'only.a, only.b'}), '''
deriveExactlyOne: true

paramOrder:
  - name
''');
  });

  test('retireStaleSealedNames edits the matching override file', () {
    final root = Directory.systemTemp.createTempSync('stale_sealed_');
    addTearDown(() => root.deleteSync(recursive: true));
    File(p.join(root.path, 'google_pubsub_topic.yaml')).writeAsStringSync('''
sealedNames:
  "ingestion.a, ingestion.b": source

paramOrder:
  - name
''');
    File(
      p.join(root.path, 'data_google_pubsub_topic.yaml'),
    ).writeAsStringSync('kind: data_source\n');

    final dropped = retireStaleSealedNames(root.path, [
      (type: 'google_pubsub_topic', key: 'ingestion.a, ingestion.b'),
    ]);

    expect(dropped, ['google_pubsub_topic ingestion.a, ingestion.b']);
    expect(
      File(p.join(root.path, 'google_pubsub_topic.yaml')).readAsStringSync(),
      '''
paramOrder:
  - name
''',
    );
    expect(
      File(
        p.join(root.path, 'data_google_pubsub_topic.yaml'),
      ).readAsStringSync(),
      'kind: data_source\n',
    );
  });
}
