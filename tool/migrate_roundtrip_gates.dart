// migrate_roundtrip_gates.dart — the migrator's correctness oracle.
//
// For every quickstart: migrate its synth output (`tf-out/main.tf.json`) to
// Dart with `terradart_migrate`, put every generated Stack into one
// temporary package, analyze it once, synthesize each Stack and deep-compare
// the result with the original — `synth(migrate(synth(S))) == synth(S)`.
//
// Strict examples must round-trip completely. A resource the migrator keeps
// in Terraform needs a reasoned entry in tool/migrate_roundtrip_debt.yaml
// (slug → address → reason); an entry whose resource round-trips again is
// stale and fails the gate, so the ledger only ratchets down.
//
// Run from repo root: dart tool/migrate_roundtrip_gates.dart
//   --reuse-tf-out   use the tf-out the synth gates already wrote (default:
//                    synth any example whose tf-out is missing)
//   --keep           keep the temporary package on success too
//   --only=<slug>    restrict to one example
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:yaml/yaml.dart';

import 'example_synth_gates.dart' show synthExample;

const _ledgerPath = 'tool/migrate_roundtrip_debt.yaml';

Future<void> main(List<String> args) async {
  final keep = args.contains('--keep');
  // `--reuse-tf-out` is accepted for symmetry with check_example_topology:
  // an existing tf-out is always reused, a missing one is synthesized.
  args.contains('--reuse-tf-out');
  final only = args
      .where((a) => a.startsWith('--only='))
      .map((a) => a.substring('--only='.length))
      .toList();
  final errors = <String>[];
  final ok = await runMigrateRoundtripGates(
    errors,
    keepTemp: keep,
    only: only.isEmpty ? null : only.toSet(),
  );
  if (ok && errors.isEmpty) {
    print('migrate_roundtrip_gates: OK');
    exit(0);
  }
  stderr.writeln('migrate_roundtrip_gates: FAILED');
  for (final e in errors) {
    stderr.writeln('  - $e');
  }
  exit(1);
}

Future<bool> runMigrateRoundtripGates(
  List<String> errors, {
  bool keepTemp = false,
  Set<String>? only,
}) async {
  final repoRoot = Directory.current.path;
  final ledger = _loadLedger(File(_ledgerPath));
  final slugs =
      _quickstartSlugs().where((s) => only == null || only.contains(s));

  final temp =
      Directory.systemTemp.createTempSync('terradart_migrate_roundtrip_');
  final originals = <String, Map<String, dynamic>>{};
  final stackClasses = <String, String>{};
  final stackFiles = <String, String>{};
  final packages = <String>{'terradart_core'};
  var migratedResources = 0;
  var keptResources = 0;

  for (final slug in slugs) {
    final tfOut = File('examples/$slug/tf-out/main.tf.json');
    Map<String, dynamic>? json;
    if (tfOut.existsSync()) {
      json = jsonDecode(tfOut.readAsStringSync()) as Map<String, dynamic>;
    } else if (!File('examples/$slug/bin/infra.dart').existsSync()) {
      // A stale checkout directory without a synth entry point (a removed
      // example whose gitignored tf-out lingers): not an example any more.
      continue;
    } else {
      json = await synthExample(slug, errors);
    }
    if (json == null) continue;
    originals[slug] = json;

    final MigrationResult result;
    try {
      result = migrateModule(
        TfModule.fromTfJson(jsonEncode(json), fileName: tfOut.path),
        name: slug,
      );
    } on Object catch (e, st) {
      errors.add('$slug: migrateModule threw $e\n$st');
      continue;
    }
    stackClasses[slug] = result.stackClass;
    stackFiles[slug] = result.stackFile;
    packages.addAll(result.report.packages);
    File('${temp.path}/lib/${result.stackFile}.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(result.stackSource);

    // Kept resources (and providers without a factory) must be ledgered;
    // ledgered addresses must still be kept.
    final kept = {
      for (final k in result.report.kept)
        if (_isLedgerable(k.address)) k.address: k.reason,
    };
    final expected = ledger[slug] ?? const <String, String>{};
    for (final entry in kept.entries) {
      keptResources++;
      if (!expected.containsKey(entry.key)) {
        errors.add(
          '$slug: ${entry.key} is kept in Terraform (${entry.value}) but is '
          'not in $_ledgerPath',
        );
      }
    }
    for (final addr in expected.keys) {
      if (!kept.containsKey(addr)) {
        errors.add(
          '$slug: $_ledgerPath lists $addr but it round-trips now — remove '
          'the entry',
        );
      }
    }
    for (final k in result.report.kept) {
      if (!_isLedgerable(k.address)) {
        errors.add(
          '$slug: ${k.address} is kept in Terraform (${k.reason}); only '
          'resources, data sources and providers can be ledgered',
        );
      }
    }
    migratedResources +=
        result.report.migrated.where((m) => _isBlockAddress(m.address)).length;
  }
  for (final slug in ledger.keys) {
    if (!originals.containsKey(slug) && (only == null || only.contains(slug))) {
      errors.add('$_ledgerPath lists unknown example "$slug"');
    }
  }
  if (originals.isEmpty) {
    errors.add('no quickstart could be migrated');
    return false;
  }

  // One package holding every Stack, analyzed once, synthesized once. The
  // workspace packages are wired in through dependency_overrides so their
  // own hosted `terradart_core: ^x` constraints resolve to the checkout.
  final deps = StringBuffer();
  final overrides = StringBuffer();
  for (final p in packages.toList()..sort()) {
    deps.writeln('  $p: ^$packageVersion');
  }
  for (final p in const [
    'terradart_core',
    'terradart_google',
    'terradart_google_beta',
    'terradart_appwrite',
    'terradart_cloudflare',
  ]) {
    overrides.writeln('  $p:');
    overrides.writeln('    path: $repoRoot/packages/$p');
  }
  File('${temp.path}/pubspec.yaml').writeAsStringSync('''
name: terradart_migrate_roundtrip
publish_to: none
environment:
  sdk: ^3.6.0
dependencies:
$deps
dependency_overrides:
$overrides
''');
  File('${temp.path}/analysis_options.yaml').writeAsStringSync('''
analyzer:
  language:
    strict-casts: true
    strict-inference: true
    strict-raw-types: true
''');
  final synthAll = StringBuffer()
    ..writeln("import 'dart:convert';")
    ..writeln("import 'dart:io';")
    ..writeln();
  final sorted = stackClasses.keys.toList()..sort();
  for (final slug in sorted) {
    synthAll.writeln(
      "import 'package:terradart_migrate_roundtrip/${stackFiles[slug]}.dart' "
      'as ${_alias(slug)};',
    );
  }
  synthAll
    ..writeln()
    ..writeln('void main() {')
    ..writeln("  Directory('out').createSync();");
  for (final slug in sorted) {
    synthAll
      ..writeln('  try {')
      ..writeln(
        "    File('out/$slug.json').writeAsStringSync(jsonEncode(${_alias(slug)}.${stackClasses[slug]}().synth().tfJson));",
      )
      ..writeln('  } on Object catch (e) {')
      ..writeln("    File('out/$slug.error').writeAsStringSync('\$e');")
      ..writeln('  }');
  }
  synthAll.writeln('}');
  File('${temp.path}/bin/synth_all.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(synthAll.toString());

  var pubGet = await Process.run(
    'dart',
    ['pub', 'get', '--offline'],
    workingDirectory: temp.path,
  );
  if (pubGet.exitCode != 0) {
    pubGet =
        await Process.run('dart', ['pub', 'get'], workingDirectory: temp.path);
  }
  if (pubGet.exitCode != 0) {
    errors.add('dart pub get failed in ${temp.path}:\n${pubGet.stderr}');
    return false;
  }
  final analyze = await Process.run(
    'dart',
    ['analyze', '--fatal-infos', '--fatal-warnings', 'lib', 'bin'],
    workingDirectory: temp.path,
  );
  if (analyze.exitCode != 0) {
    errors.add(
      'dart analyze of the migrated Stacks failed (package kept at '
      '${temp.path}):\n${analyze.stdout}${analyze.stderr}',
    );
    return false;
  }
  final run = await Process.run(
    'dart',
    ['run', 'bin/synth_all.dart'],
    workingDirectory: temp.path,
  );
  if (run.exitCode != 0) {
    errors.add(
      'synthesizing the migrated Stacks failed (package kept at '
      '${temp.path}):\n${run.stdout}${run.stderr}',
    );
    return false;
  }

  var okCount = 0;
  for (final slug in sorted) {
    final errFile = File('${temp.path}/out/$slug.error');
    if (errFile.existsSync()) {
      errors.add(
        '$slug: synth of ${stackClasses[slug]} threw: ${errFile.readAsStringSync()}',
      );
      continue;
    }
    final actual =
        jsonDecode(File('${temp.path}/out/$slug.json').readAsStringSync());
    final expected =
        _withoutKept(originals[slug]!, ledger[slug]?.keys ?? const []);
    final diffs = <String>[];
    _diff(expected, actual, r'$', diffs);
    if (diffs.isEmpty) {
      okCount++;
    } else {
      errors.add(
        '$slug: synth(migrate(synth)) differs from synth '
        '(${diffs.length} difference${diffs.length == 1 ? '' : 's'}; package kept at ${temp.path}):\n'
        '${diffs.take(8).map((d) => '      $d').join('\n')}',
      );
    }
  }

  print(
    'migrate_roundtrip_gates: $okCount/${sorted.length} examples round-trip; '
    '$migratedResources resources migrated, $keptResources kept (ledgered)',
  );
  final failed = errors.isNotEmpty;
  if (!failed && !keepTemp) {
    temp.deleteSync(recursive: true);
  } else {
    print('  temporary package: ${temp.path}');
  }
  return !failed;
}

String _alias(String slug) =>
    's_${slug.replaceAll(RegExp(r'[^A-Za-z0-9]'), '_')}';

bool _isLedgerable(String address) =>
    _isBlockAddress(address) || address.startsWith('provider.');

bool _isBlockAddress(String address) =>
    address.startsWith('data.') ||
    (address.contains('.') &&
        !address.startsWith('provider.') &&
        !address.startsWith('terraform') &&
        !address.startsWith('variable.') &&
        !address.startsWith('output.') &&
        !address.startsWith('local.') &&
        !address.startsWith('module.') &&
        !address.startsWith('moved') &&
        !address.startsWith('import') &&
        !address.startsWith('removed') &&
        !address.startsWith('check'));

/// The original synth output minus the ledgered blocks (and providers).
Map<String, dynamic> _withoutKept(
  Map<String, dynamic> json,
  Iterable<String> kept,
) {
  if (kept.isEmpty) return json;
  final out = jsonDecode(jsonEncode(json)) as Map<String, dynamic>;
  for (final address in kept) {
    final parts = address.split('.');
    if (parts.first == 'provider' && parts.length == 2) {
      final providers = out['provider'];
      if (providers is Map) {
        providers.remove(parts[1]);
        if (providers.isEmpty) out.remove('provider');
      }
      final terraform = out['terraform'];
      if (terraform is Map) {
        final required = terraform['required_providers'];
        if (required is Map) required.remove(parts[1]);
      }
      continue;
    }
    final isData = parts.first == 'data';
    final group = out[isData ? 'data' : 'resource'];
    final type = parts[isData ? 1 : 0];
    final name = parts[isData ? 2 : 1];
    if (group is Map) {
      final byName = group[type];
      if (byName is Map) {
        byName.remove(name);
        if (byName.isEmpty) group.remove(type);
      }
      if (group.isEmpty) out.remove(isData ? 'data' : 'resource');
    }
  }
  return out;
}

void _diff(Object? expected, Object? actual, String path, List<String> out) {
  if (out.length >= 50) return;
  if (expected is Map && actual is Map) {
    for (final key in expected.keys) {
      if (!actual.containsKey(key)) {
        out.add('$path.$key: missing in migrated synth');
        continue;
      }
      _diff(expected[key], actual[key], '$path.$key', out);
    }
    for (final key in actual.keys) {
      if (!expected.containsKey(key)) {
        out.add('$path.$key: unexpected in migrated synth');
      }
    }
    return;
  }
  if (expected is List && actual is List) {
    if (expected.length != actual.length) {
      out.add(
        '$path: ${expected.length} elements expected, ${actual.length} migrated',
      );
      return;
    }
    for (var i = 0; i < expected.length; i++) {
      _diff(expected[i], actual[i], '$path[$i]', out);
    }
    return;
  }
  if (expected != actual || expected.runtimeType != actual.runtimeType) {
    out.add(
      '$path: expected ${jsonEncode(expected)}, migrated ${jsonEncode(actual)}',
    );
  }
}

Map<String, Map<String, String>> _loadLedger(File file) {
  if (!file.existsSync()) return const {};
  final doc = loadYaml(file.readAsStringSync());
  if (doc == null) return const {};
  if (doc is! YamlMap) {
    throw const FormatException(
      '$_ledgerPath: expected a map of slug → {address: reason}',
    );
  }
  final out = <String, Map<String, String>>{};
  for (final entry in doc.entries) {
    final slug = entry.key.toString();
    final v = entry.value;
    if (v is! YamlMap) {
      throw FormatException(
        '$_ledgerPath: "$slug" must map addresses to reasons',
      );
    }
    out[slug] = {
      for (final e in v.entries)
        e.key.toString(): (e.value?.toString() ?? '').trim(),
    };
    for (final e in out[slug]!.entries) {
      if (e.value.isEmpty) {
        throw FormatException('$_ledgerPath: $slug/${e.key} needs a reason');
      }
    }
  }
  return out;
}

List<String> _quickstartSlugs() {
  return Directory('examples')
      .listSync()
      .whereType<Directory>()
      .map((d) => d.path.split(Platform.pathSeparator).last)
      .where((name) => name.endsWith('_quickstart'))
      .toList()
    ..sort();
}
