@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/getter_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

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

// ---------------------------------------------------------------------------
// Task 2 — symbol extraction helpers
// ---------------------------------------------------------------------------

/// Enum dart names derivable from the IR for [def].
///
/// CLASSIFICATION RULE (field-level, name-rendered): an enum is "derivable"
/// iff the schema (after MM merge) carries non-empty `enumValues` for the
/// attribute. We render the derived name through [enumName] exactly as the A1
/// gate does and compare names. Where a hand-written enum name does NOT
/// string-match the IR-derived name (naming drift), this helper still returns
/// the IR-derived name; the `difference` against the hand-written set then
/// classifies the drifted hand-written enum as curated-only — the conservative
/// answer (it does not get auto-dropped on a name guess).
Set<String> derivableEnumNames(ResourceDef def) => {
      for (final a in def.root.attributes)
        if ((a.constraints.enumValues ?? const <String>[]).isNotEmpty)
          enumName(
            resourceType: def.terraformType,
            fieldPath: a.name,
            members: a.constraints.enumValues!,
          ).dartName,
    };

/// Getter names derivable from the IR for [def] (via [emitDerivedOutputGetters]).
Set<String> derivableGetterNames(ResourceDef def) => RegExp(r'\bget (\w+)')
    .allMatches(emitDerivedOutputGetters(def))
    .map((m) => m.group(1)!)
    .toSet();

/// Enum names hand-written in the [prelude] block of an override.
///
/// Matches only real enum *declarations* — the identifier must be immediately
/// followed by `implements` or `{`. A bare `\benum (\w+)` over the whole
/// prelude string also matches the prose phrase "enum" + word inside the
/// hand-written doc comments (e.g. "the enum below pins...", "an enum because
/// GCP accepts...", "enum value directly"), which would pollute the
/// curated-only report with junk tokens like `below`, `because`, `value`. By
/// ADR-0016 every emitted/hand-written enum carries `implements TerraformEnum`,
/// so anchoring on `implements`/`{` is a safe, lossless tightening.
Set<String> handwrittenEnumNames(String? prelude) => prelude == null
    ? <String>{}
    : RegExp(r'\benum (\w+)\s*(?:implements\b|\{)')
        .allMatches(prelude)
        .map((m) => m.group(1)!)
        .toSet();

/// Getter names hand-written in the [extra] getters block of an override.
Set<String> handwrittenGetterNames(String? extra) => extra == null
    ? <String>{}
    : RegExp(r'\bget (\w+)').allMatches(extra).map((m) => m.group(1)!).toSet();

/// Classifies an override's class-doc disposition for the discovery report.
///
/// The hand-written `classDocComment` axis is retired (2026-07 doc wave), so
/// the classification is purely gate-based:
/// - deriveClassDoc + curatedDoc present -> 'derived+frozen'
/// - deriveClassDoc, no curatedDoc       -> 'derived'
/// - gate off                            -> 'none'
String classifyDoc(WrapperOverride o) {
  if (o.deriveClassDoc) {
    return o.curatedDoc != null ? 'derived+frozen' : 'derived';
  }
  return 'none';
}

void main() {
  // -------------------------------------------------------------------------
  // Task 1 — harness loads overrides and IR
  // -------------------------------------------------------------------------
  test('discovery harness loads overrides and IR', () {
    final result = _setup();
    expect(result.loaded.resources, isNotEmpty,
        reason: 'loadWrapperOverrides must return at least one resource entry');
    expect(result.resources, isNotEmpty,
        reason: 'merged IR must contain at least one resource');
  });

  // -------------------------------------------------------------------------
  // Task 2 — classification splits covered vs curated-only
  // -------------------------------------------------------------------------
  test('classification splits covered vs curated-only', () {
    final result = _setup();

    // --- google_bigquery_capacity_commitment ---
    // The provider schema stores plan/renewal_plan/edition as free-form strings
    // (no enumValues in the IR). Therefore all 3 hand-written prelude enums are
    // curated-only; none are derivable from the schema.
    const capacityType = 'google_bigquery_capacity_commitment';
    final capacityDef = result.resources[capacityType];
    expect(capacityDef, isNotNull,
        reason: '$capacityType must exist in fixture schema');
    final capacityOverride = result.loaded.resources[capacityType];
    expect(capacityOverride, isNotNull,
        reason: '$capacityType override must be loaded');

    final capacityHandwritten = handwrittenEnumNames(capacityOverride!.prelude);
    expect(capacityHandwritten, hasLength(3),
        reason: 'expected 3 hand-written prelude enums');

    final capacityDerivable = derivableEnumNames(capacityDef!);
    final capacityCuratedOnly =
        capacityHandwritten.difference(capacityDerivable);
    expect(capacityCuratedOnly, equals(capacityHandwritten),
        reason: 'all 3 capacity_commitment enums must be curated-only '
            '(no schema enumValues for plan/renewal_plan/edition)');

    // --- google_pubsub_topic ---
    // nameRef and id are derivable from the IR (name + id attributes exist).
    const pubsubTopicType = 'google_pubsub_topic';
    final pubsubTopicDef = result.resources[pubsubTopicType];
    expect(pubsubTopicDef, isNotNull,
        reason: '$pubsubTopicType must exist in fixture schema');

    final topicDerivable = derivableGetterNames(pubsubTopicDef!);
    expect(topicDerivable.intersection({'nameRef', 'id'}),
        equals({'nameRef', 'id'}),
        reason: 'nameRef and id must be derivable for google_pubsub_topic');
  });

  test('classifyDoc keys on derive gates, not null classDocComment', () {
    final result = _setup();

    // Migrated (Wave 0): google_pubsub_schema has deriveClassDoc + curatedDoc.
    final schema = result.loaded.resources['google_pubsub_schema'];
    expect(schema, isNotNull, reason: 'pubsub schema override must load');
    expect(schema!.deriveClassDoc, isTrue, reason: 'pubsub schema is migrated');
    expect(schema.curatedDoc, isNotNull);
    expect(classifyDoc(schema), 'derived+frozen',
        reason:
            'migrated + curatedDoc must classify as derived+frozen, not none');

    // The classDocComment axis is fully retired (the 2026-07 doc wave
    // migrated the last 18 overrides — firebase_app_check, app_hosting, and
    // iam), so no committed override exercises the legacy un-migrated
    // branches of classifyDoc anymore. The former un-migrated fixtures now
    // assert their migrated shape: gate on + curatedDoc.
    final iam = result.loaded.resources['google_project_iam_custom_role'];
    expect(iam, isNotNull);
    expect(iam!.deriveClassDoc, isTrue);
    expect(classifyDoc(iam), 'derived+frozen');

    final member = result.loaded.resources['google_project_iam_member'];
    expect(member, isNotNull);
    expect(member!.deriveClassDoc, isTrue);
    expect(classifyDoc(member), 'derived+frozen');
  });

  // -------------------------------------------------------------------------
  // Task 3 — all-override sweep → TSV report
  // -------------------------------------------------------------------------
  test('emit de-fatten discovery report', () {
    final result = _setup();

    final rows = <String>[];
    var skipped = 0;

    // TSV header
    rows.add([
      'type',
      'outputDir',
      'enumsCoveredOfTotal',
      'curatedOnlyEnums',
      'gettersCoveredOfTotal',
      'renameKeepGetters',
      'doc',
    ].join('\t'));

    for (final entry in result.loaded.all.entries) {
      final type = entry.key;
      final override = entry.value;

      final def = result.resources[type];
      if (def == null) {
        // No schema fixture entry for this override — skip and count it
        // (no silent caps; rows + skipped must reconcile to the total).
        skipped++;
        continue;
      }

      // Enum classification (prelude enums vs IR-derivable enums).
      final hwEnums = handwrittenEnumNames(override.prelude);
      final derivEnums = derivableEnumNames(def);
      final coveredEnums = hwEnums.intersection(derivEnums);
      final curatedOnlyEnums = hwEnums.difference(derivEnums);

      // Getter classification (extraGetters vs IR-derivable getters).
      final hwGetters = handwrittenGetterNames(override.extraGetters);
      final derivGetters = derivableGetterNames(def);
      final coveredGetters = hwGetters.intersection(derivGetters);
      final renameKeepGetters = hwGetters.difference(derivGetters);

      // Doc classification: keyed on derive gates first so migrated overrides
      // (deriveClassDoc + curatedDoc, no classDocComment) are not mis-filed
      // as 'none'. See [classifyDoc] for the full decision tree.
      final docClass = classifyDoc(override);

      rows.add([
        type,
        override.outputDir,
        '${coveredEnums.length}/${hwEnums.length}',
        curatedOnlyEnums.isEmpty
            ? '-'
            : (curatedOnlyEnums.toList()..sort()).join(';'),
        '${coveredGetters.length}/${hwGetters.length}',
        renameKeepGetters.isEmpty
            ? '-'
            : (renameKeepGetters.toList()..sort()).join(';'),
        docClass,
      ].join('\t'));
    }

    final tsvPath = p.join(Directory.systemTemp.path, 'defatten_discovery.tsv');
    File(tsvPath).writeAsStringSync(rows.join('\n'));

    // ignore: avoid_print
    print(
      'DEFATTEN DISCOVERY: checked=${rows.length - 1} skipped=$skipped '
      'report=$tsvPath',
    );

    // The data rows (rows.length - 1, excluding the header) plus the skipped
    // overrides must reconcile exactly to the total number of loaded overrides
    // — proof the sweep visited every override with no silent caps.
    expect(
      (rows.length - 1) + skipped,
      equals(result.loaded.all.length),
      reason: 'rows + skipped must equal total loaded overrides',
    );
  });
}
