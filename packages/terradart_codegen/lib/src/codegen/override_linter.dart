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
    lintExactlyOneMutualExclusion(tfType, override, mm: mm),
  );

  return violations;
}

/// Flags MM `exactly_one_of` groups modeled as multiple optional member
/// [customSlots] instead of a sealed virtual slot.
///
/// Phase A5 phase 2: requires [MmResourceOverrides.exactlyOneOfGroups] from
/// the synced MM fixture. Top-level groups only (member names without `.`).
List<LintViolation> lintExactlyOneMutualExclusion(
  String tfType,
  WrapperOverride override, {
  MmResourceOverrides? mm,
}) {
  if (mm == null) return const [];

  final violations = <LintViolation>[];
  final slots = override.customSlots ?? const {};

  for (final group in mm.exactlyOneOfGroups) {
    if (group.length < 2) continue;
    if (!group.every((m) => !m.contains('.'))) continue;

    final optionalDirectMemberSlots = <String>[
      for (final member in group)
        if (slots.containsKey(member) &&
            _paramDeclarationIsOptional(slots[member]!.paramDeclaration))
          member,
    ];
    if (optionalDirectMemberSlots.length < 2) continue;

    final hasSealedVirtualSlot = slots.entries.any((entry) {
      if (group.contains(entry.key)) return false;
      final slot = entry.value;
      return _paramDeclarationIsRequired(slot.paramDeclaration) &&
          slot.argMapEntry.contains('.blockKey');
    });
    if (hasSealedVirtualSlot) continue;

    violations.add(LintViolation(
      tfType: tfType,
      rule: 'exactly-one-optional-fanout',
      detail: 'MM YAML declares exactly_one_of on [${group.join(', ')}] but '
          'this override exposes [${optionalDirectMemberSlots.join(', ')}] as '
          'separate optional customSlots. Model the group as a sealed class '
          'plus one required virtual customSlot that dispatches via '
          '`.blockKey` (see google_cloud_scheduler_job.yaml and '
          'google_firestore_backup_schedule.yaml).',
    ));
  }

  return violations;
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
List<LintViolation> lintOverrides(
  Map<String, WrapperOverride> overrides, {
  Map<String, MmResourceOverrides>? mmByType,
}) {
  final keys = overrides.keys.toList()..sort();
  return [
    for (final k in keys) ...lintOverride(k, overrides[k]!, mm: mmByType?[k]),
  ];
}
