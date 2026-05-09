import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/codegen_entry.dart';
import 'package:test/test.dart';

void main() {
  group('runCodegen', () {
    late Directory tmp;
    setUp(() {
      tmp = Directory.systemTemp.createTempSync('terradart_codegen_');
    });
    tearDown(() {
      tmp.deleteSync(recursive: true);
    });

    test('emits one .dart file per requested resource', () async {
      final result = await runCodegen(
        schemaJsonPath: 'test/fixtures/schema/google_pubsub_topic.schema.json',
        mmYamlPaths: {
          'google_pubsub_topic': 'test/fixtures/mm/Topic.yaml',
        },
        outputDir: tmp.path,
        providerVersion: '5.32.0',
      );
      expect(result.emittedFiles, hasLength(1));
      final emitted = result.emittedFiles.single;
      expect(p.basename(emitted), 'google_pubsub_topic.dart');
      final src = File(emitted).readAsStringSync();
      expect(src, contains(r'abstract class $GooglePubsubTopic'));
      expect(src, contains("'hashicorp/google'"));
    });

    test('onlyResources filter restricts output set', () async {
      final result = await runCodegen(
        schemaJsonPath: 'test/fixtures/schema/tier1_sample.schema.json',
        mmYamlPaths: const {},
        outputDir: tmp.path,
        onlyResources: ['google_cloud_tasks_queue'],
      );
      expect(result.emittedFiles, hasLength(1));
      expect(p.basename(result.emittedFiles.single),
          'google_cloud_tasks_queue.dart');
    });
  });
}
