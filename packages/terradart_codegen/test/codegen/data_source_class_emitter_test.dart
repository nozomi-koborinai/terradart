import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/data_source_class_emitter.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

late final ResourceDef _googleProject;

void main() {
  setUpAll(() {
    final src = File(
      p.join('test', 'fixtures', 'schema', 'google_project_v7.schema.json'),
    ).readAsStringSync();
    final ir = const SchemaJsonParser().parseString(
      src,
      providerVersion: '7.31.0',
    );
    _googleProject = ir.dataSources['google_project']!;
  });

  group('DataSourceClassEmitter', () {
    test('L2c-1 smoke: emits \$GoogleProject abstract and sensitive const', () {
      // Layer 1 (`data_<terraformType>.schema.dart`) carries the schema-side
      // contract: the marker abstract type plus the sensitive-field set. The
      // smoke test verifies both are present so downstream Layer 2 imports
      // can `show $GoogleProject, googleProjectSensitive` without surprises.
      final out = const DataSourceClassEmitter().emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(out, contains(r'abstract class $GoogleProject {}'));
      expect(
        out,
        contains('const Set<String> googleProjectSensitive'),
      );
    });

    test('L2c-2 Level A byte-identical match with golden', () {
      // Byte-identical match against the pre-staged golden ensures the
      // emitter output matches the contract the Layer 2 wrapper imports
      // from. Drift here cascades into wrapper compilation failures, so
      // we lock the format down at Layer 1.
      final out = const DataSourceClassEmitter().emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      final expected = File(
        p.join(
          'test',
          'golden',
          'data_google_project.schema.expected.dart.golden',
        ),
      ).readAsStringSync();
      expect(out, equals(expected));
    });
  });
}
