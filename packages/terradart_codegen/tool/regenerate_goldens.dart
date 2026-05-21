// ignore_for_file: avoid_print
/// Regenerate wrapper_emitter golden files from current emitter output.
/// Run from packages/terradart_codegen/:
///   dart run tool/regenerate_goldens.dart
library;

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';

ResourceDef _load(String resource, String schemaFile) {
  final json = File('test/fixtures/schema/$schemaFile').readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    json,
    providerVersion: '7.0.0',
  );
  return ir.resources[resource]!;
}

void _emit(
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

void main() {
  final overrides = loadWrapperOverrides(
    rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
  ).resources;

  final cases = {
    'google_service_account': (
      schemaFile: 'google_service_account_v7.schema.json',
      golden: 'test/golden/google_service_account.factory.expected.dart.golden',
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

  for (final entry in cases.entries) {
    final def = _load(entry.key, entry.value.schemaFile);
    _emit(overrides, entry.value.golden, def);
  }

  print('Done. Run dart test to verify.');
}
