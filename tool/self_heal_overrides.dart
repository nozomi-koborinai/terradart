import 'retire_stale_sealed_names.dart';

sealed class OverrideFix {
  const OverrideFix();

  String get overrideType;

  String get description;
}

final class DropSealedName extends OverrideFix {
  const DropSealedName(this.overrideType, this.key);

  @override
  final String overrideType;
  final String key;

  @override
  String get description => '$overrideType sealedNames "$key"';

  @override
  bool operator ==(Object other) =>
      other is DropSealedName &&
      other.overrideType == overrideType &&
      canonicalGroupKey(other.key) == canonicalGroupKey(key);

  @override
  int get hashCode => Object.hash(overrideType, canonicalGroupKey(key));
}

final class DropUnsealedGroup extends OverrideFix {
  const DropUnsealedGroup(this.overrideType, this.key);

  @override
  final String overrideType;
  final String key;

  @override
  String get description => '$overrideType unsealedGroups "$key"';

  @override
  bool operator ==(Object other) =>
      other is DropUnsealedGroup &&
      other.overrideType == overrideType &&
      canonicalGroupKey(other.key) == canonicalGroupKey(key);

  @override
  int get hashCode => Object.hash(overrideType, canonicalGroupKey(key));
}

final class DropOverrideGroup extends OverrideFix {
  const DropOverrideGroup(this.overrideType, this.membersKey);

  @override
  final String overrideType;
  final String membersKey;

  @override
  String get description => '$overrideType group [$membersKey]';

  @override
  bool operator ==(Object other) =>
      other is DropOverrideGroup &&
      other.overrideType == overrideType &&
      canonicalGroupKey(other.membersKey) == canonicalGroupKey(membersKey);

  @override
  int get hashCode => Object.hash(overrideType, canonicalGroupKey(membersKey));
}

final class DropEnumValues extends OverrideFix {
  const DropEnumValues(this.overrideType, this.attrPath);

  @override
  final String overrideType;
  final String attrPath;

  @override
  String get description => '$overrideType enumValues $attrPath';

  @override
  bool operator ==(Object other) =>
      other is DropEnumValues &&
      other.overrideType == overrideType &&
      other.attrPath == attrPath;

  @override
  int get hashCode => Object.hash(overrideType, attrPath);
}

final class AddParamOrderBlock extends OverrideFix {
  const AddParamOrderBlock(this.overrideType, this.blockName);

  @override
  final String overrideType;
  final String blockName;

  @override
  String get description => '$overrideType paramOrder +$blockName';

  @override
  bool operator ==(Object other) =>
      other is AddParamOrderBlock &&
      other.overrideType == overrideType &&
      other.blockName == blockName;

  @override
  int get hashCode => Object.hash(overrideType, blockName);
}

final _sealedNoGroup = RegExp(
  r'\[E406\] terradart wrap: (\S+) sealedNames "([^"]*)" matches no sealed group',
);
final _sealedRepeatsDerived = RegExp(
  r'\[E406\] terradart wrap: (\S+) \[([^\]]+)\]: sealedNames "[^"]*" repeats the derived name; remove it',
);
final _groupSourceDeclares = RegExp(
  r'\[E406\] terradart wrap: (\S+) \[([^\]]+)\]: the group source declares it; remove the entry',
);
final _enumValuesDerived = RegExp(
  r'\[E406\] terradart wrap: (\S+) enumValues (\S+): the derivation already gives every one of these values; remove the entry',
);
final _staleUnsealedGroup = RegExp(
  r'(?:terradart wrap:|\[E301\])\s+(\S+) unsealedGroups "([^"]*)" matches no group wrap leaves unsealed; remove it',
);
final _unreachableHelper = RegExp(
  r'(?:terradart wrap:|\[E301\])\s+nested helper not reachable from the constructor: ([a-z0-9_]+)\.([a-z0-9_]+)\b',
);

List<OverrideFix> parseMechanicalWrapFixes(String log) {
  final seen = <OverrideFix>{};
  final out = <OverrideFix>[];
  void add(OverrideFix fix) {
    if (seen.add(fix)) out.add(fix);
  }

  for (final m in _sealedNoGroup.allMatches(log)) {
    add(DropSealedName(m.group(1)!, m.group(2)!));
  }
  for (final m in _sealedRepeatsDerived.allMatches(log)) {
    add(DropSealedName(m.group(1)!, m.group(2)!));
  }
  for (final m in _groupSourceDeclares.allMatches(log)) {
    add(DropOverrideGroup(m.group(1)!, m.group(2)!));
  }
  for (final m in _enumValuesDerived.allMatches(log)) {
    add(DropEnumValues(m.group(1)!, m.group(2)!));
  }
  for (final m in _staleUnsealedGroup.allMatches(log)) {
    add(DropUnsealedGroup(m.group(1)!, m.group(2)!));
  }
  for (final m in _unreachableHelper.allMatches(log)) {
    add(AddParamOrderBlock(m.group(1)!, m.group(2)!));
  }
  return out;
}

String dropGroupListSection(
  String source,
  String section,
  Set<String> memberKeys,
) {
  if (memberKeys.isEmpty) return source;
  final targets = {for (final k in memberKeys) canonicalGroupKey(k)};
  final lines = source.split('\n');
  final out = <String>[];
  var inSection = false;
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
      dropEmptyHeader();
      headerAt = -1;
      out.add(line);
      continue;
    }
    final item = RegExp(
      r'''^  -\s+(?:["'](.+)["']|(.+?))\s*$''',
    ).firstMatch(line);
    if (item != null) {
      final raw = (item.group(1) ?? item.group(2) ?? '').trim();
      if (targets.contains(canonicalGroupKey(raw))) {
        continue;
      }
      keptEntry = true;
    }
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

String dropEnumValuesSection(String source, Set<String> paths) {
  if (paths.isEmpty) return source;
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
      if (line == 'enumValues:') {
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
    final entry = RegExp(
      r'''^  (?:["']([^"']+)["']|([A-Za-z0-9_.]+))\s*:''',
    ).firstMatch(line);
    if (entry != null) {
      final key = entry.group(1) ?? entry.group(2)!;
      skipping = paths.contains(key);
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

String addParamOrderBlocks(String source, List<String> blocks) {
  if (blocks.isEmpty) return source;
  final lines = source.split('\n');
  final header = lines.indexOf('paramOrder:');
  if (header < 0) return source;

  final existing = <String>{};
  var lastItem = -1;
  var trailingProject = -1;
  for (var i = header + 1; i < lines.length; i++) {
    final line = lines[i];
    if (line.isNotEmpty && !line.startsWith(' ') && !line.startsWith('#')) {
      break;
    }
    final item = RegExp(r'^  -\s+([A-Za-z0-9_]+)\s*$').firstMatch(line);
    if (item != null) {
      final name = item.group(1)!;
      existing.add(name);
      lastItem = i;
      trailingProject = name == 'project' ? i : -1;
    }
  }
  if (lastItem < 0) return source;

  final toInsert = [
    for (final b in blocks)
      if (!existing.contains(b)) b,
  ];
  if (toInsert.isEmpty) return source;

  final at = trailingProject == lastItem ? trailingProject : lastItem + 1;
  lines.insertAll(at, [for (final b in toInsert) '  - $b']);
  return lines.join('\n');
}

List<String> applyMechanicalOverrideFixes(
  String overridesRoot,
  List<OverrideFix> fixes,
) {
  final byType = <String, List<OverrideFix>>{};
  for (final fix in fixes) {
    byType.putIfAbsent(fix.overrideType, () => []).add(fix);
  }
  final applied = <String>[];
  for (final MapEntry(key: label, value: typeFixes) in byType.entries) {
    final file = overrideFileForLabel(overridesRoot, label);
    if (!file.existsSync()) continue;
    var current = file.readAsStringSync();
    final before = current;
    for (final fix in typeFixes) {
      final next = switch (fix) {
        DropSealedName(:final key) => dropGroupMapSection(
          current,
          'sealedNames',
          {key},
        ),
        DropUnsealedGroup(:final key) => dropGroupMapSection(
          current,
          'unsealedGroups',
          {key},
        ),
        DropOverrideGroup(:final membersKey) => dropGroupListSection(
          dropGroupListSection(current, 'exactlyOneOf', {membersKey}),
          'atMostOneOf',
          {membersKey},
        ),
        DropEnumValues(:final attrPath) => dropEnumValuesSection(current, {
          attrPath,
        }),
        AddParamOrderBlock(:final blockName) => addParamOrderBlocks(current, [
          blockName,
        ]),
      };
      if (next != current) {
        current = next;
        applied.add(fix.description);
      }
    }
    if (current != before) {
      file.writeAsStringSync(current);
    }
  }
  applied.sort();
  return applied;
}
