// append_curation_backlog.dart — idempotent append under `entries:` in
// tool/curation_backlog.yaml (schema-bump workflow). Reads a
// tool/schema_resource_diff.dart output: `added_resources` become
// `resource:` entries, `added_data_sources` (lanes that diff them)
// `data_source:` entries.
//
// Usage:
//   dart tool/append_curation_backlog.dart \
//     --backlog=tool/curation_backlog.yaml \
//     --diff=/tmp/schema_diff.json \
//     --detected-at=2026-06-12 \
//     --provider-version=7.2.0
//
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const _exitUsage = 64;
const _exitIo = 65;

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/append_curation_backlog.dart '
      '--backlog=<path> --diff=<schema_diff.json> '
      '--detected-at=YYYY-MM-DD --provider-version=X.Y.Z',
    );
    exit(_exitUsage);
  }

  final diffFile = File(parsed.diffPath);
  if (!diffFile.existsSync()) {
    stderr.writeln('Diff file not found: ${parsed.diffPath}');
    exit(_exitIo);
  }
  final diff = jsonDecode(diffFile.readAsStringSync()) as Map<String, dynamic>;
  final added =
      (diff['added_resources'] as List<dynamic>? ?? const []).cast<String>();
  final addedData =
      (diff['added_data_sources'] as List<dynamic>? ?? const []).cast<String>();

  if (added.isEmpty && addedData.isEmpty) {
    print('No added types; backlog unchanged.');
    exit(0);
  }

  final backlogFile = File(parsed.backlogPath);
  if (!backlogFile.existsSync()) {
    stderr.writeln('Backlog file not found: ${parsed.backlogPath}');
    exit(_exitIo);
  }

  final header = readBacklogHeader(backlogFile.readAsStringSync());
  final entries = readBacklogEntries(backlogFile.readAsStringSync());
  final appended = appendCurationEntries(
    existing: entries,
    resources: added,
    dataSources: addedData,
    detectedAt: parsed.detectedAt,
    providerVersion: parsed.providerVersion,
  );

  backlogFile
      .writeAsStringSync(formatBacklogYaml(header: header, entries: appended));
  print(
    'curation_backlog: ${appended.length} entries '
    '(${added.length + addedData.length} candidate type(s) from diff)',
  );
}

class _Args {
  _Args({
    required this.backlogPath,
    required this.diffPath,
    required this.detectedAt,
    required this.providerVersion,
  });

  final String backlogPath;
  final String diffPath;
  final String detectedAt;
  final String providerVersion;
}

_Args? _parseArgs(List<String> args) {
  String? backlog;
  String? diff;
  String? detectedAt;
  String? providerVersion;
  for (final a in args) {
    if (a.startsWith('--backlog=')) {
      backlog = a.substring('--backlog='.length);
    } else if (a.startsWith('--diff=')) {
      diff = a.substring('--diff='.length);
    } else if (a.startsWith('--detected-at=')) {
      detectedAt = a.substring('--detected-at='.length);
    } else if (a.startsWith('--provider-version=')) {
      providerVersion = a.substring('--provider-version='.length);
    }
  }
  if (backlog == null ||
      diff == null ||
      detectedAt == null ||
      providerVersion == null) {
    return null;
  }
  return _Args(
    backlogPath: backlog,
    diffPath: diff,
    detectedAt: detectedAt,
    providerVersion: providerVersion,
  );
}

/// Parses `entries:` from [yamlSource]. Returns an empty list when absent.
List<Map<String, String>> readBacklogEntries(String yamlSource) {
  final doc = loadYaml(yamlSource);
  if (doc is! YamlMap) return [];
  final raw = doc['entries'];
  if (raw is! YamlList) return [];
  return [
    for (final item in raw)
      if (item is YamlMap)
        {
          for (final key in item.keys) key.toString(): item[key].toString(),
        },
  ];
}

/// The entry keys naming a type, by kind.
const backlogKindKeys = ['resource', 'data_source'];

String _entryKey(Map<String, String> e) =>
    [
      for (final kind in backlogKindKeys)
        if (e[kind] case final name?) '$kind:$name',
    ].firstOrNull ??
    '';

String _entryName(Map<String, String> e) =>
    e['resource'] ?? e['data_source'] ?? '';

/// Appends [resources] and [dataSources] not already present (by kind and
/// type name), sorted by type name so lanes' entries stay apart.
List<Map<String, String>> appendCurationEntries({
  required List<Map<String, String>> existing,
  required List<String> resources,
  List<String> dataSources = const [],
  required String detectedAt,
  required String providerVersion,
  String? note,
}) {
  final seen = existing.map(_entryKey).toSet();
  final out = [...existing];
  for (final (kind, names) in [
    ('resource', resources),
    ('data_source', dataSources),
  ]) {
    for (final name in names) {
      if (!seen.add('$kind:$name')) continue;
      out.add({
        kind: name,
        'detected_at': detectedAt,
        'provider_version': providerVersion,
        if (note != null && note.isNotEmpty) 'note': note,
      });
    }
  }
  out.sort((a, b) {
    final byName = _entryName(a).compareTo(_entryName(b));
    return byName != 0 ? byName : _entryKey(a).compareTo(_entryKey(b));
  });
  return out;
}

/// The comment block above `entries:`.
String readBacklogHeader(String yamlSource) {
  final lines = yamlSource.split('\n');
  final headerLines = <String>[];
  for (final line in lines) {
    if (line.startsWith('entries:')) break;
    headerLines.add(line);
  }
  return headerLines.join('\n').trimRight();
}

/// Writes the backlog file: comment [header] + `entries:` list.
String formatBacklogYaml({
  required String header,
  required List<Map<String, String>> entries,
}) {
  final buf = StringBuffer()
    ..writeln(header)
    ..writeln()
    ..writeln('entries:');
  for (final entry in entries) {
    final kind = backlogKindKeys.firstWhere(
      entry.containsKey,
      orElse: () => 'resource',
    );
    buf.writeln('  - $kind: ${entry[kind]}');
    buf.writeln('    detected_at: ${entry['detected_at']}');
    buf.writeln('    provider_version: ${entry['provider_version']}');
    final note = entry['note'];
    if (note != null && note.isNotEmpty) {
      buf.writeln('    note: $note');
    }
  }
  if (entries.isEmpty) {
    buf.writeln('  []');
  }
  return buf.toString().endsWith('\n') ? buf.toString() : '${buf.toString()}\n';
}
