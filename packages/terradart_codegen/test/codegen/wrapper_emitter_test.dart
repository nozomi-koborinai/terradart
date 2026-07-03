import 'dart:convert';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

/// Loads `google_pubsub_topic` from the v7 fixture (`~> 7.0` provider).
///
/// The pre-existing `google_pubsub_topic.schema.json` is a curated 6-attribute
/// snapshot used by older parser/CLI tests. The v7 fixture is the full
/// schema we extracted via `terraform providers schema -json` so the wrapper
/// emitter can be byte-diffed against the hand-written reference.
ResourceDef _loadGooglePubsubTopicV7() {
  final json = File(
    'test/fixtures/schema/google_pubsub_topic_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_pubsub_topic']!;
}

ResourceDef _loadGoogleProjectServiceV7() {
  final json = File(
    'test/fixtures/schema/google_project_service_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_project_service']!;
}

ResourceDef _loadGooglePubsubTopicIamMemberV7() {
  final json = File(
    'test/fixtures/schema/google_pubsub_topic_iam_member_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_pubsub_topic_iam_member']!;
}

ResourceDef _loadGooglePubsubSubscriptionIamMemberV7() {
  final json = File(
    'test/fixtures/schema/google_pubsub_subscription_iam_member_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_pubsub_subscription_iam_member']!;
}

ResourceDef _loadGoogleSecretManagerSecretIamMemberV7() {
  final json = File(
    'test/fixtures/schema/google_secret_manager_secret_iam_member_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_secret_manager_secret_iam_member']!;
}

ResourceDef _loadGoogleCloudTasksQueueIamMemberV7() {
  final json = File(
    'test/fixtures/schema/google_cloud_tasks_queue_iam_member_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_cloud_tasks_queue_iam_member']!;
}

ResourceDef _loadGoogleServiceAccountV7() {
  final json = File(
    'test/fixtures/schema/google_service_account_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_service_account']!;
}

ResourceDef _loadGoogleSecretManagerSecretVersionV7() {
  final json = File(
    'test/fixtures/schema/google_secret_manager_secret_version_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_secret_manager_secret_version']!;
}

ResourceDef _loadGoogleCloudSchedulerJobV7() {
  final json = File(
    'test/fixtures/schema/google_cloud_scheduler_job_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_cloud_scheduler_job']!;
}

ResourceDef _loadGoogleSecretManagerSecretV7() {
  final json = File(
    'test/fixtures/schema/google_secret_manager_secret_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_secret_manager_secret']!;
}

ResourceDef _loadGooglePubsubSubscriptionV7() {
  final json = File(
    'test/fixtures/schema/google_pubsub_subscription_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_pubsub_subscription']!;
}

/// Loads [terraformType] from the `terradart wrap` fixture
/// (`test/fixtures/wrap/source/schema.json`) — the same full-catalog schema
/// `nested_type_collector_test.dart` and `universal_invariants_test.dart` use
/// — rather than a dedicated per-resource `schema/*_v7.schema.json` (none of
/// the Task 5 `deriveNestedTypes` targets have one).
ResourceDef _loadFromWrapFixture(String terraformType) {
  final json = File('test/fixtures/wrap/source/schema.json').readAsStringSync();
  final ir =
      const SchemaJsonParser().parseString(json, providerVersion: '7.31.0');
  return ir.resources[terraformType]!;
}

/// Raw provider-schema JSON `block` maps keyed by Terraform type, mirroring
/// `wrap_command.dart`'s private `_rawResourceBlocks` — the shape
/// `WrapperEmitter.rawResourceSchemas` needs once an override sets
/// `deriveNestedTypes: true`.
Map<String, Map<String, dynamic>> _rawResourceBlocksFromWrapFixture() {
  final root = jsonDecode(
    File('test/fixtures/wrap/source/schema.json').readAsStringSync(),
  ) as Map<String, dynamic>;
  final schemas = (root['provider_schemas'] as Map).cast<String, dynamic>();
  final providerBody = (schemas.values.single as Map).cast<String, dynamic>();
  final resourceSchemas =
      (providerBody['resource_schemas'] as Map).cast<String, dynamic>();
  return {
    for (final entry in resourceSchemas.entries)
      entry.key: ((entry.value as Map)['block'] as Map).cast<String, dynamic>(),
  };
}

ResourceDef _loadGoogleCloudTasksQueueV7() {
  final json = File(
    'test/fixtures/schema/google_cloud_tasks_queue_v7.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_cloud_tasks_queue']!;
}

void main() {
  group('WrapperEmitter', () {
    late final Map<String, WrapperOverride> overrides;
    setUpAll(() {
      overrides = loadWrapperOverrides(
        rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
      ).resources;
    });

    test('emit returns non-empty string for minimal ResourceDef', () {
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_dummy',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out, isNotEmpty);
    });

    test('emit produces correct import declarations', () {
      // Post Plan 5.X: wrapper imports only terradart_core. The legacy
      // `.schema.dart` show clause and `terradart_annotations` import are
      // both gone (schemantic chain retired; @TerraformResource/@ForceNew/
      // @Sensitive annotations no longer emitted onto the wrapper).
      final emitter = WrapperEmitter(overrides: overrides);
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out,
          contains("import 'package:terradart_core/terradart_core.dart';"));
      expect(out, isNot(contains("'package:terradart_google/src/generated/")));
      expect(out, isNot(contains("'package:terradart_annotations/")));
    });

    test('emit produces final class header with tfType constant', () {
      final emitter = WrapperEmitter(overrides: overrides);
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // Header — post Plan 5.X, the wrapper class extends a flat `Resource`
      // (no `<S>` generic since the schemantic schema field is gone).
      expect(
        out,
        contains('final class GooglePubsubTopic extends Resource {'),
      );

      // v0.11.0 (ADR-0016): `tfType` carries the Terraform type string.
      // The pre-v0.11 dollar-prefixed sigil and its `// ignore:
      // constant_identifier_names` directive are retired.
      expect(out, isNot(contains('  // ignore: constant_identifier_names')));
      expect(
        out,
        contains("  static const String tfType = 'google_pubsub_topic';"),
      );
      // Compose the deprecated identifier without writing it literally so
      // repo-wide audit greps stay clean (the literal string is what
      // ADR-0016 is retiring).
      expect(out, isNot(contains('${r'$'}tfType')));
    });

    test('emit derives wrapper class name from terraformType', () {
      // Sanity check that the wrapper class name follows snakeToPascal so the
      // emitter scales across all google_* resources without hand-curation.
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains(
          'final class GoogleEmitterTestResource extends Resource {',
        ),
      );
      expect(
        out,
        contains(
          "  static const String tfType = 'google_emitter_test_resource';",
        ),
      );
    });

    test(
      'emit constructor lists required and optional attributes plus nested blocks',
      () {
        // Use the v7 fixture (real provider schema) so the emitter is exercised
        // against the same shape the hand-written wrapper targets.
        final def = _loadGooglePubsubTopicV7();
        final emitter = WrapperEmitter(overrides: overrides);
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        // Constructor opens with the wrapper class name and named-param brace.
        expect(out, contains('  GooglePubsubTopic({'));

        // Identity super-parameter: every Resource<S> takes a localName.
        expect(out, contains('    required super.localName,'));

        // Required attribute (only `name` in this resource).
        expect(out, contains('    required TfArg<String> name,'));

        // Optional scalar attributes — TfArg<DartType>? per attribute. Type
        // mapping mirrors `dart_type_writer`: MapType(value: StringType) →
        // Map<String, String>.
        expect(out, contains('    TfArg<String>? kmsKeyName,'));
        expect(out, contains('    TfArg<Map<String, String>>? labels,'));
        expect(
          out,
          contains('    TfArg<String>? messageRetentionDuration,'),
        );
        expect(out, contains('    TfArg<String>? project,'));
        expect(out, contains('    TfArg<Map<String, String>>? tags,'));

        // Nested blocks: customSlot overrides surface typed helpers; uncurated
        // blocks remain TfArg<Map<...>>.
        expect(
          out,
          contains(
              '    PubsubTopicIngestionDataSourceSettings? ingestionDataSourceSettings,'),
        );
        expect(
          out,
          contains('    TfArg<Map<String, dynamic>>? messageStoragePolicy,'),
        );
        expect(
          out,
          contains(
            '    TfArg<List<Map<String, dynamic>>>? messageTransforms,',
          ),
        );
        expect(out, contains('    PubsubTopicSchemaSettings? schemaSettings,'));

        // Lifecycle / dependsOn close the parameter list as super-parameters.
        expect(out, contains('    super.lifecycle,'));
        expect(out, contains('    super.dependsOn,'));
      },
    );

    test('emit super initializer feeds Resource with argMap entries', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // Super initializer prefix + meta entries. Post Plan 5.X: no `schema:`
      // arg (the schemantic schema field is gone from Resource).
      expect(out, contains('}) : super('));
      expect(out, contains('terraformType: tfType,'));
      expect(out, isNot(contains('schema:')));
      expect(out, contains('argMap: {'));

      // Required attribute: unconditional entry, snake_case key, camelCase
      // value identifier.
      expect(out, contains("'name': name,"));

      // Optional scalar attributes are guarded with `if (X != null)` so the
      // synth pass can distinguish "unset" from "explicit null".
      expect(
        out,
        contains("if (kmsKeyName != null) 'kms_key_name': kmsKeyName,"),
      );
      expect(out, contains("if (labels != null) 'labels': labels,"));
      expect(
        out,
        contains(
          "if (messageRetentionDuration != null) 'message_retention_duration': messageRetentionDuration,",
        ),
      );
      expect(out, contains("if (project != null) 'project': project,"));
      expect(out, contains("if (tags != null) 'tags': tags,"));

      // Optional nested blocks: customSlot helpers wrap with TfArg.literal.
      expect(
        out,
        contains(
          "if (ingestionDataSourceSettings != null) 'ingestion_data_source_settings': TfArg.literal([",
        ),
      );
      expect(
        out,
        contains(
          "if (messageStoragePolicy != null) 'message_storage_policy': messageStoragePolicy,",
        ),
      );
      expect(
        out,
        contains(
          "if (messageTransforms != null) 'message_transforms': messageTransforms,",
        ),
      );
      expect(
        out,
        contains(
          "if (schemaSettings != null) 'schema_settings': TfArg.literal([",
        ),
      );

      // Initializer closes argMap and the super(...) call. The `);` is the
      // distinctive end-of-initializer marker; `},` alone is too generic to
      // assert against.
      expect(out, contains('},'));
      expect(out, contains(');'));

      // Filtered slots must not leak into argMap either.
      expect(out, isNot(contains("'effective_labels':")));
      expect(out, isNot(contains("'terraform_labels':")));
      expect(out, isNot(contains("'id':")));
      expect(out, isNot(contains("'timeouts':")));
    });

    test('emit sensitiveFields getter delegates to the const Set', () {
      // The wrapper exposes the sensitive-field set via a `sensitiveFields`
      // getter so synth can mask values without re-deriving them from the
      // schema. Post Plan 5.X the const lives file-private at the top of
      // the wrapper file (was: imported from .schema.dart). v0.11.0
      // (ADR-0016) retired the `$`-prefix sigil and its
      // `non_constant_identifier_names` ignore directive.
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      const expected = '  @override\n'
          '  Set<String> get sensitiveFields => _googlePubsubTopicSensitive;\n';
      expect(out, contains(expected));
      expect(out, isNot(contains('// ignore: non_constant_identifier_names')));
      // Compose the deprecated identifier without writing it literally so
      // repo-wide audit greps stay clean (the literal string is what
      // ADR-0016 is retiring).
      expect(out, isNot(contains('${r'$'}sensitiveFields')));
    });

    test('emit sensitiveFields const name follows snake-to-camel', () {
      // Sanity check that the getter expression uses the same identifier
      // sensitive_set_emitter generates (file-private `_<r>Sensitive`),
      // so the wrapper compiles against any google_* schema.
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains(
          '  Set<String> get sensitiveFields => _googleEmitterTestResourceSensitive;',
        ),
      );
    });

    test('emit curated TfRef getters for google_pubsub_topic', () {
      // Phase 2.1 hard-codes the TfRef curation per resource — only
      // google_pubsub_topic carries `nameRef` and `id`. The general
      // mechanism (semantic_hints.yaml) lands in Phase 3.
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      expect(
        out,
        contains(
          "  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        out,
        contains(
          "  TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
        ),
      );
    });

    test('emit closes the wrapper class with a trailing brace', () {
      // The class block opened at Task 5 must be closed at the very end of
      // the file so the produced source is parseable as Dart.
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out.trimRight(), endsWith('}'));
    });

    test('emit does not curate TfRef getters for other resources yet', () {
      // Phase 2.1 limits TfRef hard-coding to google_pubsub_topic. Other
      // resources fall through silently until Phase 3 introduces the
      // semantic_hints.yaml mechanism.
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out, isNot(contains('TfRef<String> get nameRef')));
      expect(out, isNot(contains('TfRef<String> get id ')));
      // The class still needs its closing brace, regardless of TfRef
      // curation status.
      expect(out.trimRight(), endsWith('}'));
    });

    test('Level A: formatted emit matches hand-written golden', () {
      // The Phase 2.1 acceptance criterion: the wrapper emitter, fed the
      // real ~> 7.0 schema and run through dart_style, produces output
      // byte-identical to the hand-written `GooglePubsubTopic` reference
      // copied into the golden file at Task 1. Failures here drive the
      // hard-curation work in Task 12 (param ordering, doc comments,
      // provider-version literal, etc).
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');

      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail(
          'Emitter output does not parse as Dart:\n$e\n'
          '--- raw output ---\n$raw',
        );
      }

      final expected = File(
        'test/golden/google_pubsub_topic.factory.expected.dart.golden',
      ).readAsStringSync();

      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_project_service formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleProjectServiceV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_project_service.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_pubsub_topic_iam_member formatted emit matches hand-written golden',
        () {
      final def = _loadGooglePubsubTopicIamMemberV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_pubsub_topic_iam_member.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_pubsub_subscription_iam_member formatted emit matches hand-written golden',
        () {
      final def = _loadGooglePubsubSubscriptionIamMemberV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_pubsub_subscription_iam_member.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_secret_manager_secret_iam_member formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleSecretManagerSecretIamMemberV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_secret_manager_secret_iam_member.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_cloud_tasks_queue_iam_member formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleCloudTasksQueueIamMemberV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_cloud_tasks_queue_iam_member.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_service_account formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleServiceAccountV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_service_account.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_secret_manager_secret_version formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleSecretManagerSecretVersionV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_secret_manager_secret_version.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_cloud_scheduler_job formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleCloudSchedulerJobV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_cloud_scheduler_job.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_secret_manager_secret formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleSecretManagerSecretV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_secret_manager_secret.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_pubsub_subscription formatted emit matches hand-written golden',
        () {
      final def = _loadGooglePubsubSubscriptionV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_pubsub_subscription.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
        'Level A: google_cloud_tasks_queue formatted emit matches hand-written golden',
        () {
      final def = _loadGoogleCloudTasksQueueV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
      }
      final expected = File(
        'test/golden/google_cloud_tasks_queue.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(formatted, equals(expected));
    });

    test(
      'emit supportsDeletionProtection override present when schema has deletion_protection',
      () {
        // A resource whose root block exposes a top-level `deletion_protection`
        // attribute must emit the `@override bool get supportsDeletionProtection
        // => true;` getter so the runtime devMode injection can opt-in.
        // v0.11.0 (ADR-0016): the `$`-prefix sigil is retired.
        final emitter = WrapperEmitter(overrides: overrides);
        const def = ResourceDef(
          terraformType: 'google_capable_resource',
          root: BlockDef(
            attributes: [
              Attribute(
                name: 'deletion_protection',
                type: BoolType(),
                constraints: Constraints(optional: true),
              ),
            ],
          ),
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');
        const expected = '  @override\n'
            '  bool get supportsDeletionProtection => true;\n';
        expect(out, contains(expected));
        // Compose the deprecated identifier without writing it literally so
        // repo-wide audit gates stay clean.
        expect(out, isNot(contains('${r'$'}supportsDeletionProtection')));
      },
    );

    test(
      'emit supportsDeletionProtection override absent when schema lacks deletion_protection',
      () {
        // Resources without `deletion_protection` must NOT emit the override —
        // they inherit the base-class default of false.
        final emitter = WrapperEmitter(overrides: overrides);
        const def = ResourceDef(
          terraformType: 'google_incapable_resource',
          root: BlockDef(
            attributes: [
              Attribute(
                name: 'name',
                type: StringType(),
                constraints: Constraints(required: true),
              ),
            ],
          ),
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');
        expect(out, isNot(contains('supportsDeletionProtection')));
      },
    );

    test(
      'emit constructor excludes computed-only, id, and timeouts',
      () {
        // computed-only attributes (effective_labels, terraform_labels) and
        // the synthetic `id` identity field must not appear as constructor
        // params — they are exposed through TfRef getters in Task 9 (only
        // `id` is curated for this resource). The Terraform internal
        // `timeouts` block is filtered out at the emitter level because it
        // is not a user-facing input.
        final def = _loadGooglePubsubTopicV7();
        final emitter = WrapperEmitter(overrides: overrides);
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        // Sanity: assert the constructor actually got emitted before checking
        // negative cases. Without this, the `isNot(contains(...))` checks
        // would pass vacuously when the emitter still has no constructor.
        expect(
          out,
          contains('  GooglePubsubTopic({'),
          reason:
              'constructor must be emitted; otherwise exclusion checks pass vacuously',
        );

        // effectiveLabels / terraformLabels MUST NOT appear as constructor
        // params (computed-only, emitted as TfRef getters, not inputs).
        // Match the param-slot shapes; the getter declarations are fine.
        expect(out,
            isNot(contains('TfArg<Map<String, String>>? effectiveLabels,')));
        expect(out,
            isNot(contains('TfArg<Map<String, String>>? terraformLabels,')));
        // `id` cannot be matched as a bare substring — it appears inside
        // `localName`, comments, etc. Match the constructor-param shape.
        expect(out, isNot(contains('TfArg<String>? id,')));
        expect(out, isNot(contains('TfArg<String> id,')));
        // `timeouts` block: the snake-case Dart name would be `timeouts`,
        // unique enough as a constructor-param token to assert directly.
        expect(out, isNot(contains('? timeouts,')));
        expect(out, isNot(contains(' timeouts,')));
      },
    );

    group('deriveNestedTypes top-level slot rendering (Task 5 flip)', () {
      // The real yaml overrides now flip `deriveNestedTypes: true` for 19
      // resources (this branch), so `overrides` (loaded above from the real
      // yaml dir) already exercises `_nestedTypeSlot` — no synthetic override
      // needed. `rawResourceSchemas` mirrors `wrap_command.dart`'s
      // `_rawResourceBlocks`, built from the same wrap-fixture schema.json
      // `nested_type_collector_test.dart` uses.
      late final Map<String, Map<String, dynamic>> rawResourceSchemas;
      setUpAll(() {
        rawResourceSchemas = _rawResourceBlocksFromWrapFixture();
      });

      test(
          'an optional, scalar top-level slot has no `!` (parameter '
          'promotion makes it unnecessary — google_app_engine_domain_mapping.'
          'ssl_settings)', () {
        const terraformType = 'google_app_engine_domain_mapping';
        final def = _loadFromWrapFixture(terraformType);
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: rawResourceSchemas,
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        expect(
          out,
          contains('AppEngineDomainMappingSslSettings? sslSettings'),
        );
        expect(
          out,
          contains(
            "if (sslSettings != null) 'ssl_settings': "
            'TfArg.literal(sslSettings.encode()),',
          ),
        );
        expect(out, isNot(contains('sslSettings!')));
      });

      test(
          'an optional, repeated top-level slot has no `!` on the iterable '
          '(google_dataplex_entry_link.aspects)', () {
        const terraformType = 'google_dataplex_entry_link';
        final def = _loadFromWrapFixture(terraformType);
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: rawResourceSchemas,
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        expect(out, contains('List<DataplexEntryLinkAspects>? aspects'));
        expect(
          out,
          contains(
            "if (aspects != null) 'aspects': "
            'TfArg.literal([for (final e in aspects) e.encode()]),',
          ),
        );
        expect(out, isNot(contains('aspects!')));
      });

      test(
          'a required, repeated top-level slot has no `!` and no `if` guard '
          '(google_os_config_os_policy_assignment.os_policies)', () {
        const terraformType = 'google_os_config_os_policy_assignment';
        final def = _loadFromWrapFixture(terraformType);
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: rawResourceSchemas,
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        expect(
          out,
          contains(
              'required List<OsConfigOsPolicyAssignmentOsPolicies> osPolicies'),
        );
        expect(
          out,
          contains(
            "'os_policies': TfArg.literal([for (final e in osPolicies) e.encode()]),",
          ),
        );
        expect(out, isNot(contains('osPolicies!')));
        expect(out, isNot(contains('if (osPolicies != null)')));

        // The excluded `resources` grandchild keeps its real schema
        // cardinality (required + repeated) rather than the collector's
        // pre-fix scalar-optional default — see nested_type_collector.dart's
        // `ExcludedNestedBlock`.
        expect(
          out,
          contains(
            'final TfArg<List<Map<String, dynamic>>> resources;',
          ),
        );
      });
    });
  });
}
