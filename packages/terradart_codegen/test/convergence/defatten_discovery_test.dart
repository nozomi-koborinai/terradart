@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/getter_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
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

  final ir = mm.isEmpty
      ? baseIr
      : const IrMerger().merge(base: baseIr, overrides: mm);
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
}
