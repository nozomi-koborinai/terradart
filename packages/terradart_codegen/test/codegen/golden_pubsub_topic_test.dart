import 'dart:io';

import 'package:terradart_codegen/src/codegen/codegen_entry.dart';
import 'package:test/test.dart';

void main() {
  test('§9.2 #1 — google_pubsub_topic minimum schema golden matches', () async {
    final tmp = Directory.systemTemp.createTempSync('golden_pubsub_topic_');
    addTearDown(() => tmp.deleteSync(recursive: true));

    final result = await runCodegen(
      schemaJsonPath: 'test/fixtures/schema/google_pubsub_topic.schema.json',
      mmYamlPaths: const {
        'google_pubsub_topic': 'test/fixtures/mm/Topic.yaml',
      },
      outputDir: tmp.path,
      providerVersion: '5.32.0',
    );
    expect(result.emittedFiles, hasLength(1));
    final actual = File(result.emittedFiles.single).readAsStringSync();
    final expected = File(
      'test/golden/google_pubsub_topic.expected.dart.golden',
    ).readAsStringSync();
    expect(actual, equals(expected),
        reason: 'Stage 1 codegen wire format drifted; '
            'review packages/terradart_codegen/test/golden/google_pubsub_topic.expected.dart.golden '
            'and update both the emitter and the golden together.');
  });
}
