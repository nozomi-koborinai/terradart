// refresh_migrating_cells.dart: refreshes MIGRATING.md After cells whose
// generated helper or enum type names changed during a schema bump, while
// leaving Before cells untouched and verifying After-cell compilation.
//
// Only unambiguous mechanical type-name changes (same slot kind and container
// flags) are applied. Structural changes (sealed <-> helper, enum -> scalar,
// removed slots or classes) are never rewritten and remain human judgement.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'migrating_cells.dart';

/// Shape of one helper- or enum-typed slot in a generated migration manifest.
typedef SlotTypeSig = ({String kind, String typeName, String flags});

/// Lightweight snapshot of declared types and helper/enum slot signatures from
/// one lane's migration manifest.
final class ManifestTypeSnapshot {
  const ManifestTypeSnapshot({
    required this.declaredTypes,
    required this.slots,
  });

  final Set<String> declaredTypes;
  final Map<({String owner, String slot}), SlotTypeSig> slots;
}

/// Mechanical generated type renames derived from before/after manifest
/// snapshots.
final class GeneratedTypeRenames {
  const GeneratedTypeRenames({
    required this.globalRenames,
    required this.slotRenames,
  });

  /// Old generated type name -> new generated type name when the old name no
  /// longer exists and every renamed slot moved to one unambiguous new name.
  final Map<String, String> globalRenames;

  /// `(owner, slot)` -> `(oldType, newType, positional)` when a slot kept the
  /// same kind and container flags and only its helper or enum type name
  /// changed.
  final Map<
    ({String owner, String slot}),
    ({String oldType, String newType, bool positional})
  >
  slotRenames;

  bool get isEmpty => globalRenames.isEmpty && slotRenames.isEmpty;
}

final class MigratingRefreshResult {
  const MigratingRefreshResult({
    required this.updatedText,
    required this.replacements,
    required this.modifiedLines,
  });

  final String updatedText;
  final List<String> replacements;
  final Set<int> modifiedLines;

  bool get changed => replacements.isNotEmpty;
}

final class MigratingVerifyOutcome {
  const MigratingVerifyOutcome({
    required this.written,
    required this.replacements,
    this.reason,
  });

  final bool written;
  final List<String> replacements;
  final String? reason;
}

/// Parses a generated `packages/terradart_migrate/lib/src/manifest/*.g.dart`
/// source directly without compiling `terradart_migrate`.
ManifestTypeSnapshot parseManifestSourceSnapshot(String source) {
  final declaredTypes = <String>{};
  final slots = <({String owner, String slot}), SlotTypeSig>{};

  for (final m in RegExp(r'MigrateEnum\(').allMatches(source)) {
    final end = _matchDelim(source, m.end - 1, '(', ')');
    if (end < 0) continue;
    final body = source.substring(m.end, end);
    final name = _stringField(body, 'name');
    if (name != null) declaredTypes.add(name);
  }

  for (final m in RegExp(r'Migrate(?:Entry|Helper)\(').allMatches(source)) {
    final end = _matchDelim(source, m.end - 1, '(', ')');
    if (end < 0) continue;
    final body = source.substring(m.end, end);
    final owner = _stringField(body, 'className');
    if (owner == null) continue;
    declaredTypes.add(owner);

    final slotsMatch = RegExp(
      r'slots:\s*(?:<MigrateSlot>)?\[',
    ).firstMatch(body);
    if (slotsMatch == null) continue;
    final listEnd = _matchDelim(body, slotsMatch.end - 1, '[', ']');
    if (listEnd < 0) continue;
    final slotsBody = body.substring(slotsMatch.end, listEnd);
    for (final sm in RegExp(r'MigrateSlot\(').allMatches(slotsBody)) {
      final sEnd = _matchDelim(slotsBody, sm.end - 1, '(', ')');
      if (sEnd < 0) continue;
      final sBody = slotsBody.substring(sm.end, sEnd);
      final dartName = _stringField(sBody, 'dartName');
      final kind = RegExp(
        r'kind:\s*MigrateSlotKind\.(\w+)',
      ).firstMatch(sBody)?[1];
      if (dartName == null || kind == null) continue;
      if (kind != 'helper' && kind != 'enumValue') continue;
      final typeName = kind == 'helper'
          ? _stringField(sBody, 'helper')
          : _stringField(sBody, 'dartType');
      if (typeName == null || typeName.isEmpty) continue;
      final repeated = RegExp(r'\brepeated:\s*true\b').hasMatch(sBody);
      final bare = RegExp(r'\bwrapped:\s*false\b').hasMatch(sBody);
      final positional = RegExp(r'\bpositional:\s*true\b').hasMatch(sBody);
      final flags = [
        if (repeated) 'repeated',
        if (bare) 'bare',
        if (positional) 'positional',
      ].join('|');
      slots[(owner: owner, slot: dartName)] = (
        kind: kind,
        typeName: typeName,
        flags: flags,
      );
    }
  }

  return ManifestTypeSnapshot(declaredTypes: declaredTypes, slots: slots);
}

/// Converts a `tool/bump_api_surface.dart` surface map into a
/// [ManifestTypeSnapshot].
ManifestTypeSnapshot snapshotFromApiSurface(
  Map<String, Map<String, Object?>> surface,
) {
  final declaredTypes = <String>{};
  final slots = <({String owner, String slot}), SlotTypeSig>{};

  for (final MapEntry(:key, :value) in surface.entries) {
    final parts = key.split(':');
    if (parts.length < 3) continue;
    final kind = parts[0];
    final rest = parts.sublist(2).join(':');
    switch (kind) {
      case 'class' || 'helper':
        declaredTypes.add(rest);
      case 'enum':
        final dot = rest.indexOf('.');
        if (dot > 0) declaredTypes.add(rest.substring(0, dot));
      case 'slot':
        final dot = rest.indexOf('.');
        if (dot <= 0) continue;
        final owner = rest.substring(0, dot);
        final slotName = rest.substring(dot + 1);
        final sig = value['sig'] as String? ?? '';
        final sigParts = sig.split('|');
        if (sigParts.length < 3) continue;
        final slotKind = sigParts[0];
        if (slotKind != 'helper' && slotKind != 'enumValue') continue;
        final typeName = slotKind == 'helper' ? sigParts[2] : sigParts[1];
        if (typeName.isEmpty) continue;
        final flags = sigParts.skip(3).join('|');
        slots[(owner: owner, slot: slotName)] = (
          kind: slotKind,
          typeName: typeName,
          flags: flags,
        );
    }
  }

  return ManifestTypeSnapshot(declaredTypes: declaredTypes, slots: slots);
}

/// Derives unambiguous mechanical generated-type renames from [before] and
/// [after] manifest snapshots.
GeneratedTypeRenames deriveGeneratedTypeRenames(
  ManifestTypeSnapshot before,
  ManifestTypeSnapshot after,
) {
  final slotRenames =
      <
        ({String owner, String slot}),
        ({String oldType, String newType, bool positional})
      >{};
  final candidates = <String, Set<String>>{};

  for (final MapEntry(key: slotKey, value: beforeSig) in before.slots.entries) {
    final afterSig = after.slots[slotKey];
    if (afterSig == null) continue;
    if (beforeSig.kind != afterSig.kind || beforeSig.flags != afterSig.flags) {
      continue;
    }
    if (beforeSig.typeName == afterSig.typeName) continue;
    slotRenames[slotKey] = (
      oldType: beforeSig.typeName,
      newType: afterSig.typeName,
      positional: beforeSig.flags.split('|').contains('positional'),
    );
    (candidates[beforeSig.typeName] ??= {}).add(afterSig.typeName);
  }

  final globalRenames = <String, String>{};
  for (final MapEntry(key: oldType, value: targets) in candidates.entries) {
    if (!after.declaredTypes.contains(oldType) &&
        targets.length == 1 &&
        after.declaredTypes.contains(targets.single)) {
      globalRenames[oldType] = targets.single;
    }
  }

  return GeneratedTypeRenames(
    globalRenames: globalRenames,
    slotRenames: slotRenames,
  );
}

/// Refreshes only the `After` column backtick spans in the top `##` section of
/// [migratingMd] using [renames]. `Before` cells and historical sections are
/// never modified.
MigratingRefreshResult refreshMigratingAfterCells(
  String migratingMd,
  GeneratedTypeRenames renames,
) {
  if (renames.isEmpty) {
    return MigratingRefreshResult(
      updatedText: migratingMd,
      replacements: const [],
      modifiedLines: const {},
    );
  }

  final lines = migratingMd.split('\n');
  final out = List<String>.of(lines);
  final replacements = <String>[];
  final modifiedLines = <int>{};

  var inTop = false;
  List<String>? header;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (line.startsWith('## ')) {
      if (inTop) break;
      inTop = true;
      header = null;
      continue;
    }
    if (!inTop) continue;
    if (line.startsWith('### ')) {
      header = null;
      continue;
    }
    if (!line.startsWith('|')) {
      if (line.trim().isEmpty) header = null;
      continue;
    }
    final slices = _tableCellSlices(line);
    if (header == null) {
      header = [for (final s in slices) s.text.trim()];
      continue;
    }
    if (slices.every((s) => RegExp(r'^:?-+:?$').hasMatch(s.text.trim()))) {
      continue;
    }
    final afterIdx = header.indexOf('After');
    if (afterIdx < 0 || afterIdx >= slices.length) continue;

    final slice = slices[afterIdx];
    final refreshedCell = _rewriteCodeSpans(
      slice.text,
      renames,
      onChange: (oldName, newName) =>
          replacements.add('line ${i + 1}: $oldName -> $newName'),
    );
    if (refreshedCell != slice.text) {
      out[i] = line.replaceRange(slice.start, slice.end, refreshedCell);
      modifiedLines.add(i + 1);
    }
  }

  return MigratingRefreshResult(
    updatedText: out.join('\n'),
    replacements: replacements,
    modifiedLines: modifiedLines,
  );
}

/// Refreshes `MIGRATING.md` After cells under [repoRoot] when [renames] match,
/// verifying with [verifyAfter] (default [checkMigratingAfterCells]) that
/// every modified line compiles cleanly and no previously compiling line
/// regresses. Writes `MIGRATING.md` only when verification succeeds.
Future<MigratingVerifyOutcome> refreshAndVerifyMigratingMd(
  String repoRoot,
  GeneratedTypeRenames renames, {
  Future<({List<String> failures, Set<int> failingLines})> Function(
    String root, {
    String? migrating,
  })?
  verifyAfter,
}) async {
  if (renames.isEmpty) {
    return const MigratingVerifyOutcome(written: false, replacements: []);
  }
  final file = File(p.join(repoRoot, migratingPath));
  if (!file.existsSync()) {
    return const MigratingVerifyOutcome(written: false, replacements: []);
  }
  final original = file.readAsStringSync();
  final refreshed = refreshMigratingAfterCells(original, renames);
  if (!refreshed.changed) {
    return const MigratingVerifyOutcome(written: false, replacements: []);
  }

  final verify = verifyAfter ?? checkMigratingAfterCells;
  final beforeCheck = await verify(repoRoot, migrating: original);
  final afterCheck = await verify(repoRoot, migrating: refreshed.updatedText);

  final unmappedAfter = _unmappedFailures(afterCheck);
  final unmappedBefore = _unmappedFailures(beforeCheck);
  final brokenModified = refreshed.modifiedLines.intersection(
    afterCheck.failingLines,
  );
  final regressed = afterCheck.failingLines.difference(
    beforeCheck.failingLines,
  );
  if (unmappedAfter.isNotEmpty ||
      (unmappedBefore.isNotEmpty && afterCheck.failingLines.isNotEmpty) ||
      brokenModified.isNotEmpty ||
      regressed.isNotEmpty) {
    final reasons = [
      if (unmappedAfter.isNotEmpty)
        'unmapped compile failures: ${unmappedAfter.join('; ')}',
      if (unmappedBefore.isNotEmpty && afterCheck.failingLines.isNotEmpty)
        'baseline check had unmapped failures: ${unmappedBefore.join('; ')}',
      if (brokenModified.isNotEmpty)
        'refreshed lines still fail compile: ${brokenModified.toList()..sort()}',
      if (regressed.isNotEmpty)
        'lines regressed: ${regressed.toList()..sort()}',
    ].join('; ');
    return MigratingVerifyOutcome(
      written: false,
      replacements: refreshed.replacements,
      reason: reasons,
    );
  }

  file.writeAsStringSync(refreshed.updatedText);
  return MigratingVerifyOutcome(
    written: true,
    replacements: refreshed.replacements,
  );
}

String _rewriteCodeSpans(
  String cell,
  GeneratedTypeRenames renames, {
  required void Function(String oldName, String newName) onChange,
}) => cell.replaceAllMapped(RegExp(r'`([^`]+)`'), (m) {
  final code = m.group(1)!;
  final rewritten = _rewriteCode(code, renames, onChange: onChange);
  return '`$rewritten`';
});

String _rewriteCode(
  String code,
  GeneratedTypeRenames renames, {
  required void Function(String oldName, String newName) onChange,
}) {
  var result = code;
  if (renames.slotRenames.isNotEmpty) {
    result = _applySlotRenames(result, renames.slotRenames, onChange: onChange);
  }
  if (renames.globalRenames.isNotEmpty) {
    result = _replaceIdentifiersOutsideStrings(
      result,
      renames.globalRenames,
      onChange: onChange,
    );
  }
  return result;
}

List<String> _unmappedFailures(
  ({List<String> failures, Set<int> failingLines}) check,
) {
  final linePattern = RegExp('^${RegExp.escape(migratingPath)}:(\\d+):');
  return [
    for (final f in check.failures)
      if (linePattern.firstMatch(f) case final m?)
        if (!check.failingLines.contains(int.parse(m.group(1)!))) f else ...[]
      else
        f,
  ];
}

String _applySlotRenames(
  String code,
  Map<
    ({String owner, String slot}),
    ({String oldType, String newType, bool positional})
  >
  slotRenames, {
  required void Function(String oldName, String newName) onChange,
}) {
  final byOwner =
      <
        String,
        Map<String, ({String oldType, String newType, bool positional})>
      >{};
  for (final MapEntry(:key, :value) in slotRenames.entries) {
    (byOwner[key.owner] ??= {})[key.slot] = value;
  }

  var out = code;
  for (final MapEntry(key: owner, value: slotMap) in byOwner.entries) {
    final ownerCall = RegExp('\\b${RegExp.escape(owner)}\\(');
    var searchFrom = 0;
    while (searchFrom < out.length) {
      final m = ownerCall.firstMatch(out.substring(searchFrom));
      if (m == null) break;
      final openParen = searchFrom + m.end - 1;
      if (_isInsideString(out, searchFrom + m.start)) {
        searchFrom = openParen + 1;
        continue;
      }
      final closeParen = _matchDelim(out, openParen, '(', ')');
      if (closeParen < 0) break;

      final argsBody = out.substring(openParen + 1, closeParen);
      final updatedBody = _rewriteArgs(argsBody, slotMap, onChange: onChange);
      if (updatedBody != argsBody) {
        out = out.replaceRange(openParen + 1, closeParen, updatedBody);
        searchFrom = openParen + 1 + updatedBody.length + 1;
      } else {
        searchFrom = closeParen + 1;
      }
    }
  }
  return out;
}

String _rewriteArgs(
  String argsBody,
  Map<String, ({String oldType, String newType, bool positional})> slotMap, {
  required void Function(String oldName, String newName) onChange,
}) {
  final positionalRenames = <String, String>{};
  for (final r in slotMap.values) {
    if (r.positional) positionalRenames[r.oldType] = r.newType;
  }
  final parts = _splitTopLevelArgs(argsBody);
  var changed = false;
  final rebuilt = <String>[];
  for (final part in parts) {
    final match = RegExp(
      r'^(\s*)([a-z][A-Za-z0-9_]*)(\s*:\s*)',
    ).firstMatch(part);
    if (match != null) {
      final slot = match.group(2)!;
      final rename = slotMap[slot];
      if (rename != null) {
        final valuePart = part.substring(match.end);
        final updatedValue = _replaceIdentifiersOutsideStrings(valuePart, {
          rename.oldType: rename.newType,
        }, onChange: onChange);
        if (updatedValue != valuePart) {
          rebuilt.add('${part.substring(0, match.end)}$updatedValue');
          changed = true;
          continue;
        }
      }
    } else if (positionalRenames.isNotEmpty) {
      final updatedPart = _replaceIdentifiersOutsideStrings(
        part,
        positionalRenames,
        onChange: onChange,
      );
      if (updatedPart != part) {
        rebuilt.add(updatedPart);
        changed = true;
        continue;
      }
    }
    rebuilt.add(part);
  }
  return changed ? rebuilt.join(',') : argsBody;
}

List<String> _splitTopLevelArgs(String src) {
  final out = <String>[];
  var start = 0;
  var depth = 0;
  String? quote;
  for (var i = 0; i < src.length; i++) {
    final ch = src[i];
    if (quote != null) {
      if (ch == r'\') {
        i++;
      } else if (ch == quote) {
        quote = null;
      }
      continue;
    }
    if (ch == "'" || ch == '"') {
      quote = ch;
    } else if (ch == '(' || ch == '[' || ch == '{' || ch == '<') {
      depth++;
    } else if (ch == ')' || ch == ']' || ch == '}' || ch == '>') {
      if (depth > 0) depth--;
    } else if (ch == ',' && depth == 0) {
      out.add(src.substring(start, i));
      start = i + 1;
    }
  }
  out.add(src.substring(start));
  return out;
}

String _replaceIdentifiersOutsideStrings(
  String src,
  Map<String, String> renames, {
  required void Function(String oldName, String newName) onChange,
}) {
  if (renames.isEmpty) return src;
  final keys = renames.keys.toList()
    ..sort((a, b) => b.length.compareTo(a.length));
  final pattern = RegExp('\\b(?:${keys.map(RegExp.escape).join('|')})\\b');
  final out = StringBuffer();
  var i = 0;
  while (i < src.length) {
    final ch = src[i];
    if (ch == "'" || ch == '"') {
      final quote = ch;
      out.write(ch);
      i++;
      while (i < src.length) {
        final c = src[i];
        out.write(c);
        if (c == r'\' && i + 1 < src.length) {
          i++;
          out.write(src[i]);
        } else if (c == quote) {
          i++;
          break;
        }
        i++;
      }
      continue;
    }
    final nextQuote = src.indexOf(RegExp('''['"]'''), i);
    final end = nextQuote < 0 ? src.length : nextQuote;
    final chunk = src.substring(i, end);
    out.write(
      chunk.replaceAllMapped(pattern, (m) {
        final oldName = m.group(0)!;
        final newName = renames[oldName]!;
        onChange(oldName, newName);
        return newName;
      }),
    );
    i = end;
  }
  return out.toString();
}

bool _isInsideString(String src, int index) {
  String? quote;
  for (var i = 0; i < index && i < src.length; i++) {
    final ch = src[i];
    if (quote != null) {
      if (ch == r'\') {
        i++;
      } else if (ch == quote) {
        quote = null;
      }
    } else if (ch == "'" || ch == '"') {
      quote = ch;
    }
  }
  return quote != null;
}

List<({int start, int end, String text})> _tableCellSlices(String row) {
  final out = <({int start, int end, String text})>[];
  var start = 1;
  var inCode = false;
  for (var i = 1; i < row.length; i++) {
    final c = row[i];
    if (c == '`') inCode = !inCode;
    if (c == '|' && !inCode && row[i - 1] != r'\') {
      out.add((start: start, end: i, text: row.substring(start, i)));
      start = i + 1;
    }
  }
  return out;
}

String? _stringField(String body, String field) =>
    RegExp("$field:\\s*'([^']*)'").firstMatch(body)?[1];

int _matchDelim(String src, int openIndex, String open, String close) {
  var depth = 0;
  String? quote;
  for (var i = openIndex; i < src.length; i++) {
    final ch = src[i];
    if (quote != null) {
      if (ch == r'\') {
        i++;
      } else if (ch == quote) {
        quote = null;
      }
      continue;
    }
    if (ch == "'" || ch == '"') {
      quote = ch;
    } else if (ch == open) {
      depth++;
    } else if (ch == close) {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

Future<void> main(List<String> args) async {
  String? beforePath;
  String? afterPath;
  for (final a in args) {
    if (a.startsWith('--before=')) {
      beforePath = a.substring('--before='.length);
    } else if (a.startsWith('--after=')) {
      afterPath = a.substring('--after='.length);
    }
  }
  if (beforePath == null || afterPath == null) {
    stderr.writeln(
      'Usage: dart tool/refresh_migrating_cells.dart '
      '--before=<manifest.g.dart|surface.json> '
      '--after=<manifest.g.dart|surface.json>',
    );
    exit(64);
  }
  ManifestTypeSnapshot readSnapshot(String path) {
    final text = File(path).readAsStringSync();
    if (path.endsWith('.json')) {
      final raw = jsonDecode(text) as Map<String, dynamic>;
      return snapshotFromApiSurface({
        for (final e in raw.entries)
          e.key: Map<String, Object?>.from(e.value as Map),
      });
    }
    return parseManifestSourceSnapshot(text);
  }

  final renames = deriveGeneratedTypeRenames(
    readSnapshot(beforePath),
    readSnapshot(afterPath),
  );
  final outcome = await refreshAndVerifyMigratingMd(
    Directory.current.path,
    renames,
  );
  if (outcome.written) {
    print(
      'refresh_migrating_cells: refreshed ${outcome.replacements.length} '
      'After-cell reference(s): ${outcome.replacements.join('; ')}',
    );
  } else if (outcome.reason != null) {
    stderr.writeln('refresh_migrating_cells: skipped (${outcome.reason})');
    exit(1);
  } else {
    print('refresh_migrating_cells: no After-cell refreshes needed');
  }
}
