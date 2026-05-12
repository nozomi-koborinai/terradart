import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_promote/exactly_one_of_emitter.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  late final ResourceDef googleCloudSchedulerJob;

  setUpAll(() {
    final src = File(p.join(
      'test',
      'fixtures',
      'schema',
      'google_cloud_scheduler_job_v7.schema.json',
    )).readAsStringSync();
    final ir =
        const SchemaJsonParser().parseString(src, providerVersion: '7.31.0');
    googleCloudSchedulerJob = ir.resources['google_cloud_scheduler_job']!;
  });

  group('ExactlyOneOfEmitter', () {
    const emitter = ExactlyOneOfEmitter();

    test('emits sealed declaration with name derived from common suffix', () {
      final out = emitter.emit(
        groupMembers: [
          'pubsub_target',
          'http_target',
          'app_engine_http_target'
        ],
        resourcePascal: 'GoogleCloudSchedulerJob',
        def: googleCloudSchedulerJob,
      );
      expect(out, contains('sealed class GoogleCloudSchedulerJobTarget'));
    });

    test(
        'emits helper class for each group member with required + optional fields',
        () {
      final out = emitter.emit(
        groupMembers: [
          'pubsub_target',
          'http_target',
          'app_engine_http_target'
        ],
        resourcePascal: 'GoogleCloudSchedulerJob',
        def: googleCloudSchedulerJob,
      );
      // Each member yields a final class extending the sealed.
      expect(
          out,
          contains(
              'final class PubsubTarget extends GoogleCloudSchedulerJobTarget'));
      expect(
          out,
          contains(
              'final class HttpTarget extends GoogleCloudSchedulerJobTarget'));
      expect(
          out,
          contains(
              'final class AppEngineHttpTarget extends GoogleCloudSchedulerJobTarget'));
      // PubsubTarget has at least `topic_name` (required per provider schema).
      expect(out, contains('required this.topicName'));
      expect(out, contains('final TfArg<String> topicName'));
    });

    test('emits blockKey getter with the snake_case member name', () {
      final out = emitter.emit(
        groupMembers: [
          'pubsub_target',
          'http_target',
          'app_engine_http_target'
        ],
        resourcePascal: 'GoogleCloudSchedulerJob',
        def: googleCloudSchedulerJob,
      );
      expect(out, contains("String get blockKey => 'pubsub_target'"));
      expect(out, contains("String get blockKey => 'http_target'"));
      expect(out, contains("String get blockKey => 'app_engine_http_target'"));
    });

    test('emits customSlots virtual slot with paramDeclaration + argMapEntry',
        () {
      final out = emitter.emit(
        groupMembers: [
          'pubsub_target',
          'http_target',
          'app_engine_http_target'
        ],
        resourcePascal: 'GoogleCloudSchedulerJob',
        def: googleCloudSchedulerJob,
      );
      expect(out, contains('customSlots:'));
      expect(out, contains('  target:'));
      expect(
          out,
          contains(
              "    paramDeclaration: 'required GoogleCloudSchedulerJobTarget target'"));
      expect(out, contains("target.blockKey: TfArg.literal(target.encode())"));
    });
  });
}
