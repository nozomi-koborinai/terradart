import 'package:meta/meta.dart';

import '../parser/mm_yaml_parser.dart';
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
/// Phase-1 rules (both decidable from [WrapperOverride] fields alone, no
/// schema/MM/IR load):
///
/// - (a) `deriveClassDoc == true && classDocComment != null`: the emitter uses
///   the derived doc (A4 precedence), so `classDocComment` is dead.
/// - (d) `curatedDoc != null && deriveClassDoc == false`: `curatedDoc` is only
///   emitted when `deriveClassDoc` is on, so it is dead.
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
}) {
  final violations = <LintViolation>[];

  if (override.deriveClassDoc && override.classDocComment != null) {
    violations.add(LintViolation(
      tfType: tfType,
      rule: 'derive-class-doc-dead-classdoccomment',
      detail: 'deriveClassDoc is true but classDocComment is still set. The '
          'emitter uses the derived doc, so classDocComment is dead config. '
          'Remove classDocComment (move any artisanal prose to curatedDoc).',
    ));
  }

  if (override.curatedDoc != null && !override.deriveClassDoc) {
    violations.add(LintViolation(
      tfType: tfType,
      rule: 'curated-doc-without-derive-class-doc',
      detail: 'curatedDoc is set but deriveClassDoc is false. curatedDoc is '
          'only emitted when deriveClassDoc is true, so it is dead config. '
          'Set deriveClassDoc: true or remove curatedDoc.',
    ));
  }

  violations.addAll(
    lintExactlyOneMutualExclusion(
      tfType,
      override,
      mm: mm,
      exactlyOneOptionalFanoutDebt: exactlyOneOptionalFanoutDebt,
    ),
  );

  return violations;
}

/// Normalizes MM `exactly_one_of` groups into canonical sibling sets.
///
/// Magic Modules repeats the same sibling `exactly_one_of` list on each
/// property in the group, and the parser prefixes each member with the
/// declaring property path (e.g. `[aws.aws, aws.oidc, …]`). This helper
/// collapses those duplicates into one sorted set per sibling group
/// (e.g. `[aws, oidc, saml, x509]`).
@visibleForTesting
List<List<String>> canonicalExactlyOneOfGroups(List<List<String>> raw) {
  final seen = <String>{};
  final out = <List<String>>[];
  for (final group in raw) {
    if (group.length < 2) continue;
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
    return _paramDeclarationIsRequired(slot.paramDeclaration) &&
        slot.argMapEntry.contains('.blockKey');
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
}) {
  final keys = overrides.keys.toList()..sort();
  return [
    for (final k in keys)
      ...lintOverride(
        k,
        overrides[k]!,
        mm: mmByType?[k],
        exactlyOneOptionalFanoutDebt: exactlyOneOptionalFanoutDebt,
      ),
  ];
}
