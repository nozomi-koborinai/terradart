import 'dart:io';

import 'package:path/path.dart' as p;

typedef StaleSealedName = ({String type, String key});

final _staleSealedName = RegExp(
  r'\[E406\] terradart wrap: (\S+) sealedNames "([^"]*)" matches no sealed group',
);

List<StaleSealedName> staleSealedNamesIn(String log) => [
  for (final m in _staleSealedName.allMatches(log))
    (type: m.group(1)!, key: m.group(2)!),
];

String dropSealedNames(String source, Set<String> keys) =>
    dropGroupMapSection(source, 'sealedNames', keys);

String canonicalGroupKey(String key) => ([
  for (final part in key.split(','))
    if (part.trim().isNotEmpty) part.trim(),
]..sort()).join(', ');

String dropGroupMapSection(String source, String section, Set<String> keys) {
  if (keys.isEmpty) return source;
  final targets = {for (final k in keys) canonicalGroupKey(k)};
  final lines = source.split('\n');
  final out = <String>[];
  var inSection = false;
  var skipping = false;
  var keptEntry = false;
  var headerAt = -1;
  void dropEmptyHeader() {
    if (!keptEntry && headerAt >= 0) {
      out.removeRange(headerAt, out.length);
      while (out.length >= 2 &&
          out.last.isEmpty &&
          out[out.length - 2].isEmpty) {
        out.removeLast();
      }
    }
  }

  for (final line in lines) {
    if (!inSection) {
      if (line == '$section:') {
        inSection = true;
        headerAt = out.length;
        keptEntry = false;
        skipping = false;
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
    final unquoted = quoted == null
        ? RegExp(r'^  ([^\s:#][^:]*?)\s*:').firstMatch(line)
        : null;
    final rawKey = quoted?.group(1) ?? unquoted?.group(1)?.trim();
    if (rawKey != null) {
      skipping = targets.contains(canonicalGroupKey(rawKey));
      if (!skipping) {
        keptEntry = true;
        out.add(line);
      }
      continue;
    }
    if (skipping) {
      if (line.startsWith('   ')) continue;
      if (line.trim().isEmpty) {
        if (keptEntry) out.add(line);
        continue;
      }
    }
    skipping = false;
    out.add(line);
  }
  if (inSection) {
    dropEmptyHeader();
    if (!keptEntry &&
        source.endsWith('\n') &&
        (out.isEmpty || out.last.isNotEmpty)) {
      out.add('');
    }
  }
  return out.join('\n');
}

File overrideFileForLabel(String overridesRoot, String label) {
  if (label.startsWith('data.')) {
    return File(p.join(overridesRoot, 'data_${label.substring(5)}.yaml'));
  }
  return File(p.join(overridesRoot, '$label.yaml'));
}

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
    final files = key.startsWith('data.')
        ? [overrideFileForLabel(overridesRoot, key)]
        : [
            File(p.join(overridesRoot, '$key.yaml')),
            File(p.join(overridesRoot, 'data_$key.yaml')),
          ];
    for (final file in files) {
      if (!file.existsSync()) continue;
      final original = file.readAsStringSync();
      final updated = dropSealedNames(original, value);
      if (updated == original) continue;
      file.writeAsStringSync(updated);
      for (final k in value) {
        if (dropSealedNames(original, {k}) != original) {
          dropped.add('$key $k');
        }
      }
    }
  }
  dropped.sort();
  return dropped;
}
