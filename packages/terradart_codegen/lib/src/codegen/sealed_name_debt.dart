import 'dart:convert';

import 'package:yaml/yaml.dart';

import 'exactly_one_types.dart';

/// Every reason in the sealed-name ledger starts with this: an entry only
/// holds a new group's place until a human names it.
const sealedNameDebtPrefix = 'awaiting-name:';

/// The sealed-name ledger (`tool/sealed_name_debt.yaml`): Terraform type →
/// group key ([sealedGroupKeyOf]) → reason. It lists the sealed groups no
/// rule names, whose slots fall back to their members joined with `Or`.
typedef SealedNameDebt = Map<String, Map<String, String>>;

/// Parses the ledger; an empty file is an empty ledger.
SealedNameDebt parseSealedNameDebt(String source, {String path = 'ledger'}) {
  final doc = loadYaml(source);
  if (doc == null) return {};
  if (doc is! YamlMap) {
    throw FormatException('$path: expected a map of Terraform types.');
  }
  final out = <String, Map<String, String>>{};
  for (final MapEntry(:key, :value) in doc.entries) {
    if (value is! YamlMap) {
      throw FormatException('$path: $key: expected a map of group keys.');
    }
    out['$key'] = {
      for (final MapEntry(key: group, value: reason) in value.entries)
        '$group': '$reason',
    };
  }
  return out;
}

/// Renders [debt] sorted by type and key, under the ledger's header.
String renderSealedNameDebt(SealedNameDebt debt) {
  final buf = StringBuffer()
    ..writeln('# Sealed groups no rule names yet (terradart wrap).')
    ..writeln('#')
    ..writeln('# A group with no `sealedNames` entry and no derived name')
    ..writeln('# (shared prefix / suffix, or its whole block) falls back to')
    ..writeln('# its members joined with `Or`. `wrap` adds that group here')
    ..writeln('# so a schema bump still merges; name it by adding')
    ..writeln('# `sealedNames: {"<members>": <concept>}` to the override and')
    ..writeln('# re-running wrap, which drops the entry. `wrap --check` fails')
    ..writeln('# on a missing or stale entry.');
  final types = debt.keys.toList()..sort();
  if (types.every((t) => debt[t]!.isEmpty)) {
    buf.writeln('{}');
    return buf.toString();
  }
  for (final type in types) {
    final groups = debt[type]!;
    if (groups.isEmpty) continue;
    buf.writeln('$type:');
    for (final key in groups.keys.toList()..sort()) {
      buf.writeln('  ${jsonEncode(key)}: ${jsonEncode(groups[key])}');
    }
  }
  return buf.toString();
}

/// [debt] with the entries of [laneTypes] replaced by [fallbacks] (type →
/// group keys that fell back), keeping each surviving entry's reason and
/// giving a new one [reason]. `missing` and `stale` list what changed, as
/// `<type> [<key>]`, plus each lane entry whose reason does not start with
/// [sealedNameDebtPrefix] (in `stale`).
({SealedNameDebt debt, List<String> missing, List<String> stale})
syncSealedNameDebt(
  SealedNameDebt debt, {
  required Set<String> laneTypes,
  required Map<String, Set<String>> fallbacks,
  required String reason,
}) {
  final out = <String, Map<String, String>>{
    for (final MapEntry(:key, :value) in debt.entries)
      if (!laneTypes.contains(key)) key: {...value},
  };
  final missing = <String>[];
  final stale = <String>[];
  for (final type in laneTypes) {
    final old = debt[type] ?? const <String, String>{};
    final keys = fallbacks[type] ?? const <String>{};
    for (final MapEntry(:key, value: r) in old.entries) {
      if (!keys.contains(key)) {
        stale.add('$type [$key]: the group is named or no longer sealed');
      } else if (!r.startsWith(sealedNameDebtPrefix)) {
        stale.add(
          '$type [$key]: the reason must start with '
          '"$sealedNameDebtPrefix"',
        );
      }
    }
    if (keys.isEmpty) continue;
    out[type] = {
      for (final key in keys)
        key: old[key] != null && old[key]!.startsWith(sealedNameDebtPrefix)
            ? old[key]!
            : reason,
    };
    for (final key in keys) {
      if (!old.containsKey(key)) missing.add('$type [$key]');
    }
  }
  missing.sort();
  stale.sort();
  return (debt: out, missing: missing, stale: stale);
}
