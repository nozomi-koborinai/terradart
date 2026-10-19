// retire_stale_sealed_names.dart — drop sealedNames keys wrap reported as
// matching no group.

import 'dart:io';

import 'package:path/path.dart' as p;

/// One `sealedNames` key [key] on Terraform type [type], as wrap printed it.
typedef StaleSealedName = ({String type, String key});

final _staleSealedName = RegExp(
  r'\[E406\] terradart wrap: (\S+) sealedNames "([^"]*)" matches no sealed group',
);

/// The stale names in a wrap log. Other E406 text is left for the caller.
List<StaleSealedName> staleSealedNamesIn(String log) => [
  for (final m in _staleSealedName.allMatches(log))
    (type: m.group(1)!, key: m.group(2)!),
];

/// Removes [keys] from the `sealedNames:` section of an override. Drops the
/// section header when that was its last entry. Other sections stay.
String dropSealedNames(String source, Set<String> keys) {
  if (keys.isEmpty) return source;
  final lines = source.split('\n');
  final out = <String>[];
  var inSection = false;
  var skipping = false;
  var keptEntry = false;
  var headerAt = -1;
  void dropEmptyHeader() {
    if (!keptEntry && headerAt >= 0) out.removeRange(headerAt, out.length);
  }

  for (final line in lines) {
    if (!inSection) {
      if (line == 'sealedNames:') {
        inSection = true;
        headerAt = out.length;
        out.add(line);
        continue;
      }
      out.add(line);
      continue;
    }
    final leftSection =
        line.isNotEmpty && !line.startsWith(' ') && !line.startsWith('#');
    if (leftSection) {
      inSection = false;
      skipping = false;
      dropEmptyHeader();
      headerAt = -1;
      out.add(line);
      continue;
    }
    final quoted = RegExp('''^  ["'](.+)["']\\s*:''').firstMatch(line);
    if (quoted != null) {
      skipping = keys.contains(quoted.group(1));
      if (!skipping) keptEntry = true;
      if (!skipping) out.add(line);
      continue;
    }
    if (skipping && (line.startsWith('   ') || line.trim().isEmpty)) {
      if (line.trim().isEmpty) {
        skipping = false;
        out.add(line);
      }
      continue;
    }
    skipping = false;
    out.add(line);
  }
  if (inSection) dropEmptyHeader();
  return out.join('\n');
}

/// Writes the drops into the resource and data-source override files for
/// each name. Returns the `type key` lines that changed a file.
List<String> retireStaleSealedNames(
  String overridesRoot,
  List<StaleSealedName> stale,
) {
  final byType = <String, Set<String>>{};
  for (final name in stale) {
    byType.putIfAbsent(name.type, () => {}).add(name.key);
  }
  final dropped = <String>[];
  for (final MapEntry(:key, :value) in byType.entries) {
    for (final file in [
      File(p.join(overridesRoot, '$key.yaml')),
      File(p.join(overridesRoot, 'data_$key.yaml')),
    ]) {
      if (!file.existsSync()) continue;
      final original = file.readAsStringSync();
      final updated = dropSealedNames(original, value);
      if (updated == original) continue;
      file.writeAsStringSync(updated);
      for (final k in value) {
        if (original.contains('"$k"') || original.contains("'$k'")) {
          dropped.add('$key $k');
        }
      }
    }
  }
  dropped.sort();
  return dropped;
}
