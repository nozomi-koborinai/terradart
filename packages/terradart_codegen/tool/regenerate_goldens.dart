// ignore_for_file: avoid_print
/// Regenerate wrapper_emitter golden files from current emitter output.
/// Run from packages/terradart_codegen/:
///   dart run tool/regenerate_goldens.dart
///
/// Covers every `Level A` golden referenced by `wrapper_emitter_test.dart`
/// plus the `data_source_wrapper_emitter_test.dart` data source golden,
/// so an emitter-shape change (e.g. v0.11.0 ADR-0016 identifier rename)
/// only needs this one tool to refresh the snapshot pins.
library;

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/generated_file_header.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';

ResourceDef _loadResource(String resource, String schemaFile) {
  final json = File('test/fixtures/schema/$schemaFile').readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources[resource]!;
}

ResourceDef _loadDataSource(String dataSource, String schemaFile) {
  final json = File('test/fixtures/schema/$schemaFile').readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.dataSources[dataSource]!;
}

void _emitResource(
  Map<String, WrapperOverride> overrides,
  String goldenPath,
  ResourceDef def,
) {
  final emitter = WrapperEmitter(overrides: overrides);
  final raw = emitter.emit(def, providerSource: 'hashicorp/google');
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );
  final formatted = formatter.format(raw);
  File(goldenPath).writeAsStringSync(formatted);
  print('Written: $goldenPath');
}

void _emitDataSource(
  Map<String, WrapperOverride> overrides,
  String goldenPath,
  ResourceDef def,
) {
  final emitter = DataSourceWrapperEmitter(overrides: overrides);
  final raw = emitter.emit(def, providerSource: 'hashicorp/google');
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );
  final formatted = formatter.format(raw);
  // Data source goldens carry the wrap-pipeline file header (the
  // emitter doesn't add it; the wrap pipeline does). Match the test's
  // comparison shape exactly.
  File(goldenPath).writeAsStringSync('$generatedFileHeader$formatted');
  print('Written: $goldenPath');
}

void main() {
  final loaded = loadWrapperOverrides(
    rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
  );
  final overrides = loaded.resources;
  final dataSourceOverrides = loaded.dataSources;

  final resourceCases = {
    'google_pubsub_topic': (
      schemaFile: 'google_pubsub_topic_v7.schema.json',
      golden: 'test/golden/google_pubsub_topic.factory.expected.dart.golden',
    ),
    'google_project_service': (
      schemaFile: 'google_project_service_v7.schema.json',
      golden: 'test/golden/google_project_service.factory.expected.dart.golden',
    ),
    'google_pubsub_topic_iam_member': (
      schemaFile: 'google_pubsub_topic_iam_member_v7.schema.json',
      golden:
          'test/golden/google_pubsub_topic_iam_member.factory.expected.dart.golden',
    ),
    'google_pubsub_subscription_iam_member': (
      schemaFile: 'google_pubsub_subscription_iam_member_v7.schema.json',
      golden:
          'test/golden/google_pubsub_subscription_iam_member.factory.expected.dart.golden',
    ),
    'google_secret_manager_secret_iam_member': (
      schemaFile: 'google_secret_manager_secret_iam_member_v7.schema.json',
      golden:
          'test/golden/google_secret_manager_secret_iam_member.factory.expected.dart.golden',
    ),
    'google_cloud_tasks_queue_iam_member': (
      schemaFile: 'google_cloud_tasks_queue_iam_member_v7.schema.json',
      golden:
          'test/golden/google_cloud_tasks_queue_iam_member.factory.expected.dart.golden',
    ),
    'google_service_account': (
      schemaFile: 'google_service_account_v7.schema.json',
      golden: 'test/golden/google_service_account.factory.expected.dart.golden',
    ),
    'google_secret_manager_secret_version': (
      schemaFile: 'google_secret_manager_secret_version_v7.schema.json',
      golden:
          'test/golden/google_secret_manager_secret_version.factory.expected.dart.golden',
    ),
    'google_cloud_scheduler_job': (
      schemaFile: 'google_cloud_scheduler_job_v7.schema.json',
      golden:
          'test/golden/google_cloud_scheduler_job.factory.expected.dart.golden',
    ),
    'google_secret_manager_secret': (
      schemaFile: 'google_secret_manager_secret_v7.schema.json',
      golden:
          'test/golden/google_secret_manager_secret.factory.expected.dart.golden',
    ),
    'google_pubsub_subscription': (
      schemaFile: 'google_pubsub_subscription_v7.schema.json',
      golden:
          'test/golden/google_pubsub_subscription.factory.expected.dart.golden',
    ),
    'google_cloud_tasks_queue': (
      schemaFile: 'google_cloud_tasks_queue_v7.schema.json',
      golden:
          'test/golden/google_cloud_tasks_queue.factory.expected.dart.golden',
    ),
  };

  for (final entry in resourceCases.entries) {
    final def = _loadResource(entry.key, entry.value.schemaFile);
    _emitResource(overrides, entry.value.golden, def);
  }

  final dataSourceCases = {
    'google_project': (
      schemaFile: 'google_project_v7.schema.json',
      golden: 'test/golden/google_project.factory.expected.dart.golden',
    ),
  };

  for (final entry in dataSourceCases.entries) {
    final def = _loadDataSource(entry.key, entry.value.schemaFile);
    _emitDataSource(dataSourceOverrides, entry.value.golden, def);
  }

  print('Done. Run dart test to verify.');
}
