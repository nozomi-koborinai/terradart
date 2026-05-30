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
List<LintViolation> lintOverride(String tfType, WrapperOverride override) {
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

  return violations;
}

/// Lints every entry of [overrides], aggregating violations across the
/// registry. Results are ordered by `tfType` (then by rule-discovery order
/// within a type) for deterministic output.
List<LintViolation> lintOverrides(Map<String, WrapperOverride> overrides) {
  final keys = overrides.keys.toList()..sort();
  return [
    for (final k in keys) ...lintOverride(k, overrides[k]!),
  ];
}
