import 'dart:io';

import 'package:terradart_codegen/src/codegen/codegen_entry.dart';
import 'package:test/test.dart';

void main() {
  group('Curated-surface smoke', () {
    test('4 services + 4 IAM bindings emit through the pipeline', () async {
      final tmp = Directory.systemTemp.createTempSync('curated_smoke_');
      addTearDown(() => tmp.deleteSync(recursive: true));

      // Identity-heterogeneous services (name+location, secret_id, etc.)
      final svcResult = await runCodegen(
        schemaJsonPath: 'test/fixtures/schema/tier1_sample.schema.json',
        mmYamlPaths: const {},
        outputDir: tmp.path,
        providerVersion: '5.32.0',
      );
      expect(svcResult.emittedFiles, hasLength(2));

      // The 4 IAM bindings (Cloud Scheduler IAM is NOT in this set per
      // critical-fix #4 — it doesn't exist in hashicorp/google).
      final iamResult = await runCodegen(
        schemaJsonPath: 'test/fixtures/schema/tier1_iam.schema.json',
        mmYamlPaths: const {},
        outputDir: tmp.path,
        providerVersion: '5.32.0',
      );
      expect(iamResult.emittedFiles, hasLength(4));
      final iamFileNames = iamResult.emittedFiles
          .map((p) => p.split(Platform.pathSeparator).last)
          .toSet();
      expect(
          iamFileNames,
          equals({
            'google_pubsub_topic_iam_member.dart',
            'google_pubsub_subscription_iam_member.dart',
            'google_cloud_tasks_queue_iam_member.dart',
            'google_secret_manager_secret_iam_member.dart',
          }));

      // Sanity: each emitted file contains the abstract class header.
      for (final f in iamResult.emittedFiles) {
        final src = File(f).readAsStringSync();
        expect(src, contains('abstract class \$Google'),
            reason: 'Emitted file lacks expected \$Foo abstract class: $f');
        expect(src, contains('@TerraformResource('),
            reason: 'Emitted file lacks @TerraformResource: $f');
      }
    });

    test('Cloud Scheduler IAM is intentionally absent from the curated set',
        () {
      final fixture =
          File('test/fixtures/schema/tier1_iam.schema.json').readAsStringSync();
      // Defensive: verify the fixture itself doesn't accidentally include it.
      expect(fixture, isNot(contains('cloud_scheduler_job_iam_member')));
    });
  });
}
