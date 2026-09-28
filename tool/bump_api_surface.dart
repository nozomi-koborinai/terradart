// tool/bump_api_surface.dart
//
// Snapshots and diffs the public Dart API of the packages a weekly schema
// bump lane regenerates, read from their migration manifests: every factory
// class and its barrel, every constructor slot and helper field, every
// sealed variant, getter and enum member. schema-bump.yml dumps the surface before and after regenerating,
// and the drift report refuses auto-merge on any breaking entry.
//
// Usage:
//   dart tool/bump_api_surface.dart dump [--lanes=google,google-beta] \
//     --out=/tmp/api_before.json
//   dart tool/bump_api_surface.dart diff \
//     --before=/tmp/api_before.json --after=/tmp/api_after.json \
//     --out=/tmp/api_diff.json
//
// --lanes names tool/providers.yaml lanes (default: google,google-beta, the
// GA bump and its beta ride-along); each lane's outputPackage selects its
// manifest. The manifests are const Dart values compiled into this tool, so
// a dump after `terradart wrap` sees the regenerated manifests.
//
// Exit codes: 0 success (breaking changes are reported, not failed on),
// 64 usage error.

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:yaml/yaml.dart';

const _exitUsage = 64;

void main(List<String> args) {
  final flags = <String, String>{
    for (final a in args.skip(1))
      if (a.startsWith('--') && a.contains('='))
        a.substring(2, a.indexOf('=')): a.substring(a.indexOf('=') + 1),
  };
  final command = args.isEmpty ? null : args.first;
  if (command == 'dump' && flags['out'] != null) {
    final List<MigrateManifest> manifests;
    try {
      manifests = laneManifests(
        File('tool/providers.yaml').readAsStringSync(),
        (flags['lanes'] ?? 'google,google-beta').split(','),
      );
    } on FormatException catch (e) {
      stderr.writeln('bump_api_surface: ${e.message}');
      exit(_exitUsage);
    }
    final surface = apiSurface(manifests);
    File(flags['out']!)
      ..createSync(recursive: true)
      ..writeAsStringSync(const JsonEncoder.withIndent('  ').convert(surface));
    stdout.writeln('api surface: ${surface.length} entries → ${flags['out']}');
    return;
  }
  if (command == 'diff' &&
      flags['before'] != null &&
      flags['after'] != null &&
      flags['out'] != null) {
    final diff = diffApiSurface(
      _readSurface(flags['before']!),
      _readSurface(flags['after']!),
    );
    File(flags['out']!)
      ..createSync(recursive: true)
      ..writeAsStringSync(const JsonEncoder.withIndent('  ').convert(diff));
    stdout.writeln(
      'api diff: ${(diff['breaking'] as List).length} breaking, '
      '${diff['added']} added → ${flags['out']}',
    );
    return;
  }
  stderr.writeln(
    'Usage: dart tool/bump_api_surface.dart dump [--lanes=<a,b>] '
    '--out=<json>\n'
    '       dart tool/bump_api_surface.dart diff --before=<json> '
    '--after=<json> --out=<json>',
  );
  exit(_exitUsage);
}

Map<String, Map<String, Object?>> _readSurface(String path) {
  final raw = jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
  return {
    for (final e in raw.entries)
      e.key: Map<String, Object?>.from(e.value as Map),
  };
}

/// The generated manifests of [lanes] (tool/providers.yaml names), found by
/// each lane's `outputPackage`.
@visibleForTesting
List<MigrateManifest> laneManifests(String providersYaml, List<String> lanes) {
  final providers =
      (loadYaml(providersYaml) as YamlMap)['providers'] as YamlMap;
  MigrateManifest manifest(String lane) {
    final entry = providers[lane];
    final outputPackage = entry is YamlMap ? entry['outputPackage'] : null;
    if (outputPackage is! String) {
      throw FormatException('unknown lane "$lane"');
    }
    return manifestForPackage(outputPackage.split('/').last) ??
        (throw FormatException('lane "$lane" has no migration manifest'));
  }

  return [for (final lane in lanes) manifest(lane)];
}

/// Surface key → `{sig, required?, owner?}`.
///
/// `sig` captures everything a caller's code depends on; `required` is kept
/// apart so a slot turning optional is not a break, and `owner` names the
/// class or helper key a slot belongs to, so a new required slot on an
/// existing owner is recognised as one.
@visibleForTesting
Map<String, Map<String, Object?>> apiSurface(List<MigrateManifest> manifests) {
  final out = <String, Map<String, Object?>>{};
  for (final m in manifests) {
    final p = m.package;
    for (final e in m.entries) {
      final owner = 'class:$p:${e.className}';
      out[owner] = {'sig': 'barrel=${e.barrel}'};
      _addSlots(out, owner, '$p:${e.className}', e.slots);
      for (final g in e.getters) {
        out['getter:$p:${e.className}.${g.dartName}'] = {'sig': g.dartType};
      }
    }
    for (final h in m.helpers.values) {
      final owner = 'helper:$p:${h.className}';
      out[owner] = {'sig': ''};
      _addSlots(out, owner, '$p:${h.className}', h.slots);
    }
    for (final en in m.enums.values) {
      for (final member in en.members.entries) {
        out['enum:$p:${en.name}.${member.value}'] = {'sig': member.key};
      }
    }
  }
  return out;
}

void _addSlots(
  Map<String, Map<String, Object?>> out,
  String owner,
  String prefix,
  List<MigrateSlot> slots,
) {
  for (final s in slots) {
    final key = 'slot:$prefix.${s.dartName}';
    out[key] = {
      'sig': [
        s.kind.name,
        s.dartType ?? '',
        s.helper ?? '',
        if (s.repeated) 'repeated',
        if (!s.wrapped) 'bare',
        if (s.positional) 'positional',
      ].join('|'),
      'required': s.required,
      'owner': owner,
    };
    for (final v in (s.variants ?? const <String, String>{}).entries) {
      out['variant:$prefix.${s.dartName}/${v.key}'] = {
        'sig': v.value,
        'owner': key,
      };
    }
  }
}

/// `{breaking: [..], added: n}`. Breaking: a removed key, a changed `sig`, an
/// optional slot turning required, or a new required slot on an owner that
/// already existed.
@visibleForTesting
Map<String, Object> diffApiSurface(
  Map<String, Map<String, Object?>> before,
  Map<String, Map<String, Object?>> after,
) {
  final breaking = <String>[];
  var added = 0;
  for (final key in before.keys) {
    final b = before[key]!;
    final a = after[key];
    if (a == null) {
      breaking.add('removed $key');
    } else if (a['sig'] != b['sig']) {
      breaking.add('changed $key: ${b['sig']} → ${a['sig']}');
    } else if (a['required'] == true && b['required'] != true) {
      breaking.add('now required $key');
    }
  }
  for (final key in after.keys) {
    if (before.containsKey(key)) continue;
    added++;
    final a = after[key]!;
    if (a['required'] == true && before.containsKey(a['owner'])) {
      breaking.add('new required $key');
    }
  }
  breaking.sort();
  return {'breaking': breaking, 'added': added};
}
