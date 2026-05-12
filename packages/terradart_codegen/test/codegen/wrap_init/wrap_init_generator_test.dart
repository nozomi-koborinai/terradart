import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_draft.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_generator.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  late final ResourceDef googlePubsubTopic;
  late final ResourceDef googleProject;

  setUpAll(() {
    final pubsubSrc = File(
      p.join(
          'test', 'fixtures', 'schema', 'google_pubsub_topic_v7.schema.json'),
    ).readAsStringSync();
    final pubsubIr = const SchemaJsonParser()
        .parseString(pubsubSrc, providerVersion: '7.31.0');
    googlePubsubTopic = pubsubIr.resources['google_pubsub_topic']!;

    final projSrc = File(
      p.join('test', 'fixtures', 'schema', 'google_project_v7.schema.json'),
    ).readAsStringSync();
    final projIr = const SchemaJsonParser()
        .parseString(projSrc, providerVersion: '7.31.0');
    googleProject = projIr.dataSources['google_project']!;
  });

  WrapInitGenerator generator() => WrapInitGenerator(
        clock: FixedClock(DateTime.utc(2026, 1, 1)),
        outputDirResolver: const OutputDirResolver(),
      );

  group('WrapInitGenerator axis derivation', () {
    test('kind=resource: no `kind:` line in draft axes', () {
      final draft = generator().generate(
        terraformType: 'google_pubsub_topic',
        def: googlePubsubTopic,
        kind: WrapperOverrideKind.resource,
        mm: null,
      );
      final keys = draft.axes.map((WrapInitAxis a) => a.key).toList();
      expect(keys, isNot(contains('kind')));
    });

    test('kind=dataSource: emits explicit `kind: data_source`', () {
      final draft = generator().generate(
        terraformType: 'google_project',
        def: googleProject,
        kind: WrapperOverrideKind.dataSource,
        mm: null,
      );
      final kindAxis = draft.axes
          .firstWhere((WrapInitAxis a) => a.key == 'kind') as FilledAxis;
      expect(kindAxis.value, 'data_source');
    });

    test('schemaStubBodyMode=bare for data source (explicit)', () {
      final draft = generator().generate(
        terraformType: 'google_project',
        def: googleProject,
        kind: WrapperOverrideKind.dataSource,
        mm: null,
      );
      final axis = draft.axes.firstWhere(
        (WrapInitAxis a) => a.key == 'schemaStubBodyMode',
      ) as FilledAxis;
      expect(axis.value, 'bare');
    });

    test('schemaStubBodyMode line omitted for resource (default)', () {
      final draft = generator().generate(
        terraformType: 'google_pubsub_topic',
        def: googlePubsubTopic,
        kind: WrapperOverrideKind.resource,
        mm: null,
      );
      final keys = draft.axes.map((WrapInitAxis a) => a.key).toList();
      expect(keys, isNot(contains('schemaStubBodyMode')));
    });

    test('paramOrder is CommentedAxis with non-empty schema-derived list', () {
      final draft = generator().generate(
        terraformType: 'google_pubsub_topic',
        def: googlePubsubTopic,
        kind: WrapperOverrideKind.resource,
        mm: null,
      );
      final axis = draft.axes.firstWhere(
        (WrapInitAxis a) => a.key == 'paramOrder',
      ) as CommentedAxis;
      final value = axis.value as List<String>;
      expect(value, isNotEmpty);
      // Verify first entry exists in the schema — order is schema-natural, so
      // the first attribute should be one google_pubsub_topic actually has.
      expect(
        ['name', 'project', 'labels'].any(value.contains),
        isTrue,
        reason:
            'expected at least one of name/project/labels in paramOrder, got $value',
      );
    });

    test('paramOrder banner is paramOrderCommentedBanner string', () {
      final draft = generator().generate(
        terraformType: 'google_pubsub_topic',
        def: googlePubsubTopic,
        kind: WrapperOverrideKind.resource,
        mm: null,
      );
      final axis = draft.axes.firstWhere(
        (WrapInitAxis a) => a.key == 'paramOrder',
      ) as CommentedAxis;
      // banner comes from wrap_init_templates.paramOrderCommentedBanner
      expect(axis.banner, contains('paramOrder is commented'));
    });
  });
}
