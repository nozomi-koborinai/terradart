/// Checks `requiredApiForTerraformType` against the checked-in Google API
/// Discovery copy of the google and google-beta lanes.
///
/// `roots.yaml` names, for each wrapped resource type, the Discovery document
/// its schema comes from. The API a type needs is that document's service:
/// `<name>.googleapis.com`, where `<name>` is the document's `name`.
///
/// A type whose `roots.yaml` entry is null has no Discovery document, so this
/// test does not pin its answer. A rule added to satisfy this test must not
/// change such a type's answer: carve the type out of the broader prefix
/// instead of naming an API nothing here confirms.
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_google/project.dart' show requiredApiForTerraformType;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

const _lanes = {
  'google': 'packages/terradart_codegen/test/fixtures/wrap/source/discovery',
  'google-beta':
      'packages/terradart_codegen/test/fixtures/wrap/source_beta/discovery',
};

Map<String, Object?> _roots(String dir) {
  final doc =
      loadYaml(File(p.join(dir, 'roots.yaml')).readAsStringSync()) as YamlMap;
  return {
    for (final MapEntry(:key, :value) in (doc['resources'] as YamlMap).entries)
      key as String: value,
  };
}

String _service(String dir, String document) {
  final json = File(p.join(dir, '$document.json')).readAsStringSync();
  return '${(jsonDecode(json) as Map<String, Object?>)['name']}.googleapis.com';
}

final _iamAdjunct = RegExp(r'_iam_(member|binding|policy)$');

void main() {
  for (final MapEntry(key: lane, value: dir) in _lanes.entries) {
    group(lane, () {
      final roots = _roots(dir);

      test('every type with a Discovery root needs that document\'s API', () {
        final wrong = <String>[];
        var checked = 0;
        for (final MapEntry(key: type, :value) in roots.entries) {
          if (value == null) continue;
          final want = _service(dir, (value as YamlMap)['doc'] as String);
          final got = requiredApiForTerraformType(type)?.toTfJson();
          checked++;
          if (got != want) wrong.add('$type: $got, Discovery says $want');
        }
        expect(checked, greaterThan(0), reason: 'no rooted type in $dir');
        expect(wrong, isEmpty, reason: wrong.join('\n'));
      });

      test('an IAM adjunct needs the API of the resource it grants on', () {
        final wrong = <String>[];
        var checked = 0;
        for (final type in roots.keys) {
          final parent = type.replaceFirst(_iamAdjunct, '');
          if (parent == type || roots[parent] == null) continue;
          final want = _service(
            dir,
            (roots[parent] as YamlMap)['doc'] as String,
          );
          final got = requiredApiForTerraformType(type)?.toTfJson();
          checked++;
          if (got != want) wrong.add('$type: $got, $parent needs $want');
        }
        expect(checked, greaterThan(0), reason: 'no adjunct of a rooted type');
        expect(wrong, isEmpty, reason: wrong.join('\n'));
      });

      test('google_project_service needs no API', () {
        expect(requiredApiForTerraformType('google_project_service'), isNull);
      });
    });
  }
}
