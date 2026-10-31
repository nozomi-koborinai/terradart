// google_enum_sources.dart — the machine sources every google-lane enum is
// compared against, and the reasoned list of the sets none of them has.
//
// Usage (from repo root):
//   dart tool/google_enum_sources.dart          # report; exit 1 on a failure
//   dart tool/google_enum_sources.dart --fix    # rewrite tool/enum_prose_sources.yaml
//
// An enum-typed input of a `discovery` lane (google, google-beta) compares
// its emitted wire values, spelled exactly, against the first machine source
// that has a set for it: the Magic Modules `enum_values` of the lane's
// `<schemaDir>/mm`, then the lane's Google API Discovery copy
// (`<schemaDir>/discovery`, tool/fetch_discovery_enums.dart). A set neither
// has comes from prose (an MM description, a hand `enumValues` entry, a
// `prelude` enum) and needs an entry in tool/enum_prose_sources.yaml with its
// exact values and why no machine source covers it:
//   no-document  no Discovery document is recorded for the type
//                (`<schemaDir>/discovery/roots.yaml` says why);
//   no-enum      the type's Discovery schema declares no enum at the path;
//   disagrees    a machine source has a set, and an emitted value is not in
//                it; the note says why the provider accepts the value.
// `no-document` and `no-enum` are checked against the copy, so `--fix`
// writes them; a `disagrees` note is a human decision that `--fix` keeps
// while the values match and replaces with `awaiting-review` otherwise.
// tool/wrap_lanes.dart runs `--fix` after a discovery lane's regen, so a
// schema bump records new prose sets and fails CI only on a new
// disagreement. tool/google_enum_sources_test.dart is the gate.
//
// It also lists every input a constructor or helper takes as a plain
// `String` (or `List<String>`) whose value set a machine source has: such
// an input must be an enum.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/provider_enums.dart'
    show discoveryInputValues;
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/discovery_enums.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:yaml/yaml.dart';

import 'bump_api_surface.dart' show laneManifests;

const proseSourcesPath = 'tool/enum_prose_sources.yaml';

/// The note `--fix` writes for a disagreement nobody has reviewed; the gate
/// rejects it.
const awaitingReview = 'awaiting-review';

/// One input of a curated factory: its kind, Terraform type and dotted path.
typedef InputKey = (CatalogKind, String, String);

String inputLabel(InputKey key) =>
    '${key.$1 == CatalogKind.dataSource ? 'data.' : ''}${key.$2}.${key.$3}';

/// What a manifest says about one string-valued input: its enum's wire
/// values, or null when it is a plain `String` / `List<String>`.
typedef InputSite = List<String>?;

/// Every string-valued input of [manifest] reached through constructor
/// slots, helper fields and sealed variants: enum inputs with their wire
/// values, plain strings with null.
Map<InputKey, InputSite> stringInputs(MigrateManifest manifest) {
  final out = <InputKey, InputSite>{};
  void walk(
    CatalogKind kind,
    String type,
    List<MigrateSlot> slots,
    List<String> path,
    Set<String> onPath,
  ) {
    for (final slot in slots) {
      final at = [...path, if (slot.tfName.isNotEmpty) slot.tfName];
      final key = (kind, type, at.join('.'));
      switch (slot.kind) {
        case MigrateSlotKind.enumValue:
          if (manifest.enums[slot.dartType] case final e?) {
            out[key] = e.members.keys.toList();
          }
        case MigrateSlotKind.scalar
            when slot.dartType == 'String' || slot.dartType == 'List<String>':
          out.putIfAbsent(key, () => null);
        case MigrateSlotKind.helper:
          final helper = manifest.helpers[slot.helper];
          if (helper != null && onPath.add(helper.className)) {
            walk(kind, type, helper.slots, at, onPath);
            onPath.remove(helper.className);
          }
        case MigrateSlotKind.sealed:
          for (final MapEntry(key: member, value: name)
              in (slot.variants ?? const <String, String>{}).entries) {
            final variant = manifest.helpers[name];
            if (variant == null || !onPath.add(name)) continue;
            final selfKeyed = variant.slots.any(
              (s) => s.tfName == member || s.tfName.startsWith('$member.'),
            );
            walk(kind, type, variant.slots, [
              ...at,
              if (!selfKeyed) member,
            ], onPath);
            onPath.remove(name);
          }
        default:
      }
    }
  }

  for (final entry in manifest.entries) {
    walk(entry.kind, entry.tfType, entry.slots, const [], {});
  }
  return out;
}

/// The machine sources of one discovery lane.
final class LaneSources {
  LaneSources({required this.mm, required this.discovery});

  /// Reads `<schemaDir>/mm/*.yaml` and `<schemaDir>/discovery`.
  factory LaneSources.load(String schemaDir) {
    final mm = <String, MmResourceOverrides>{};
    final dir = Directory(p.join(schemaDir, 'mm'));
    if (dir.existsSync()) {
      for (final f in dir.listSync().whereType<File>()) {
        if (!f.path.endsWith('.yaml')) continue;
        mm[p.basenameWithoutExtension(f.path)] = const MmYamlParser()
            .parseString(f.readAsStringSync());
      }
    }
    return LaneSources(
      mm: mm,
      discovery: DiscoveryEnums.load(schemaDir) ?? DiscoveryEnums.empty,
    );
  }

  final Map<String, MmResourceOverrides> mm;
  final DiscoveryEnums discovery;

  MmResourceOverrides? _yaml(InputKey key) => key.$1 == CatalogKind.dataSource
      ? (mm['data_${key.$2}'] ?? mm[key.$2])
      : mm[key.$2];

  /// The Magic Modules `enum_values` of [key], or null.
  List<String>? mmValues(InputKey key) => _yaml(key)?.enumValuesByPath[key.$3];

  /// The Discovery enum of [key] (with its sentinel), or null.
  DiscoveryEnum? discoveryEnum(InputKey key) => discovery.lookup(
    key.$2,
    key.$3,
    dataSource: key.$1 == CatalogKind.dataSource,
    restPath: _yaml(key)?.restPathsByPath[key.$3],
  );

  /// Whether a Discovery document is recorded for [key]'s type.
  bool hasDocument(InputKey key) =>
      (key.$1 == CatalogKind.dataSource
          ? discovery.dataSources
          : discovery.resources)[key.$2] !=
      null;

  /// The values wrap types [key] with when it stays a plain string: the
  /// MM set, else the Discovery one without its sentinel; null when neither
  /// has one.
  List<String>? typableValues(InputKey key) =>
      mmValues(key) ??
      discoveryInputValues(
        discovery,
        mm,
        key.$1 == CatalogKind.dataSource
            ? WrapperOverrideKind.dataSource
            : WrapperOverrideKind.resource,
        key.$2,
        key.$3,
      );
}

/// One reasoned prose set: its exact values and why no machine source has
/// it (`no-document`, `no-enum`, or `disagrees` with a note).
typedef ProseEntry = ({List<String> values, String reason, String? note});

/// Parses one lane's section of tool/enum_prose_sources.yaml, keyed by
/// [inputLabel].
Map<String, ProseEntry> parseProseSources(String yamlText, String lane) {
  final doc = loadYaml(yamlText);
  final section = doc is YamlMap ? doc[lane] : null;
  if (section == null) return const {};
  if (section is! YamlMap) {
    throw FormatException('$proseSourcesPath: $lane is not a map');
  }
  return {
    for (final MapEntry(:key, :value) in section.entries)
      '$key': switch (value) {
        {'values': final YamlList values, 'disagrees': final String note} => (
          values: [for (final v in values) '$v'],
          reason: 'disagrees',
          note: note,
        ),
        {'values': final YamlList values, 'source': final String reason}
            when reason == 'no-document' || reason == 'no-enum' =>
          (values: [for (final v in values) '$v'], reason: reason, note: null),
        _ => throw FormatException(
          '$proseSourcesPath: $lane.$key needs values and source '
          '(no-document | no-enum) or a disagrees note',
        ),
      },
  };
}

/// The result of comparing one lane's enums with its sources.
typedef SourceCheck = ({
  /// Sites whose values a machine source has, by source.
  int mm,
  int discovery,

  /// Sites the reasoned list covers, by reason.
  Map<String, int> prose,

  /// Every failure: a value no source spells, a missing, stale or
  /// unreviewed entry, a set a machine source has left untyped.
  List<String> failures,

  /// The prose list as the lane's sites need it (for `--fix`).
  Map<String, ProseEntry> wanted,
});

bool _sameList(List<String> a, List<String> b) =>
    a.length == b.length &&
    [for (var i = 0; i < a.length; i++) a[i] == b[i]].every((x) => x);

/// Compares [inputs] (from [stringInputs]) with [sources] and [prose].
SourceCheck checkSources(
  Map<InputKey, InputSite> inputs,
  LaneSources sources,
  Map<String, ProseEntry> prose,
) {
  var mmCount = 0;
  var discoveryCount = 0;
  final proseCount = <String, int>{};
  final failures = <String>[];
  final wanted = <String, ProseEntry>{};
  final used = <String>{};

  for (final MapEntry(:key, value: emitted) in inputs.entries) {
    final label = inputLabel(key);
    if (emitted == null) {
      if (sources.typableValues(key) case final values?) {
        failures.add(
          '$label: a plain string, but a machine source has its values '
          '$values; type it (deriveEnums / deriveNestedTypes) and re-wrap',
        );
      }
      continue;
    }
    final mmSet = sources.mmValues(key);
    final disc = sources.discoveryEnum(key);
    final (against, set) = mmSet != null
        ? ('Magic Modules', mmSet)
        : disc != null
        ? ('Discovery ${disc.doc} ${disc.field}', disc.values)
        : ('', null);
    final outside = [
      if (set != null)
        for (final v in emitted)
          if (!set.contains(v)) v,
    ];
    if (set != null && outside.isEmpty) {
      if (mmSet != null) {
        mmCount++;
      } else {
        discoveryCount++;
      }
      continue;
    }
    final reason = set != null
        ? 'disagrees'
        : sources.hasDocument(key)
        ? 'no-enum'
        : 'no-document';
    final entry = prose[label];
    used.add(label);
    final keep =
        entry != null &&
        entry.reason == reason &&
        _sameList(entry.values, emitted);
    wanted[label] = (
      values: emitted,
      reason: reason,
      note: reason == 'disagrees' ? (keep ? entry.note : awaitingReview) : null,
    );
    if (entry == null) {
      failures.add(
        set != null
            ? '$label: emits ${outside.join(', ')}, which $against does not '
                  'list ($set); fix the spelling, or record why the provider '
                  'accepts it in $proseSourcesPath'
            : '$label: no machine source has its values $emitted; record it '
                  'in $proseSourcesPath (dart tool/google_enum_sources.dart --fix)',
      );
      continue;
    }
    if (entry.reason != reason) {
      failures.add(
        '$label: $proseSourcesPath says ${entry.reason}, the sources say '
        '$reason',
      );
      continue;
    }
    if (!_sameList(entry.values, emitted)) {
      failures.add(
        '$label: $proseSourcesPath lists ${entry.values}, the wrapper emits '
        '$emitted',
      );
      continue;
    }
    if (entry.note == awaitingReview) {
      failures.add(
        '$label: emits ${outside.join(', ')} outside $against; replace '
        '$awaitingReview with why the provider accepts it',
      );
      continue;
    }
    proseCount[reason] = (proseCount[reason] ?? 0) + 1;
  }
  for (final label in prose.keys) {
    if (!used.contains(label)) {
      failures.add(
        '$label: stale $proseSourcesPath entry (a machine source has its '
        'values, or the input is gone)',
      );
    }
  }
  return (
    mm: mmCount,
    discovery: discoveryCount,
    prose: proseCount,
    failures: failures,
    wanted: wanted,
  );
}

/// The lanes `tool/providers.yaml` marks `discovery: true`, with their
/// schema directories.
Map<String, String> discoveryLanes(String providersYaml) {
  final providers =
      (loadYaml(providersYaml) as YamlMap)['providers'] as YamlMap;
  return {
    for (final MapEntry(:key, :value) in providers.entries)
      if ((value as YamlMap)['discovery'] == true)
        '$key': value['schemaDir'] as String,
  };
}

String renderProseSources(Map<String, Map<String, ProseEntry>> lanes) {
  final out = StringBuffer()
    ..writeln(
      '# The google-lane enums whose values no machine source has, with why '
      '(tool/google_enum_sources.dart).',
    )
    ..writeln(
      '#   source: no-document   no Discovery document is recorded for the '
      'type',
    )
    ..writeln(
      '#   source: no-enum       its Discovery schema declares no enum at the '
      'path',
    )
    ..writeln(
      '#   disagrees: <note>     a machine source has a set without an emitted '
      'value; the note says why',
    )
    ..writeln(
      '#                         the provider accepts it (a human decision; '
      '--fix keeps it while the values match).',
    )
    ..writeln(
      '# Values are exact and in emitted order; --fix rewrites the source '
      'entries, never a note.',
    );
  String q(String v) =>
      RegExp(r'^[A-Za-z0-9_.\-/]+$').hasMatch(v) &&
          !RegExp(
            r'^(true|false|null|yes|no|on|off|[0-9.\-]+)$',
            caseSensitive: false,
          ).hasMatch(v)
      ? v
      : "'${v.replaceAll("'", "''")}'";
  for (final MapEntry(key: lane, value: entries) in lanes.entries) {
    if (entries.isEmpty) continue;
    out.writeln('$lane:');
    for (final label in entries.keys.toList()..sort()) {
      final e = entries[label]!;
      out.writeln('  $label:');
      out.writeln('    values: [${e.values.map(q).join(', ')}]');
      if (e.reason == 'disagrees') {
        out.writeln('    disagrees: ${q(e.note!)}');
      } else {
        out.writeln('    source: ${e.reason}');
      }
    }
  }
  return out.toString();
}

void main(List<String> args) {
  final fix = args.contains('--fix');
  final providersYaml = File('tool/providers.yaml').readAsStringSync();
  final proseFile = File(proseSourcesPath);
  final proseText = proseFile.existsSync() ? proseFile.readAsStringSync() : '';
  final wanted = <String, Map<String, ProseEntry>>{};
  var failed = false;
  for (final MapEntry(key: lane, value: schemaDir) in discoveryLanes(
    providersYaml,
  ).entries) {
    final check = checkSources(
      stringInputs(laneManifests(providersYaml, [lane]).single),
      LaneSources.load(schemaDir),
      parseProseSources(proseText, lane),
    );
    wanted[lane] = check.wanted;
    print(
      'google_enum_sources ($lane): ${check.mm} Magic Modules, '
      '${check.discovery} Discovery, prose ${check.prose}, '
      '${check.failures.length} failures',
    );
    if (!fix) check.failures.forEach(print);
    failed = failed || check.failures.isNotEmpty;
  }
  if (fix) {
    proseFile.writeAsStringSync(renderProseSources(wanted));
    print('wrote $proseSourcesPath');
    return;
  }
  if (failed) exit(1);
}
