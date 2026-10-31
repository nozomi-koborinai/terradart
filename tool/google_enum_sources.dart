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
// (`<schemaDir>/discovery`, tool/fetch_discovery_enums.dart) without its
// `*_UNSPECIFIED` sentinel. The two sets must be equal: a value the source
// lists and the enum lacks fails like a value the enum has and the source
// does not. A set no machine source has comes from prose (an MM description,
// a hand `enumValues` entry, a `prelude` enum), and a set that differs from
// its source is a deliberate difference; both need an entry in
// tool/enum_prose_sources.yaml with the exact values and a reason:
//   no-document  no Discovery document is recorded for the type
//                (`<schemaDir>/discovery/roots.yaml` says why);
//   no-enum      the type's Discovery schema declares no enum at the path;
//   disagrees    a machine source has a set (`upstream`, as compared) the
//                enum does not equal; the note says why the provider takes
//                the emitted values instead.
// `no-document` and `no-enum` are checked against the copy, so `--fix`
// writes them; a `disagrees` note is a human decision that `--fix` keeps
// while both the emitted and the upstream values match, and replaces with
// `awaiting-review` otherwise.
// tool/wrap_lanes.dart runs `--fix` after a discovery lane's regen, so a
// schema bump records new prose sets and fails CI only on a new
// disagreement. tool/google_enum_sources_test.dart is the gate.
//
// It also lists every input a constructor or helper takes as a plain
// `String` (or `List<String>`) whose value set a machine source has: such
// an input must be an enum.
// ignore_for_file: avoid_print

import 'dart:convert';
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

/// The Dart enum types [manifest]'s constructor slots, helper fields and
/// sealed variants reach.
Set<String> reachedEnums(MigrateManifest manifest) {
  final out = <String>{};
  final seen = <String>{};
  void walk(List<MigrateSlot> slots) {
    for (final slot in slots) {
      switch (slot.kind) {
        case MigrateSlotKind.enumValue:
          if (slot.dartType case final t?) out.add(t);
        case MigrateSlotKind.helper:
          if (manifest.helpers[slot.helper] case final h?
              when seen.add(h.className)) {
            walk(h.slots);
          }
        case MigrateSlotKind.sealed:
          for (final name in (slot.variants ?? const {}).values) {
            if (manifest.helpers[name] case final h? when seen.add(name)) {
              walk(h.slots);
            }
          }
        default:
      }
    }
  }

  for (final entry in manifest.entries) {
    walk(entry.slots);
  }
  return out;
}

const enumSitesPath = 'tool/enum_sites.yaml';

/// One enum a lane's generated wrappers declare: the factory file it sits
/// in, the field leaf its derived doc names (null for a `prelude` enum),
/// and its wire values in declaration order.
typedef EmittedEnum = ({
  String name,
  CatalogKind kind,
  String tfType,
  String? leaf,
  List<String> values,
});

final _enumDeclaration = RegExp(
  r'((?:^///.*\n)*)extension type const (\w+)\._\(\s*TfArg<String> _,?\s*\)',
  multiLine: true,
);
final _derivedLeaf = RegExp(r'enum for `([^`]+)`\.');
final _literal = RegExp(r"TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'");

/// Every enum declared in the generated wrappers under
/// `<outputPackage>/lib/src` (files with wrap's `// GENERATED FILE` header).
List<EmittedEnum> emittedEnums(String outputPackage) {
  final out = <EmittedEnum>[];
  final root = Directory(p.join(outputPackage, 'lib', 'src'));
  final files =
      root
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  for (final file in files) {
    final text = file.readAsStringSync();
    if (!text.startsWith('// GENERATED FILE')) continue;
    final kind = p.split(file.path).contains('data')
        ? CatalogKind.dataSource
        : CatalogKind.resource;
    for (final m in _enumDeclaration.allMatches(text)) {
      final end = text.indexOf('\n}', m.end);
      final body = text.substring(m.end, end < 0 ? text.length : end);
      final values = [
        for (final v in _literal.allMatches(body))
          v.group(1)!.replaceAllMapped(RegExp(r'\\(.)'), (e) => e.group(1)!),
      ];
      if (values.isEmpty) continue;
      out.add((
        name: m.group(2)!,
        kind: kind,
        tfType: p.basenameWithoutExtension(file.path),
        leaf: _derivedLeaf.firstMatch(m.group(1)!)?.group(1),
        values: values,
      ));
    }
  }
  return out;
}

/// Every dotted input and attribute path of each resource and data source
/// in a provider `schema.json`, keyed by kind and type.
Map<(CatalogKind, String), List<String>> schemaPaths(String schemaJson) {
  final doc = jsonDecode(schemaJson) as Map<String, dynamic>;
  final out = <(CatalogKind, String), List<String>>{};
  void walk(Map<String, dynamic> block, String prefix, List<String> into) {
    for (final MapEntry(key: name, :value)
        in (block['attributes'] as Map? ?? const {}).entries) {
      into.add('$prefix$name');
      final nested = (value as Map)['nested_type'] as Map?;
      if (nested != null) {
        walk(nested.cast<String, dynamic>(), '$prefix$name.', into);
      }
    }
    for (final MapEntry(:key, :value)
        in (block['block_types'] as Map? ?? const {}).entries) {
      into.add('$prefix$key');
      walk(
        ((value as Map)['block'] as Map).cast<String, dynamic>(),
        '$prefix$key.',
        into,
      );
    }
  }

  for (final provider
      in (doc['provider_schemas'] as Map<String, dynamic>).values) {
    for (final (kind, section) in [
      (CatalogKind.resource, 'resource_schemas'),
      (CatalogKind.dataSource, 'data_source_schemas'),
    ]) {
      for (final MapEntry(:key, :value)
          in ((provider as Map)[section] as Map? ?? const {}).entries) {
        walk(
          ((value as Map)['block'] as Map).cast<String, dynamic>(),
          '',
          out[(kind, '$key')] = [],
        );
      }
    }
  }
  return out;
}

/// Parses one lane's section of tool/enum_sites.yaml: enum type → the
/// [inputLabel]s it is the value set of, for an enum no manifest slot
/// reaches and whose derived doc does not place it.
Map<String, List<String>> parseEnumSites(String yamlText, String lane) {
  final doc = loadYaml(yamlText);
  final section = doc is YamlMap ? doc[lane] : null;
  if (section == null) return const {};
  return {
    for (final MapEntry(:key, :value) in (section as YamlMap).entries)
      '$key': switch (value) {
        {'sites': final YamlList sites, 'reason': final String _} => [
          for (final s in sites) '$s',
        ],
        _ => throw FormatException(
          '$enumSitesPath: $lane.$key needs sites and a reason',
        ),
      },
  };
}

InputKey _parseLabel(String label) {
  final data = label.startsWith('data.');
  final rest = data ? label.substring(5) : label;
  final dot = rest.indexOf('.');
  return (
    data ? CatalogKind.dataSource : CatalogKind.resource,
    rest.substring(0, dot),
    rest.substring(dot + 1),
  );
}

/// The enum sites of one lane, from the enums its wrappers emit rather than
/// the slots its manifest walks: [inputs] (from [stringInputs]) plus one
/// site per emitted enum no slot reaches, placed by its derived doc's leaf
/// when [paths] has exactly one path with that leaf, else by [ledger]
/// (tool/enum_sites.yaml). An enum neither places, a ledger entry for an
/// enum a slot reaches or the wrappers do not emit, and an emitted enum the
/// manifest records with other values all fail.
({Map<InputKey, InputSite> sites, List<String> failures}) enumSites(
  Map<InputKey, InputSite> inputs,
  MigrateManifest manifest,
  List<EmittedEnum> emitted,
  Map<(CatalogKind, String), List<String>> paths,
  Map<String, List<String>> ledger,
) {
  final sites = {...inputs};
  final failures = <String>[];
  final reached = reachedEnums(manifest);
  final names = <String>{};
  void place(EmittedEnum e, InputKey key) {
    final label = inputLabel(key);
    if (!sites.containsKey(key)) {
      sites[key] = e.values;
    } else if (sites[key] == null) {
      failures.add(
        '$label: a plain string, but the wrappers emit ${e.name} for it; '
        'type the input with it or drop the enum',
      );
    } else if (!_sameList(sites[key]!, e.values)) {
      failures.add(
        '$label: ${e.name} ${e.values} and the input enum ${sites[key]} '
        'differ',
      );
    }
  }

  for (final e in emitted) {
    names.add(e.name);
    final recorded = manifest.enums[e.name]?.members.keys.toList();
    if (recorded == null || !_sameList(recorded, e.values)) {
      failures.add(
        '${e.name}: the wrappers emit ${e.values}, the migration manifest '
        'records ${recorded ?? 'no enum'}; re-wrap',
      );
    }
    final listed = ledger[e.name];
    if (reached.contains(e.name)) {
      if (listed != null) {
        failures.add(
          '${e.name}: stale $enumSitesPath entry (a manifest slot reaches it)',
        );
      }
      continue;
    }
    if (listed != null) {
      for (final label in listed) {
        final key = _parseLabel(label);
        if (key.$1 != e.kind || key.$2 != e.tfType) {
          failures.add(
            '${e.name}: $enumSitesPath names $label, but the enum is emitted '
            'for ${inputLabel((e.kind, e.tfType, ''))}',
          );
          continue;
        }
        if (!(paths[(key.$1, key.$2)] ?? const []).contains(key.$3)) {
          failures.add(
            '${e.name}: $enumSitesPath names $label, which the provider '
            'schema does not have',
          );
          continue;
        }
        place(e, key);
      }
      continue;
    }
    final matches = [
      for (final path in paths[(e.kind, e.tfType)] ?? const <String>[])
        if (e.leaf != null && path.split('.').last == e.leaf) path,
    ];
    if (matches.length == 1) {
      place(e, (e.kind, e.tfType, matches.single));
      continue;
    }
    failures.add(
      '${e.name}: emitted for ${inputLabel((e.kind, e.tfType, ''))}, but no '
      'manifest slot reaches it and ${e.leaf == null ? 'it has no derived '
                'doc' : 'its leaf `${e.leaf}` names ${matches.length} paths'}; '
      'list its sites in $enumSitesPath with a reason',
    );
  }
  for (final name in ledger.keys) {
    if (!names.contains(name)) {
      failures.add(
        '$name: stale $enumSitesPath entry (the wrappers emit no such enum)',
      );
    }
  }
  return (sites: sites, failures: failures);
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
/// it (`no-document`, `no-enum`), or why it differs from the source set
/// [upstream] (`disagrees` with a note).
typedef ProseEntry = ({
  List<String> values,
  String reason,
  String? note,
  List<String>? upstream,
});

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
        {
          'values': final YamlList values,
          'upstream': final YamlList upstream,
          'disagrees': final String note,
        } =>
          (
            values: [for (final v in values) '$v'],
            reason: 'disagrees',
            note: note,
            upstream: [for (final v in upstream) '$v'],
          ),
        {'values': final YamlList values, 'source': final String reason}
            when reason == 'no-document' || reason == 'no-enum' =>
          (
            values: [for (final v in values) '$v'],
            reason: reason,
            note: null,
            upstream: null,
          ),
        _ => throw FormatException(
          '$proseSourcesPath: $lane.$key needs values and source '
          '(no-document | no-enum), or upstream and a disagrees note',
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

  /// Every failure: a value no source spells, a source value the enum
  /// lacks, a missing, stale or unreviewed entry, a set a machine source has
  /// left untyped.
  List<String> failures,

  /// The prose list as the lane's sites need it (for `--fix`).
  Map<String, ProseEntry> wanted,
});

bool _sameList(List<String> a, List<String> b) =>
    a.length == b.length && a.indexed.every((e) => e.$2 == b[e.$1]);

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
        ? (
            'Discovery ${disc.doc} ${disc.field}',
            [
              for (final v in disc.values)
                if (!isDiscoverySentinel(v)) v,
            ],
          )
        : ('', null);
    final outside = [
      if (set != null)
        for (final v in emitted)
          if (!set.contains(v)) v,
    ];
    final missing = [
      if (set != null)
        for (final v in set)
          if (!emitted.contains(v)) v,
    ];
    if (set != null && outside.isEmpty && missing.isEmpty) {
      if (mmSet != null) {
        mmCount++;
      } else {
        discoveryCount++;
      }
      continue;
    }
    final difference = [
      if (outside.isNotEmpty) 'emits ${outside.join(', ')}',
      if (missing.isNotEmpty) 'lacks ${missing.join(', ')}',
    ].join(' and ');
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
        _sameList(entry.values, emitted) &&
        (set == null || _sameList(entry.upstream!, set));
    wanted[label] = (
      values: emitted,
      reason: reason,
      note: reason == 'disagrees' ? (keep ? entry.note : awaitingReview) : null,
      upstream: set,
    );
    if (entry == null) {
      failures.add(
        set != null
            ? '$label: $difference against $against ($set); make the enum '
                  'equal its source, or record why the provider takes the '
                  'emitted values in $proseSourcesPath'
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
    if (set != null && !_sameList(entry.upstream!, set)) {
      failures.add(
        '$label: $proseSourcesPath records upstream ${entry.upstream}, '
        '$against now lists $set; review the note',
      );
      continue;
    }
    if (entry.note == awaitingReview) {
      failures.add(
        '$label: $difference against $against; replace $awaitingReview with '
        'why the provider takes the emitted values',
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
/// schema directories and output packages.
Map<String, ({String schemaDir, String outputPackage})> discoveryLanes(
  String providersYaml,
) {
  final providers =
      (loadYaml(providersYaml) as YamlMap)['providers'] as YamlMap;
  return {
    for (final MapEntry(:key, :value) in providers.entries)
      if ((value as YamlMap)['discovery'] == true)
        '$key': (
          schemaDir: value['schemaDir'] as String,
          outputPackage: value['outputPackage'] as String,
        ),
  };
}

/// [enumSites] of [lane] read from the checked-in wrappers, manifest,
/// schema fixture and tool/enum_sites.yaml.
({Map<InputKey, InputSite> sites, List<String> failures}) laneEnumSites(
  String providersYaml,
  String lane,
) {
  final coordinates = discoveryLanes(providersYaml)[lane]!;
  final manifest = laneManifests(providersYaml, [lane]).single;
  final ledger = File(enumSitesPath);
  return enumSites(
    stringInputs(manifest),
    manifest,
    emittedEnums(coordinates.outputPackage),
    schemaPaths(
      File(p.join(coordinates.schemaDir, 'schema.json')).readAsStringSync(),
    ),
    ledger.existsSync()
        ? parseEnumSites(ledger.readAsStringSync(), lane)
        : const {},
  );
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
      '#   disagrees: <note>     the enum differs from the machine source set '
      '`upstream`; the note says why',
    )
    ..writeln(
      '#                         the provider takes the emitted values (a '
      'human decision; --fix keeps it while',
    )
    ..writeln('#                         both lists match).')
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
        out.writeln('    upstream: [${e.upstream!.map(q).join(', ')}]');
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
  for (final MapEntry(key: lane, value: coordinates) in discoveryLanes(
    providersYaml,
  ).entries) {
    final universe = laneEnumSites(providersYaml, lane);
    final check = checkSources(
      universe.sites,
      LaneSources.load(coordinates.schemaDir),
      parseProseSources(proseText, lane),
    );
    final failures = [...universe.failures, ...check.failures];
    wanted[lane] = check.wanted;
    print(
      'google_enum_sources ($lane): ${check.mm} Magic Modules, '
      '${check.discovery} Discovery, prose ${check.prose}, '
      '${failures.length} failures',
    );
    if (!fix) failures.forEach(print);
    failed = failed || failures.isNotEmpty;
  }
  if (fix) {
    proseFile.writeAsStringSync(renderProseSources(wanted));
    print('wrote $proseSourcesPath');
    return;
  }
  if (failed) exit(1);
}
