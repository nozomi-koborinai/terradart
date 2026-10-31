import 'dart:convert';
import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'migrate_roundtrip_gates.dart';
import 'migrate_shape_fixtures.dart';

void main() {
  final file = File(shapeFixturePath('terradart_time'));
  final input = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
  final result = migrateModule(
    TfModule.fromTfJson(file.readAsStringSync(), fileName: file.path),
    name: 'shapes_time',
  );
  final stack = (
    stackClass: result.stackClass,
    stackFile: result.stackFile,
    source: result.stackSource,
  );

  late Directory temp;
  setUp(() => temp = Directory.systemTemp.createTempSync('roundtrip_test_'));
  tearDown(() => temp.deleteSync(recursive: true));

  test('a migrated Stack whose synth differs from its input fails', () async {
    final changed = jsonDecode(jsonEncode(input)) as Map<String, dynamic>;
    final resources = changed['resource'] as Map<String, dynamic>;
    final sleeps = resources['time_sleep'] as Map<String, dynamic>;
    (sleeps['first'] as Map<String, dynamic>)['create_duration'] = '60s';
    final errors = <String>[];
    final ok = await compareMigratedStacks(
      {'same': stack, 'changed': stack},
      expected: {'same': input, 'changed': changed},
      packages: result.report.packages.toSet(),
      temp: temp,
      errors: errors,
    );
    expect(ok, 1);
    expect(errors, [
      allOf(
        startsWith('changed: synth(migrate(synth)) differs'),
        contains(r'$.resource.time_sleep.first.create_duration'),
      ),
    ]);
  }, timeout: const Timeout(Duration(minutes: 3)));

  test('a migrated Stack that does not compile fails', () async {
    final errors = <String>[];
    final ok = await compareMigratedStacks(
      {
        'broken': (
          stackClass: stack.stackClass,
          stackFile: stack.stackFile,
          source: stack.source.replaceFirst(
            "createDuration: .literal('30s')",
            'createDuration: 30',
          ),
        ),
      },
      expected: {'broken': input},
      packages: result.report.packages.toSet(),
      temp: temp,
      errors: errors,
    );
    expect(ok, isNull);
    expect(errors, [startsWith('dart analyze of the migrated Stacks failed')]);
  }, timeout: const Timeout(Duration(minutes: 3)));

  test('an enum literal no member names synthesizes as written', () async {
    final google =
        jsonDecode(
              File(shapeFixturePath('terradart_google')).readAsStringSync(),
            )
            as Map<String, dynamic>;
    final module = {
      for (final e in google.entries)
        if (e.key != 'resource' && e.key != 'variable') e.key: e.value,
      'resource': {
        'google_pubsub_schema': {
          's': {'name': 's', 'type': 'avro'},
        },
      },
    };
    final r = migrateModule(
      TfModule.fromTfJson(jsonEncode(module), fileName: 'main.tf.json'),
      name: 'unlisted',
      manifests: [
        MigrateManifest(
          package: googleMigrateManifest.package,
          entries: googleMigrateManifest.entries,
          helpers: googleMigrateManifest.helpers,
          enums: googleMigrateManifest.enums,
        ),
      ],
    );
    expect(r.report.migratedAddresses, contains('google_pubsub_schema.s'));
    expect(
      r.report.warnings.single,
      contains('"avro" is not a member of PubsubSchemaType'),
    );
    expect(r.report.shapes, contains(MigratedShape.enumUnlisted));
    final errors = <String>[];
    final ok = await compareMigratedStacks(
      {
        'unlisted': (
          stackClass: r.stackClass,
          stackFile: r.stackFile,
          source: r.stackSource,
        ),
      },
      expected: {'unlisted': module},
      packages: r.report.packages.toSet(),
      temp: temp,
      errors: errors,
    );
    expect(errors, isEmpty);
    expect(ok, 1);
  }, timeout: const Timeout(Duration(minutes: 3)));
}
