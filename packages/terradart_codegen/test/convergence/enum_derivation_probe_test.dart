@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

/// Enum-derivation probe (A1 migration, Phase 1).
///
/// The de-fatten discovery tracer compares hand-written prelude enums to
/// IR-derivable enums BY NAME ONLY — the documented blind spot that hid the
/// `bigquery_routine` constant drift. This probe goes member-level: for every
/// hand-written `enum X implements TerraformEnum` it compares the derived
/// enum's Dart member names AND raw `terraformValue` strings, then classifies:
///
/// - DERIVABLE_EXACT  — name + members + raw values all match; flipping
///   `deriveEnums: true` and deleting the hand enum changes only doc comments
///   (the accepted A1 trade-off). These are the migration candidates.
/// - MEMBER_DRIFT     — same name, different members/values. Flipping would
///   change public API → stays ③ frozen.
/// - NAME_DRIFT       — a derived enum carries the same raw values under a
///   different Dart name (hand-curated rename) → stays ③ frozen.
/// - NOT_DERIVABLE    — no top-level IR enumValues back this enum (nested
///   block enum, or the schema stores the field as free-form string) —
///   outside A1's scope by design.
///
/// This is a REPORT test: it always passes (modulo reconciliation) and
/// prints/writes the classification so a migration wave can be scoped from
/// data instead of guesses.

const _overrideRoot = 'lib/src/codegen/wrapper_overrides/yaml';
const _schemaPath = 'test/fixtures/wrap/source/schema.json';
const _mmDir = 'test/fixtures/wrap/source/mm';

typedef _Setup = ({
  Map<String, ResourceDef> resources,
  LoadedOverrides loaded,
});

_Setup _setup() {
  final schemaSrc = File(_schemaPath).readAsStringSync();
  final baseIr = const SchemaJsonParser().parseString(schemaSrc);

  final mm = <String, MmResourceOverrides>{};
  final mmDirRef = Directory(_mmDir);
  if (mmDirRef.existsSync()) {
    for (final file in mmDirRef.listSync().whereType<File>().where(
          (f) => f.path.endsWith('.yaml'),
        )) {
      final key = p.basenameWithoutExtension(file.path);
      mm[key] = const MmYamlParser().parseString(file.readAsStringSync());
    }
  }

  final ir =
      mm.isEmpty ? baseIr : const IrMerger().merge(base: baseIr, overrides: mm);
  final loaded = loadWrapperOverrides(rootDir: _overrideRoot);
  return (resources: ir.resources, loaded: loaded);
}

typedef _HandEnum = ({
  String name,
  List<String> members,
  List<String> raws,
  String block,
});

/// Extracts every `enum X implements TerraformEnum { ... }` declaration from
/// [prelude] with its member names and raw values. Anchoring on
/// `implements TerraformEnum` matches the discovery tracer (ADR-0016: every
/// hand-written prelude enum implements it).
List<_HandEnum> _extractHandEnums(String prelude) {
  final out = <_HandEnum>[];
  final decl = RegExp(r'\benum (\w+)\s+implements\s+TerraformEnum\s*\{');
  for (final m in decl.allMatches(prelude)) {
    var depth = 1;
    var i = m.end;
    while (i < prelude.length && depth > 0) {
      final ch = prelude[i];
      if (ch == '{') depth++;
      if (ch == '}') depth--;
      i++;
    }
    final block = prelude.substring(m.start, i);
    final members = <String>[];
    final raws = <String>[];
    for (final c in RegExp(r"^\s*(\w+)\('([^']*)'\)\s*[,;]", multiLine: true)
        .allMatches(block)) {
      members.add(c.group(1)!);
      raws.add(c.group(2)!);
    }
    out.add((name: m.group(1)!, members: members, raws: raws, block: block));
  }
  return out;
}

/// True when [prelude] contains nothing but its enum declarations, their
/// `///` doc comments, and whitespace — i.e. deleting the enums empties it.
bool _isEnumOnly(String prelude, List<_HandEnum> enums) {
  var rest = prelude;
  for (final e in enums) {
    rest = rest.replaceFirst(e.block, '');
  }
  return rest
      .split('\n')
      .every((line) => line.trim().isEmpty || line.trim().startsWith('///'));
}

/// Derived top-level enums for [def], keyed by Dart enum name — exactly the
/// set the `deriveEnums: true` gate would emit (WrapperEmitter A1 branch).
Map<String, EnumName> _derivedEnums(ResourceDef def) {
  final out = <String, EnumName>{};
  for (final a in def.root.attributes) {
    final values = a.constraints.enumValues;
    if (values == null || values.isEmpty) continue;
    final en = enumName(
      resourceType: def.terraformType,
      fieldPath: a.name,
      members: values,
    );
    out[en.dartName] = en;
  }
  return out;
}

bool _sameList(List<String> a, List<String> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

void main() {
  test('enum derivation probe: member-level classification report', () {
    final result = _setup();

    const classes = [
      'DERIVABLE_EXACT',
      'MEMBER_DRIFT',
      'NAME_DRIFT',
      'NOT_DERIVABLE',
    ];
    final totals = {for (final c in classes) c: 0};
    final rows = <String>[
      [
        'type',
        'deriveEnums',
        'preludeShape',
        'handEnums',
        'exact',
        'memberDrift',
        'nameDrift',
        'notDerivable',
        'detail',
      ].join('\t'),
    ];
    final flipCandidates = <String>[];
    final gateOnWithHandEnums = <String>[];
    var withHandEnums = 0;
    var handEnumTotal = 0;
    var skipped = 0;

    for (final entry in result.loaded.all.entries) {
      final type = entry.key;
      final override = entry.value;
      final prelude = override.prelude;
      if (prelude == null) continue;
      final handEnums = _extractHandEnums(prelude);
      if (handEnums.isEmpty) continue;

      final def = result.resources[type];
      if (def == null) {
        skipped++;
        continue;
      }
      withHandEnums++;
      handEnumTotal += handEnums.length;

      final derived = _derivedEnums(def);
      final byClass = {for (final c in classes) c: <String>[]};
      for (final hand in handEnums) {
        final d = derived[hand.name];
        final String cls;
        if (d != null) {
          cls = _sameList(d.dartMembers, hand.members) &&
                  _sameList(d.rawValues, hand.raws)
              ? 'DERIVABLE_EXACT'
              : 'MEMBER_DRIFT';
        } else {
          final rawSet = hand.raws.toSet();
          final renamed = derived.values.any(
            (e) =>
                e.rawValues.toSet().containsAll(rawSet) &&
                rawSet.containsAll(e.rawValues.toSet()),
          );
          cls = renamed ? 'NAME_DRIFT' : 'NOT_DERIVABLE';
        }
        byClass[cls]!.add(hand.name);
        totals[cls] = totals[cls]! + 1;
      }

      final enumOnly = _isEnumOnly(prelude, handEnums);
      final shape = enumOnly ? 'enum-only' : 'mixed';
      final allExact = byClass['DERIVABLE_EXACT']!.length == handEnums.length;
      if (enumOnly && allExact && !override.deriveEnums) {
        flipCandidates.add(type);
      }
      if (override.deriveEnums) {
        const label = {
          'DERIVABLE_EXACT': 'E',
          'MEMBER_DRIFT': 'M',
          'NAME_DRIFT': 'N',
          'NOT_DERIVABLE': 'X',
        };
        gateOnWithHandEnums.add(
          '$type (${classes.map((c) => '${byClass[c]!.length}${label[c]}').join('/')})',
        );
      }

      rows.add([
        type,
        override.deriveEnums.toString(),
        shape,
        handEnums.length.toString(),
        byClass['DERIVABLE_EXACT']!.length.toString(),
        byClass['MEMBER_DRIFT']!.length.toString(),
        byClass['NAME_DRIFT']!.length.toString(),
        byClass['NOT_DERIVABLE']!.length.toString(),
        classes
            .where((c) => byClass[c]!.isNotEmpty && c != 'DERIVABLE_EXACT')
            .map((c) => '$c:${(byClass[c]!..sort()).join(",")}')
            .join(' '),
      ].join('\t'));
    }

    final tsvPath =
        p.join(Directory.systemTemp.path, 'enum_derivation_probe.tsv');
    File(tsvPath).writeAsStringSync(rows.join('\n'));

    // ignore: avoid_print
    print([
      'ENUM DERIVATION PROBE:',
      'files-with-hand-enums=$withHandEnums (skipped-no-schema=$skipped)',
      'hand-enums=$handEnumTotal',
      ...classes.map((c) => '$c=${totals[c]}'),
      'flip-candidates(enum-only+all-exact+gate-off)='
          '${flipCandidates.length}',
      'gate-on-with-hand-enums=${gateOnWithHandEnums.length}',
      'report=$tsvPath',
    ].join(' '));
    if (flipCandidates.isNotEmpty) {
      // ignore: avoid_print
      print('FLIP CANDIDATES: ${(flipCandidates..sort()).join(', ')}');
    }
    if (gateOnWithHandEnums.isNotEmpty) {
      // ignore: avoid_print
      print('GATE-ON WITH HAND ENUMS (E=exact/M=member-drift/N=name-drift/'
          'X=not-derivable): ${(gateOnWithHandEnums..sort()).join('; ')}');
    }

    expect(
      totals.values.fold<int>(0, (a, b) => a + b),
      equals(handEnumTotal),
      reason: 'every hand enum must land in exactly one class',
    );
  });
}
