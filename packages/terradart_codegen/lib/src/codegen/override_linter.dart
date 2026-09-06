import 'package:meta/meta.dart';

import '../parser/mm_yaml_parser.dart';
import 'migrate/helper_class_extractor.dart';
import 'migrate/migrate_shape_analyzer.dart';
import 'universal_invariants/enum_extractor.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// A single dead/conflicting-config finding for one override.
///
/// Phase A5 (lint-override): when a resource opts into a derivation gate, the
/// matching hand-written axis becomes dead config the emitter ignores. Each
/// such finding is reported as a [LintViolation] with a stable [rule] id so the
/// CLI output (and future phase-2 rules) have a consistent contract.
final class LintViolation {
  const LintViolation({
    required this.tfType,
    required this.rule,
    required this.detail,
  });

  /// Terraform type the violating override belongs to (e.g. `google_x`).
  final String tfType;

  /// Stable rule identifier (e.g. `derive-class-doc-dead-classdoccomment`).
  final String rule;

  /// Human-readable explanation + remediation.
  final String detail;
}

/// Lints a single [override] for phase-1 dead-config rules. Pure: no I/O.
///
/// Phase-1 rules (all decidable from [WrapperOverride] fields alone, no
/// schema/MM/IR load):
///
/// - (d) `curatedDoc != null && deriveClassDoc == false`: `curatedDoc` is only
///   emitted when `deriveClassDoc` is on, so it is dead.
/// - (e) `customSlots` keys never referenced by `paramOrder` /
///   `argMapOrder`: the emitter resolves slot names from those lists, so an
///   unreferenced slot is silently skipped — the declared parameter never
///   reaches the generated constructor (Wave 32 shipped
///   `google_redis_instance` with both nested-block slots dropped this way,
///   while `wrap --check` stayed green). When `paramOrder` is omitted the
///   emitter walks IR-natural names, which can never include a *virtual*
///   slot, so customSlots without an explicit paramOrder is flagged too.
///
/// enum-in-`prelude` (vs `deriveEnums`) and `nameRef`/`id` in `extraGetters`
/// (vs `deriveOutputGetters`) are NOT phase-1 rules: they need the IR to
/// compute the derived symbol names, and a same-named hand-written duplicate is
/// already caught by `dart analyze` (duplicate definition). They are deferred
/// to phase 2.
List<LintViolation> lintOverride(
  String tfType,
  WrapperOverride override, {
  MmResourceOverrides? mm,
  Set<String> exactlyOneOptionalFanoutDebt = const {},
  MigrateShapeLintInput? migrate,
}) {
  final violations = <LintViolation>[];

  // Former rule (a) — deriveClassDoc + classDocComment dead config — is
  // gone with the axis itself: the loader now rejects `classDocComment`
  // outright with a migration hint, which fires earlier than any lint.

  if (override.curatedDoc != null && !override.deriveClassDoc) {
    violations.add(LintViolation(
      tfType: tfType,
      rule: 'curated-doc-without-derive-class-doc',
      detail: 'curatedDoc is set but deriveClassDoc is false. curatedDoc is '
          'only emitted when deriveClassDoc is true, so it is dead config. '
          'Set deriveClassDoc: true or remove curatedDoc.',
    ));
  }

  // Belt-and-suspenders alongside the loader's eager FormatException (see
  // `yaml_loader.dart`'s `nestedTypeExcludes requires deriveNestedTypes`
  // check): the loader can never actually produce this shape from yaml, but
  // an override built some other way (a test, a future non-yaml source)
  // could still combine the two fields incorrectly.
  if (override.nestedTypeExcludes != null && !override.deriveNestedTypes) {
    violations.add(LintViolation(
      tfType: tfType,
      rule: 'nested-excludes-without-derive',
      detail: 'nestedTypeExcludes is set but deriveNestedTypes is false. '
          'nestedTypeExcludes only has an effect inside the deriveNestedTypes '
          'codegen gate, so it is dead config. Set deriveNestedTypes: true or '
          'remove nestedTypeExcludes.',
    ));
  }

  violations.addAll(lintDeadCustomSlots(tfType, override));

  violations.addAll(
    lintExactlyOneMutualExclusion(
      tfType,
      override,
      mm: mm,
      exactlyOneOptionalFanoutDebt: exactlyOneOptionalFanoutDebt,
    ),
  );

  if (migrate != null) {
    violations.addAll(lintMigrateShapes(tfType, override, migrate));
  }

  return violations;
}

/// Inputs of the migration-manifest shape rules.
final class MigrateShapeLintInput {
  const MigrateShapeLintInput({
    required this.context,
    this.debt = const {},
  });

  /// Symbol table the slot / field types resolve against: the helper
  /// classes, sealed roots and enums declared across every override's
  /// `prelude` in the registry (see [preludeShapeContext]).
  final ShapeContext context;

  /// Terraform types exempt from `migrate-shape-underivable`
  /// (`tool/migrate_manifest_debt.yaml`).
  final Set<String> debt;
}

/// Builds the package-wide [ShapeContext] the lint resolves types against:
/// what `terradart wrap --migrate-manifest` sees minus the derived symbols
/// (`deriveEnums` enums, `deriveNestedTypes` classes), which only exist in
/// emitted source. A custom slot or prelude field typed with a *derived*
/// symbol therefore reads as underivable here; none does today, and one
/// that appears is a reviewed ledger entry, not a silent pass.
ShapeContext preludeShapeContext(Map<String, WrapperOverride> overrides) {
  const helperExtractor = HelperClassExtractor();
  const enumExtractor = EnumExtractor.lenient();
  final parts = <HelperExtraction>[];
  final enumNames = <String>{};
  for (final o in overrides.values) {
    final prelude = o.prelude;
    if (prelude == null) continue;
    parts.add(helperExtractor.extract(prelude));
    enumNames.addAll(enumExtractor.extract(prelude).map((e) => e.name));
  }
  return ShapeContext(
    helpers: HelperExtraction.merge(parts),
    enumNames: enumNames,
  );
}

/// Migration-manifest shape rules (issue #659).
///
/// `terradart wrap --migrate-manifest` derives, for every curated factory,
/// how each constructor slot and helper-class field maps back to Terraform
/// (`_migrate_manifest.g.dart`). Shapes it cannot derive are recorded as
/// `manual` — silently, because the manifest must always emit. These rules
/// make that visible at lint time, from the override YAML alone:
///
/// - `migrate-shape-underivable` — a `prelude` helper class whose
///   `encode()` cannot be mapped field-per-key, a helper field or custom
///   slot whose type the manifest cannot express, or a custom slot whose
///   argMap entry has no static key. Fix the shape, declare
///   `customSlots.<slot>.migrate: {kind: manual, reason: ...}` for a slot
///   that is manual by design, or add a reasoned `tool/migrate_manifest_debt.yaml`
///   entry. Suppressed for types listed in [MigrateShapeLintInput.debt].
/// - `migrate-hint-stale` — a `migrate:` hint on a slot the manifest
///   derives fine; the hint would hide a working recipe. Never suppressed.
List<LintViolation> lintMigrateShapes(
  String tfType,
  WrapperOverride override,
  MigrateShapeLintInput input,
) {
  final violations = <LintViolation>[];
  final underivable = <LintViolation>[];
  final ctx = input.context;

  void flag(String detail) {
    underivable.add(LintViolation(
      tfType: tfType,
      rule: 'migrate-shape-underivable',
      detail: detail,
    ));
  }

  final prelude = override.prelude;
  if (prelude != null) {
    final own = const HelperClassExtractor().extract(prelude);
    for (final h in own.helpers.values) {
      if (h.isIrregular) {
        flag(
          'prelude helper `${h.name}` cannot be mapped back to Terraform '
          'keys (${h.irregularReason}). The migration manifest records it '
          'as manual. Rewrite encode() as a field-per-key map literal, or '
          'add a reasoned entry to tool/migrate_manifest_debt.yaml.',
        );
        continue;
      }
      for (final f in h.fields) {
        var shape =
            resolveEnumPayload(classifyDartType(f.typeSource, ctx), ctx);
        if (f.merged) shape = mergedShape(shape);
        if (shape.isManual) {
          flag(
            'prelude helper `${h.name}` field `${f.name}` has a type the '
            'migration manifest cannot express (${shape.reason}). Use '
            'TfArg<T>, a helper class, a sealed class or an enum, or add a '
            'reasoned entry to tool/migrate_manifest_debt.yaml.',
          );
        }
      }
    }
  }

  for (final entry in (override.customSlots ?? const {}).entries) {
    final slot = entry.value;
    final SlotShape derived;
    try {
      derived = deriveCustomSlotShape(parseCustomSlot(slot), ctx);
    } on FormatException catch (e) {
      flag(
        'customSlots["${entry.key}"] paramDeclaration could not be parsed '
        '(${e.message}).',
      );
      continue;
    }
    final hint = slot.migrate;
    if (hint != null && !derived.isManual) {
      violations.add(LintViolation(
        tfType: tfType,
        rule: 'migrate-hint-stale',
        detail: 'customSlots["${entry.key}"].migrate declares the slot '
            'manual, but the migration manifest derives it as '
            '${derived.kind.name}. Remove the hint so the manifest carries '
            'the working recipe.',
      ));
    } else if (hint == null && derived.isManual) {
      flag(
        'customSlots["${entry.key}"] cannot be derived for the migration '
        'manifest (${derived.reason}). Give the slot a shape the manifest '
        'can express, declare `migrate: {kind: manual, reason: ...}` on it '
        'when it is manual by design, or add a reasoned entry to '
        'tool/migrate_manifest_debt.yaml.',
      );
    }
  }

  if (!input.debt.contains(tfType)) violations.addAll(underivable);
  return violations;
}

/// Ledger entries that no longer suppress a `migrate-shape-underivable`
/// finding (the override was fixed, or the type is unknown).
List<String> staleMigrateManifestDebt(
  Map<String, WrapperOverride> overrides, {
  required ShapeContext context,
  required Set<String> debt,
}) {
  final stale = <String>[];
  for (final tfType in debt) {
    final override = overrides[tfType];
    if (override == null) {
      stale.add(tfType);
      continue;
    }
    final wouldViolate = lintMigrateShapes(
      tfType,
      override,
      MigrateShapeLintInput(context: context),
    ).any((v) => v.rule == 'migrate-shape-underivable');
    if (!wouldViolate) stale.add(tfType);
  }
  stale.sort();
  return stale;
}

/// Flags `customSlots` entries the emitter can never emit.
///
/// The emitter resolves [WrapperOverride.paramOrder] (constructor side) and
/// [WrapperOverride.argMapOrder] (argMap side, falling back to `paramOrder`)
/// names against [WrapperOverride.customSlots] first; a slot key absent from
/// the relevant list is silently skipped, leaving the declared
/// `paramDeclaration` / `argMapEntry` as dead config and any prelude helper
/// types as unreachable public API.
///
/// - `custom-slot-missing-param-order` — customSlots present but the
///   override omits `paramOrder` entirely. IR-natural ordering can only
///   resolve IR-derived names, so virtual slots are guaranteed dropped;
///   overrides that use customSlots must spell out `paramOrder`.
/// - `custom-slot-not-in-param-order` — a slot key is missing from
///   `paramOrder`, so no constructor parameter is emitted for it.
/// - `custom-slot-not-in-arg-map-order` — `argMapOrder` is set but omits a
///   slot key, so the constructor parameter exists while its argMap entry is
///   dropped (the generated wrapper would silently ignore the argument).
List<LintViolation> lintDeadCustomSlots(
  String tfType,
  WrapperOverride override,
) {
  final slots = override.customSlots;
  if (slots == null || slots.isEmpty) return const [];

  final paramOrder = override.paramOrder;
  if (paramOrder == null) {
    return [
      LintViolation(
        tfType: tfType,
        rule: 'custom-slot-missing-param-order',
        detail: 'customSlots [${slots.keys.join(', ')}] are declared but '
            'paramOrder is omitted. The emitter only resolves customSlots '
            'through paramOrder/argMapOrder names, so virtual slots are '
            'silently dropped from the generated constructor. Declare '
            'paramOrder listing every slot key.',
      ),
    ];
  }

  final violations = <LintViolation>[];
  final argMapOrder = override.argMapOrder;
  for (final key in slots.keys) {
    if (!paramOrder.contains(key)) {
      violations.add(LintViolation(
        tfType: tfType,
        rule: 'custom-slot-not-in-param-order',
        detail: 'customSlots["$key"] is not listed in paramOrder, so the '
            'emitter silently skips it: the generated constructor has no '
            'matching parameter and the argMapEntry is dead config. Add '
            '"$key" to paramOrder (and argMapOrder when set) or delete the '
            'slot and its prelude helper types.',
      ));
    } else if (argMapOrder != null && !argMapOrder.contains(key)) {
      violations.add(LintViolation(
        tfType: tfType,
        rule: 'custom-slot-not-in-arg-map-order',
        detail: 'customSlots["$key"] is listed in paramOrder but missing '
            'from argMapOrder, so the constructor parameter is emitted while '
            'its argMap entry is dropped — the argument would be silently '
            'ignored at synth time. Add "$key" to argMapOrder.',
      ));
    }
  }
  return violations;
}

/// Normalizes MM `exactly_one_of` groups into canonical sibling sets.
///
/// Magic Modules repeats the same sibling `exactly_one_of` list on each
/// property in the group, and the parser prefixes each member with the
/// declaring property path (e.g. `[aws.aws, aws.oidc, …]`). This helper
/// collapses those duplicates into one sorted set per sibling group
/// (e.g. `[aws, oidc, saml, x509]`).
///
/// Groups that reference a field *inside* a nested block via a list index
/// (e.g. `[network, subnet.0.name]` on `google_vpc_access_connector`) are
/// skipped: those express top-level-property-vs-nested-block exclusivity,
/// not a flat sibling group, and collapsing `subnet.0.name` to its last
/// segment (`name`) would fabricate a bogus `[name, network]` group. The
/// flat-sibling rules this feeds (paramOrder / customSlot fanout) only model
/// flat groups; a nested-block exclusivity needs a different shape.
@visibleForTesting
List<List<String>> canonicalExactlyOneOfGroups(List<List<String>> raw) {
  final seen = <String>{};
  final out = <List<String>>[];
  for (final group in raw) {
    if (group.length < 2) continue;
    // A `.<digits>.` segment marks a list-indexed nested-block field
    // reference, not a declaring-property prefix.
    if (group.any((m) => RegExp(r'\.\d+\.').hasMatch(m))) continue;
    if (group.every((m) => !m.contains('.'))) {
      final sorted = List<String>.from(group)..sort();
      final key = sorted.join(',');
      if (seen.add(key)) out.add(sorted);
      continue;
    }
    final suffixes = <String>{
      for (final m in group) m.contains('.') ? m.split('.').last : m,
    };
    if (suffixes.length < 2 || suffixes.length != group.length) continue;
    final sorted = suffixes.toList()..sort();
    final key = sorted.join(',');
    if (seen.add(key)) out.add(sorted);
  }
  return out;
}

/// Flags MM `exactly_one_of` groups modeled without a sealed virtual slot.
///
/// Phase A5 phase 2: requires [MmResourceOverrides.exactlyOneOfGroups] from
/// the synced MM fixture.
///
/// - `exactly-one-optional-fanout` — top-level MM groups (member names
///   without `.`) exposed as multiple optional member [customSlots].
/// - `exactly-one-paramorder-fanout` — canonical sibling groups with two or
///   more members listed in [WrapperOverride.paramOrder] (the escape hatch
///   when an override omits customSlots and relies on schema-default optional
///   nested blocks).
List<LintViolation> lintExactlyOneMutualExclusion(
  String tfType,
  WrapperOverride override, {
  MmResourceOverrides? mm,
  Set<String> exactlyOneOptionalFanoutDebt = const {},
}) {
  if (mm == null) return const [];

  final violations = <LintViolation>[];
  final slots = override.customSlots ?? const {};
  final paramOrder = override.paramOrder ?? const [];

  for (final group in canonicalExactlyOneOfGroups(mm.exactlyOneOfGroups)) {
    if (exactlyOneOptionalFanoutDebt.contains(tfType)) continue;

    final optionalDirectMemberSlots = _optionalMemberSlots(group, slots);
    if (optionalDirectMemberSlots.length < 2) continue;
    if (_hasSealedVirtualSlot(group, slots)) continue;

    violations.add(
      _exactlyOneViolation(
        tfType: tfType,
        rule: 'exactly-one-optional-fanout',
        group: group,
        detail:
            'this override exposes [${optionalDirectMemberSlots.join(', ')}] as '
            'separate optional customSlots. Model the group as a sealed class '
            'plus one required virtual customSlot that dispatches via '
            '`.blockKey` (see google_cloud_scheduler_job.yaml and '
            'google_firestore_backup_schedule.yaml), or add a reasoned entry to '
            'tool/exactly_one_lint_debt.yaml.',
      ),
    );
  }

  for (final group in canonicalExactlyOneOfGroups(mm.exactlyOneOfGroups)) {
    if (_hasSealedVirtualSlot(group, slots)) continue;

    final optionalDirectMemberSlots = _optionalMemberSlots(group, slots);
    // IR/schema slots only — customSlot keys in paramOrder are curated
    // replacements, not schema-default fanout.
    final schemaSlotsInParamOrder = [
      for (final member in group)
        if (paramOrder.contains(member) && !slots.containsKey(member)) member,
    ];
    if (schemaSlotsInParamOrder.length < 2) continue;
    if (optionalDirectMemberSlots.length >= 2) continue;

    violations.add(
      _exactlyOneViolation(
        tfType: tfType,
        rule: 'exactly-one-paramorder-fanout',
        group: group,
        detail:
            'this override lists [${schemaSlotsInParamOrder.join(', ')}] in '
            'paramOrder as schema-default slots without a sealed virtual '
            'customSlot. Omit those IR member slots from paramOrder and model '
            'the group as a sealed class plus one required virtual customSlot '
            '(see google_cloud_scheduler_job.yaml).',
      ),
    );
  }

  return violations;
}

List<String> _optionalMemberSlots(
  List<String> group,
  Map<String, CustomSlot> slots,
) {
  return [
    for (final member in group)
      if (slots.containsKey(member) &&
          _paramDeclarationIsOptional(slots[member]!.paramDeclaration))
        member,
  ];
}

bool _hasSealedVirtualSlot(List<String> group, Map<String, CustomSlot> slots) {
  return slots.entries.any((entry) {
    if (group.contains(entry.key)) return false;
    final slot = entry.value;
    if (!_paramDeclarationIsRequired(slot.paramDeclaration)) return false;
    // Sealed dispatch is signalled by a dynamic `<slot>.blockKey:` argMap key
    // — used by both nested-block groups (scheduler `target`) and scalar
    // groups where each variant emits one `{blockKey: value}` pair (cert map
    // entry `match`).
    return slot.argMapEntry.contains('.blockKey');
  });
}

LintViolation _exactlyOneViolation({
  required String tfType,
  required String rule,
  required List<String> group,
  required String detail,
}) {
  return LintViolation(
    tfType: tfType,
    rule: rule,
    detail: 'MM YAML declares exactly_one_of on [${group.join(', ')}] but '
        '$detail',
  );
}

bool _paramDeclarationIsOptional(String paramDeclaration) =>
    paramDeclaration.contains('?');

bool _paramDeclarationIsRequired(String paramDeclaration) =>
    paramDeclaration.startsWith('required ');

/// Lints every entry of [overrides], aggregating violations across the
/// registry. Results are ordered by `tfType` (then by rule-discovery order
/// within a type) for deterministic output.
///
/// When [mmByType] is supplied, phase-2 rules (MM-backed) run per entry.
/// Flags [debt] entries that no longer suppress a violation (override was fixed).
List<String> staleExactlyOneOptionalFanoutDebt(
  Map<String, WrapperOverride> overrides, {
  Map<String, MmResourceOverrides>? mmByType,
  required Set<String> debt,
}) {
  final stale = <String>[];
  for (final tfType in debt) {
    final override = overrides[tfType];
    final mm = mmByType?[tfType];
    if (override == null || mm == null) {
      stale.add(tfType);
      continue;
    }
    final wouldViolate = lintExactlyOneMutualExclusion(
      tfType,
      override,
      mm: mm,
      exactlyOneOptionalFanoutDebt: const {},
    ).any((v) => v.rule == 'exactly-one-optional-fanout');
    if (!wouldViolate) stale.add(tfType);
  }
  stale.sort();
  return stale;
}

List<LintViolation> lintOverrides(
  Map<String, WrapperOverride> overrides, {
  Map<String, MmResourceOverrides>? mmByType,
  Set<String> exactlyOneOptionalFanoutDebt = const {},
  MigrateShapeLintInput? migrate,
}) {
  final keys = overrides.keys.toList()..sort();
  return [
    for (final k in keys)
      ...lintOverride(
        k,
        overrides[k]!,
        mm: mmByType?[k],
        exactlyOneOptionalFanoutDebt: exactlyOneOptionalFanoutDebt,
        migrate: migrate,
      ),
  ];
}
