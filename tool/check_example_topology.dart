// check_example_topology.dart — detect unwired "must reference" example resources.
//
// Flags factory types that should be linked into a sibling (SSL cert on a
// proxy, health check on a backend) but appear only once in synth JSON.
//
// Run from repo root: dart tool/check_example_topology.dart
// Pass --reuse-tf-out to skip synth and read each example's existing
// tf-out/main.tf.json (fails when one is missing) — run
// `dart tool/example_synth_gates.dart` first to populate them.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

import 'example_synth_gates.dart';

Future<void> main(List<String> args) async {
  final reuseTfOut = args.contains('--reuse-tf-out');
  final errors = <String>[];
  final config = _loadConfig(errors);
  if (errors.isNotEmpty) {
    _fail(errors);
  }

  final strict = config.strict;
  final mustBeReferenced = config.mustBeReferenced;

  final quickstarts = Directory('examples')
      .listSync()
      .whereType<Directory>()
      .map((d) => d.path.split(Platform.pathSeparator).last)
      .where((name) => name.endsWith('_quickstart'))
      .toList()
    ..sort();

  var strictViolations = 0;

  for (final slug in quickstarts) {
    final json = reuseTfOut
        ? _readTfOut(slug, errors)
        : await synthExample(slug, errors);
    if (json == null) continue;
    final unwired = _unwiredMustReference(json, mustBeReferenced);
    if (unwired.isEmpty) continue;

    if (strict.contains(slug)) {
      strictViolations += unwired.length;
      for (final entry in unwired.entries) {
        errors.add(
          'examples/$slug: ${entry.key} is not referenced by any sibling '
          '(expected incoming ref for ${entry.value})',
        );
      }
    } else {
      print(
        'examples/$slug: ${unwired.length} unwired must-reference resource(s) '
        '(non-strict):',
      );
      for (final address in unwired.keys.toList()..sort()) {
        print('  - $address');
      }
    }
  }

  if (errors.isNotEmpty) {
    _fail(errors);
  }
  print(
    'check_example_topology: OK (${strict.length} strict quickstart(s), '
    '$strictViolations violation(s) in strict set)',
  );
}

({Set<String> strict, Set<String> mustBeReferenced}) _loadConfig(
  List<String> errors,
) {
  final file = File('tool/example_topology_allowlist.yaml');
  if (!file.existsSync()) {
    errors.add('Missing ${file.path}');
    return (strict: {}, mustBeReferenced: {});
  }
  final doc = loadYaml(file.readAsStringSync());
  if (doc is! YamlMap) {
    errors.add('tool/example_topology_allowlist.yaml: expected a map');
    return (strict: {}, mustBeReferenced: {});
  }

  Set<String> readList(String key) {
    final value = doc[key];
    if (value == null) return {};
    if (value is! YamlList) {
      errors.add('tool/example_topology_allowlist.yaml: $key must be a list');
      return {};
    }
    return value.map((e) => e.toString()).toSet();
  }

  return (
    strict: readList('strict'),
    mustBeReferenced: readList('must_be_referenced'),
  );
}

Map<String, dynamic>? _readTfOut(String slug, List<String> errors) {
  final out = File('examples/$slug/tf-out/main.tf.json');
  if (!out.existsSync()) {
    errors.add(
      'examples/$slug: missing tf-out/main.tf.json — run '
      '"dart tool/example_synth_gates.dart" before --reuse-tf-out',
    );
    return null;
  }
  return jsonDecode(out.readAsStringSync()) as Map<String, dynamic>;
}

Map<String, String> _unwiredMustReference(
  Map<String, dynamic> root,
  Set<String> mustBeReferenced,
) {
  if (mustBeReferenced.isEmpty) return const {};
  final resources = root['resource'];
  if (resources is! Map) return const {};
  final fullJson = jsonEncode(root);
  final unwired = <String, String>{};
  for (final typeEntry in resources.entries) {
    final tfType = typeEntry.key.toString();
    if (!mustBeReferenced.contains(tfType)) continue;
    final instances = typeEntry.value;
    if (instances is! Map) continue;
    for (final localName in instances.keys) {
      final address = '$tfType.$localName';
      final refNeedle = '\${$address.';
      if (!fullJson.contains(refNeedle)) {
        unwired[address] = tfType;
      }
    }
  }
  return unwired;
}

void _fail(List<String> errors) {
  stderr.writeln('check_example_topology: FAILED');
  for (final e in errors) {
    stderr.writeln('  - $e');
  }
  exit(1);
}
