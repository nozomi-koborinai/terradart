import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
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
      // Use the v7 fixture so the registered override (which lists every
      // expected slot in paramOrder) can resolve every name against the IR.
      final emitter = WrapperEmitter(overrides: overrides);
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out,
          contains("import 'package:terradart_core/terradart_core.dart';"));
      expect(
        out,
        contains(
          "import 'package:terradart_google/src/generated/google_pubsub_topic.schema.dart'\n"
          "    show \$GooglePubsubTopic, googlePubsubTopicSensitive;",
        ),
      );
    });

    test('emit produces _<Pascal>SchemaInstance stub class', () {
      final emitter = WrapperEmitter(overrides: overrides);
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // The schema stub block must match the hand-written reference verbatim,
      // so assert the entire 11-line region as one substring instead of
      // checking individual lines (line-by-line `contains` would silently pass
      // even if blank lines or wording drifted).
      const expected =
          '// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only\n'
          '// consumed by `ResourceRef<S>.placeholder` (a future surface). We\n'
          "// keep this stub inline instead of constructing schemantic's generated\n"
          '// concrete class (which requires JSON-backed field args). `noSuchMethod`\n'
          '// satisfies the abstract field getters; they are never invoked in v0.0.x.\n'
          'class _GooglePubsubTopicSchemaInstance implements \$GooglePubsubTopic {\n'
          '  const _GooglePubsubTopicSchemaInstance();\n'
          '\n'
          '  @override\n'
          '  // ignore: non_constant_identifier_names\n'
          '  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);\n'
          '}\n';
      expect(out, contains(expected));
    });

    test('emit derives schema instance name from terraformType', () {
      // Sanity check that the stub class name follows snakeToPascal so the
      // emitter generalizes beyond google_pubsub_topic without us having to
      // hand-curate per-resource (this is what unblocks the rest of the
      // ~1000 google_* resources later in Phase 4).
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains(
          'class _GoogleEmitterTestResourceSchemaInstance '
          'implements \$GoogleEmitterTestResource {',
        ),
      );
      expect(
        out,
        contains('const _GoogleEmitterTestResourceSchemaInstance();'),
      );
    });

    test('emit produces final class header with \$tfType constant', () {
      final emitter = WrapperEmitter(overrides: overrides);
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // Header — the wrapper class extends Resource<S> where S is the abstract
      // schema interface ($GooglePubsubTopic).
      expect(
        out,
        contains(
          'final class GooglePubsubTopic extends Resource<\$GooglePubsubTopic> {',
        ),
      );

      // \$tfType is a static const carrying the Terraform type string. The
      // `// ignore: constant_identifier_names` lint exception is required
      // because Dart style normally rejects `\$`-prefixed identifiers.
      expect(out, contains('  // ignore: constant_identifier_names'));
      expect(
        out,
        contains("  static const String \$tfType = 'google_pubsub_topic';"),
      );
    });

    test('emit derives wrapper class name from terraformType', () {
      // Same generalization check as the schema-stub variant above — the
      // wrapper class name and Resource<S> type parameter must follow
      // snakeToPascal so the emitter scales across all google_* resources.
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains(
          'final class GoogleEmitterTestResource extends Resource<\$GoogleEmitterTestResource> {',
        ),
      );
      expect(
        out,
        contains(
          "  static const String \$tfType = 'google_emitter_test_resource';",
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

        // Nested blocks: max_items=1 (or nesting=single) collapses to
        // Map<String, dynamic>; everything else becomes List<Map<...>>.
        expect(
          out,
          contains(
            '    TfArg<Map<String, dynamic>>? ingestionDataSourceSettings,',
          ),
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
        expect(
          out,
          contains('    TfArg<Map<String, dynamic>>? schemaSettings,'),
        );

        // Lifecycle / dependsOn close the parameter list as super-parameters.
        expect(out, contains('    super.lifecycle,'));
        expect(out, contains('    super.dependsOn,'));
      },
    );

    test('emit super initializer feeds Resource<S> with argMap entries', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // Super initializer prefix + meta entries.
      expect(out, contains('}) : super('));
      expect(out, contains('terraformType: \$tfType,'));
      expect(
        out,
        contains('schema: const _GooglePubsubTopicSchemaInstance(),'),
      );
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

      // Optional nested blocks follow the same `if`-guarded pattern.
      expect(
        out,
        contains(
          "if (ingestionDataSourceSettings != null) 'ingestion_data_source_settings': ingestionDataSourceSettings,",
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
          "if (schemaSettings != null) 'schema_settings': schemaSettings,",
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

    test('emit \$sensitiveFields getter delegates to the const Set', () {
      // The wrapper exposes the sensitive-field set via a `$sensitiveFields`
      // getter so synth can mask values without re-deriving them from the
      // schema. The set itself is generated by `sensitive_set_emitter` and
      // imported in the file header (Task 4).
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(overrides: overrides);
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      // Match the full 3-line block so we cannot accidentally satisfy this
      // by relying on the schema-stub class's `@override` / non_constant
      // ignore lines.
      const expected = '  @override\n'
          '  // ignore: non_constant_identifier_names\n'
          '  Set<String> get \$sensitiveFields => googlePubsubTopicSensitive;\n';
      expect(out, contains(expected));
    });

    test('emit \$sensitiveFields const name follows snake-to-camel', () {
      // Sanity check that the getter expression uses the same identifier
      // sensitive_set_emitter generates, so the wrapper compiles against
      // any google_* schema, not just google_pubsub_topic.
      final emitter = WrapperEmitter(overrides: overrides);
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains(
          '  Set<String> get \$sensitiveFields => googleEmitterTestResourceSensitive;',
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

        expect(out, isNot(contains('effectiveLabels')));
        expect(out, isNot(contains('terraformLabels')));
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
  });
}
