import 'dart:convert';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/package_formatter.dart';
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

ResourceDef _loadGoogleServiceAccountV8() {
  final json = File(
    'test/fixtures/schema/google_service_account_v8.schema.json',
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources['google_service_account']!;
}

ResourceDef _loadGoogleSecretManagerSecretVersionV8() {
  final json = File(
    'test/fixtures/schema/google_secret_manager_secret_version_v8.schema.json',
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

ResourceDef _loadFromWrapFixture(String terraformType) {
  final json = File('test/fixtures/wrap/source/schema.json').readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.31.0',
  );
  return ir.resources[terraformType]!;
}

Map<String, Map<String, dynamic>> _rawResourceBlocksFromWrapFixture() =>
    _rawResourceBlocks('test/fixtures/wrap/source/schema.json');

final Map<String, Map<String, dynamic>> _perResourceRawBlocks = {
  for (final file in Directory('test/fixtures/schema').listSync())
    if (file is File && RegExp(r'_v[78]\.schema\.json$').hasMatch(file.path))
      ..._rawResourceBlocks(file.path),
};

Map<String, Map<String, dynamic>> _rawResourceBlocks(String path) {
  final root =
      jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
  final schemas = (root['provider_schemas'] as Map).cast<String, dynamic>();
  final providerBody = (schemas.values.single as Map).cast<String, dynamic>();
  final resourceSchemas =
      ((providerBody['resource_schemas'] as Map?) ?? const {})
          .cast<String, dynamic>();
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
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      const def = ResourceDef(
        terraformType: 'google_dummy',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out, isNotEmpty);
    });

    test('emit produces correct import declarations', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains("import 'package:terradart_core/terradart_core.dart';"),
      );
      expect(out, isNot(contains("'package:terradart_google/src/generated/")));
      expect(out, isNot(contains("'package:terradart_annotations/")));
    });

    test('emit produces final class header with tfType constant', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final def = _loadGooglePubsubTopicV7();
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      expect(out, contains('final class GooglePubsubTopic extends Resource {'));

      expect(out, isNot(contains('  // ignore: constant_identifier_names')));
      expect(
        out,
        contains("  static const String tfType = 'google_pubsub_topic';"),
      );
      expect(out, isNot(contains('${r'$'}tfType')));
    });

    test('emit derives wrapper class name from terraformType', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains('final class GoogleEmitterTestResource extends Resource {'),
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
        final def = _loadGooglePubsubTopicV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        expect(out, contains('  GooglePubsubTopic(super.localName, {'));

        expect(out, contains('    required TfArg<String> name,'));

        expect(out, contains('    TfArg<String>? kmsKeyName,'));
        expect(out, contains('    TfArg<Map<String, String>>? labels,'));
        expect(out, contains('    TfArg<String>? messageRetentionDuration,'));
        expect(out, contains('    TfArg<String>? project,'));
        expect(out, contains('    TfArg<Map<String, String>>? tags,'));

        expect(
          out,
          contains(
            '    PubsubTopicIngestionDataSourceSettings? ingestionDataSourceSettings,',
          ),
        );
        expect(
          out,
          contains(
            '    PubsubTopicMessageStoragePolicy? messageStoragePolicy,',
          ),
        );
        expect(
          out,
          contains(
            '    List<PubsubTopicMessageTransforms>? messageTransforms,',
          ),
        );
        expect(out, contains('    PubsubTopicSchemaSettings? schemaSettings,'));

        expect(out, contains('    super.lifecycle,'));
        expect(out, contains('    super.dependsOn,'));
      },
    );

    test('emit super initializer feeds Resource with argMap entries', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      expect(out, contains('}) : super('));
      expect(out, contains('terraformType: tfType,'));
      expect(out, isNot(matches(RegExp(r'^\s*schema:', multiLine: true))));
      expect(out, contains('argMap: {'));

      expect(out, contains("'name': name,"));

      expect(out, contains("'kms_key_name': ?kmsKeyName,"));
      expect(out, contains("'labels': ?labels,"));
      expect(
        out,
        contains("'message_retention_duration': ?messageRetentionDuration,"),
      );
      expect(out, contains("'project': ?project,"));
      expect(out, contains("'tags': ?tags,"));

      expect(
        out,
        contains(
          "if (ingestionDataSourceSettings != null) 'ingestion_data_source_settings': "
          'TfArg.literal(ingestionDataSourceSettings.encode()),',
        ),
      );
      expect(
        out,
        contains(
          "if (messageStoragePolicy != null) 'message_storage_policy': "
          'TfArg.literal(messageStoragePolicy.encode()),',
        ),
      );
      expect(
        out,
        contains(
          "if (messageTransforms != null) 'message_transforms': "
          'TfArg.literal([for (final e in messageTransforms) e.encode()]),',
        ),
      );
      expect(
        out,
        contains(
          "if (schemaSettings != null) 'schema_settings': "
          'TfArg.literal(schemaSettings.encode()),',
        ),
      );

      expect(out, contains('},'));
      expect(out, contains(');'));

      expect(out, isNot(contains("'effective_labels':")));
      expect(out, isNot(contains("'terraform_labels':")));
      expect(out, isNot(contains("'id':")));
      expect(out, isNot(contains("'timeouts':")));
    });

    test('emit sensitiveFields getter delegates to the const Set', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      const expected =
          '  @override\n'
          '  Set<String> get sensitiveFields => _googlePubsubTopicSensitive;\n';
      expect(out, contains(expected));
      expect(out, isNot(contains('// ignore: non_constant_identifier_names')));
      expect(out, isNot(contains('${r'$'}sensitiveFields')));
    });

    test('emit sensitiveFields const name follows snake-to-camel', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
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
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      expect(
        out,
        contains(
          "  TfRef<String> get name => TfRef.attribute<String>(this, 'name');",
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
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out.trimRight(), endsWith('}'));
    });

    test('every resource carries a typed ref getter', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(
        out,
        contains('RefTo<GoogleEmitterTestResource> get ref => RefTo.of(this);'),
      );
    });

    test('emit does not curate TfRef getters for other resources yet', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      const def = ResourceDef(
        terraformType: 'google_emitter_test_resource',
        root: BlockDef(attributes: [], nestedBlocks: []),
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');
      expect(out, isNot(contains('TfRef<String> get name =>')));
      expect(out, isNot(contains('TfRef<String> get id ')));
      expect(out.trimRight(), endsWith('}'));
    });

    test('Level A: formatted emit matches hand-written golden', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final raw = emitter.emit(def, providerSource: 'hashicorp/google');

      final formatter = packageFormatter('../terradart_google');
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
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_pubsub_topic_iam_member formatted emit matches hand-written golden',
      () {
        final def = _loadGooglePubsubTopicIamMemberV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_pubsub_subscription_iam_member formatted emit matches hand-written golden',
      () {
        final def = _loadGooglePubsubSubscriptionIamMemberV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_secret_manager_secret_iam_member formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleSecretManagerSecretIamMemberV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_cloud_tasks_queue_iam_member formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleCloudTasksQueueIamMemberV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_service_account formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleServiceAccountV8();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_secret_manager_secret_version formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleSecretManagerSecretVersionV8();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_cloud_scheduler_job formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleCloudSchedulerJobV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_secret_manager_secret formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleSecretManagerSecretV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_pubsub_subscription formatted emit matches hand-written golden',
      () {
        final def = _loadGooglePubsubSubscriptionV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test(
      'Level A: google_cloud_tasks_queue formatted emit matches hand-written golden',
      () {
        final def = _loadGoogleCloudTasksQueueV7();
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: _perResourceRawBlocks,
        );
        final raw = emitter.emit(def, providerSource: 'hashicorp/google');
        final formatter = packageFormatter('../terradart_google');
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
      },
    );

    test('a schema with deletion_protection emits no capability override', () {
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
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
      expect(out, isNot(contains('supportsDeletionProtection')));
    });

    test('emit constructor excludes computed-only, id, and timeouts', () {
      final def = _loadGooglePubsubTopicV7();
      final emitter = WrapperEmitter(
        overrides: overrides,
        rawResourceSchemas: _perResourceRawBlocks,
      );
      final out = emitter.emit(def, providerSource: 'hashicorp/google');

      expect(
        out,
        contains('  GooglePubsubTopic(super.localName, {'),
        reason:
            'constructor must be emitted; otherwise exclusion checks pass vacuously',
      );

      expect(
        out,
        isNot(contains('TfArg<Map<String, String>>? effectiveLabels,')),
      );
      expect(
        out,
        isNot(contains('TfArg<Map<String, String>>? terraformLabels,')),
      );
      expect(out, isNot(contains('TfArg<String>? id,')));
      expect(out, isNot(contains('TfArg<String> id,')));
      expect(out, isNot(contains('? timeouts,')));
      expect(out, isNot(contains(' timeouts,')));
    });

    group('deriveNestedTypes top-level slot rendering (Task 5 flip)', () {
      late final Map<String, Map<String, dynamic>> rawResourceSchemas;
      setUpAll(() {
        rawResourceSchemas = _rawResourceBlocksFromWrapFixture();
      });

      test('an optional, scalar top-level slot has no `!` (parameter '
          'promotion makes it unnecessary — google_app_engine_domain_mapping.'
          'ssl_settings)', () {
        const terraformType = 'google_app_engine_domain_mapping';
        final def = _loadFromWrapFixture(terraformType);
        final emitter = WrapperEmitter(
          overrides: overrides,
          rawResourceSchemas: rawResourceSchemas,
        );
        final out = emitter.emit(def, providerSource: 'hashicorp/google');

        expect(out, contains('AppEngineDomainMappingSslSettings? sslSettings'));
        expect(
          out,
          contains(
            "if (sslSettings != null) 'ssl_settings': "
            'TfArg.literal(sslSettings.encode()),',
          ),
        );
        expect(out, isNot(contains('sslSettings!')));
      });

      test('a dotted dartTypeOverrides key types the nested input and must '
          'name one', () {
        const terraformType = 'google_app_engine_domain_mapping';
        final def = _loadFromWrapFixture(terraformType);
        WrapperEmitter emitterWith(Map<String, String> types) => WrapperEmitter(
          overrides: {
            ...overrides,
            terraformType: overrides[terraformType]!.withDartTypeOverrides(
              types,
            ),
          },
          rawResourceSchemas: rawResourceSchemas,
        );

        final out = emitterWith(const {
          'ssl_settings.ssl_management_type': 'SslManagement',
        }).emit(def, providerSource: 'hashicorp/google');
        expect(out, contains('final SslManagement sslManagementType;'));
        expect(
          () => emitterWith(const {
            'ssl_settings.no_such_input': 'SslManagement',
          }).emit(def, providerSource: 'hashicorp/google'),
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              contains('ssl_settings.no_such_input'),
            ),
          ),
        );
      });

      test('an optional, repeated top-level slot has no `!` on the iterable '
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

      test('a required, repeated top-level slot has no `!` and no `if` guard '
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
            'required List<OsConfigOsPolicyAssignmentOsPolicies> osPolicies',
          ),
        );
        expect(
          out,
          contains(
            "'os_policies': TfArg.literal([for (final e in osPolicies) e.encode()]),",
          ),
        );
        expect(out, isNot(contains('osPolicies!')));
        expect(out, isNot(contains('if (osPolicies != null)')));

        expect(
          out,
          contains(
            'final List<OsConfigOsPolicyAssignmentResources> resources;',
          ),
        );
      });

      test('a typeNames entry names the helper its input takes', () {
        const terraformType = 'google_netapp_volume';
        final out =
            WrapperEmitter(
              overrides: {
                terraformType: const WrapperOverride(
                  outputDir: 'netapp',
                  deriveNestedTypes: true,
                  paramOrder: ['name', 'tiering_policy'],
                  typeNames: {'tiering_policy': 'GoogleNetappVolumeTiering'},
                ),
              },
              rawResourceSchemas: rawResourceSchemas,
            ).emit(
              _loadFromWrapFixture(terraformType),
              providerSource: 'hashicorp/google',
            );

        expect(out, contains('final class GoogleNetappVolumeTiering {'));
        expect(out, contains('GoogleNetappVolumeTiering? tieringPolicy'));
        expect(out, isNot(contains('class NetappVolumeTieringPolicy')));
      });

      test('a typeNames key that names no derived type fails', () {
        const terraformType = 'google_netapp_volume';
        final emitter = WrapperEmitter(
          overrides: {
            terraformType: const WrapperOverride(
              outputDir: 'netapp',
              deriveNestedTypes: true,
              paramOrder: ['name', 'tiering_policy'],
              typeNames: {'tiering_policy.tier': 'GoogleNetappVolumeTier'},
            ),
          },
          rawResourceSchemas: rawResourceSchemas,
        );

        expect(
          () => emitter.emit(
            _loadFromWrapFixture(terraformType),
            providerSource: 'hashicorp/google',
          ),
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              'google_netapp_volume: typeNames tiering_policy.tier names no '
                  'derived enum or helper',
            ),
          ),
        );
      });

      test('a helper named only as a prefix of a prelude class is '
          'unreachable (google_compute_firewall.allow)', () {
        const terraformType = 'google_compute_firewall';
        final def = _loadFromWrapFixture(terraformType);
        final emitter = WrapperEmitter(
          overrides: {
            terraformType: const WrapperOverride(
              outputDir: 'compute',
              deriveNestedTypes: true,
              paramOrder: ['name', 'network', 'deny'],
              prelude:
                  'final class ComputeFirewallAllowPolicy {}\n'
                  'final class ComputeFirewallLogConfig {}\n',
            ),
          },
          rawResourceSchemas: rawResourceSchemas,
        );
        emitter.emit(def, providerSource: 'hashicorp/google');

        expect(emitter.unreachableHelpers, contains('allow'));
        expect(emitter.unreachableHelpers, isNot(contains('deny')));
        expect(emitter.unreachableHelpers, isNot(contains('log_config')));
      });
    });
  });
}
