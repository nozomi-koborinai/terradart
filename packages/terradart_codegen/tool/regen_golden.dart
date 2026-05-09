// One-shot helper: re-emits the google_pubsub_topic golden from the current
// emitter output. Run from the package root:
//   dart run tool/regen_golden.dart
//
// This is invoked when intentional emitter changes (formatter-driven
// whitespace, dart_style version bump, etc.) shift the wire format. NOT
// invoked from CI.
import 'dart:io';
import 'package:terradart_codegen/src/codegen/codegen_entry.dart';

Future<void> main() async {
  final tmp = Directory.systemTemp.createTempSync('regen_');
  await runCodegen(
    schemaJsonPath: 'test/fixtures/schema/google_pubsub_topic.schema.json',
    mmYamlPaths: const {
      'google_pubsub_topic': 'test/fixtures/mm/Topic.yaml',
    },
    outputDir: tmp.path,
    providerVersion: '5.32.0',
  );
  final actual =
      File('${tmp.path}/google_pubsub_topic.dart').readAsStringSync();
  File('test/golden/google_pubsub_topic.expected.dart')
      .writeAsStringSync(actual);
  // ignore: avoid_print
  print('Golden regenerated, ${actual.length} chars');
  tmp.deleteSync(recursive: true);
}
