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

    // Plan 5.X (v0.5.0-dev): the resource Layer 1 file content is the empty
    // string — `FileEmitter.emit` is a no-op stub now (schemantic chain is
    // retired). The entry point still writes one file per requested resource
    // so downstream `dart pub` workspace iteration stays predictable; the
    // file contents are intentionally empty pending full deletion of the
    // entry point in a later cleanup pass.
    test('emits one .dart file per requested resource (no-op stub content)',
        () async {
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
      expect(src, isEmpty);
    });

    test('onlyResources filter restricts output set', () async {
      final result = await runCodegen(
        schemaJsonPath: 'test/fixtures/schema/curated_sample.schema.json',
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
