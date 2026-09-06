/// One emitted Dart enum: name + member-to-terraformValue map.
class EmittedEnum {
  const EmittedEnum({required this.name, required this.members});
  final String name;
  final Map<String, String> members;
}

/// Parses Dart source for `enum Foo { a('A'), b('B'); const Foo(this.terraformValue);
/// final String terraformValue; }` blocks via regex. Returns one [EmittedEnum]
/// per `enum` keyword found whose body matches the convention.
///
/// Conservative: an enum without the `String terraformValue` getter is
/// skipped (it isn't using the project's convention, so Gate 3 / Gate 5
/// don't apply to it).
class EnumExtractor {
  /// The universal-invariant scanner: canonical shapes only.
  const EnumExtractor() : _lenient = false;

  /// Also accepts the hand-curated `@override` form and a wrapped
  /// constructor. Used by the migration manifest, which must see every
  /// `TerraformEnum` a wrapper file declares; the invariant gates keep the
  /// strict matcher so their accepted set does not change silently.
  const EnumExtractor.lenient() : _lenient = true;

  final bool _lenient;

  /// Matches: `enum <Name> [implements TerraformEnum] { ... }` followed by
  /// the const constructor + terraformValue field. Captures (name, body).
  ///
  /// The optional `implements TerraformEnum` group allows hand-curated
  /// enums authored before v0.11.0 (ADR-0016) — which carry the
  /// `const X(this.terraformValue)` constructor + `final String
  /// terraformValue` field but no `implements` clause — to still match
  /// against this scanner. The canonical post-v0.11 shape always carries
  /// the clause.
  static final RegExp _enumBlock = RegExp(
    r'enum\s+([A-Z][A-Za-z0-9_]*)(?:\s+implements\s+TerraformEnum)?\s*\{([^}]*?)const\s+\1\s*\(this\.terraformValue\)\s*;\s*final\s+String\s+terraformValue\s*;',
    dotAll: true,
  );

  /// [EnumExtractor.lenient]'s block matcher: additionally accepts an
  /// `@override` before `final String terraformValue` (hand-curated enums
  /// that annotate the interface member) and whitespace / a trailing comma
  /// inside `(this.terraformValue)` (a `dart_style`-wrapped constructor of
  /// a long enum name).
  static final RegExp _lenientEnumBlock = RegExp(
    r'enum\s+([A-Z][A-Za-z0-9_]*)(?:\s+implements\s+TerraformEnum)?\s*\{([^}]*?)const\s+\1\s*\(\s*this\.terraformValue\s*,?\s*\)\s*;\s*(?:@override\s+)?final\s+String\s+terraformValue\s*;',
    dotAll: true,
  );

  /// Within the body, matches each `member('STRING_VALUE')`. The optional
  /// trailing comma + whitespace before `)` handles Dart format's multi-line
  /// member style: `name(\n    'LONG_VALUE',\n  )`.
  static final RegExp _memberEntry = RegExp(
    r"([a-z][a-zA-Z0-9_]*)\s*\(\s*'([^']*)'\s*,?\s*\)",
  );

  List<EmittedEnum> extract(String dartSource) {
    final result = <EmittedEnum>[];
    final block = _lenient ? _lenientEnumBlock : _enumBlock;
    for (final match in block.allMatches(dartSource)) {
      final name = match.group(1)!;
      final body = match.group(2)!;
      final members = <String, String>{};
      for (final entry in _memberEntry.allMatches(body)) {
        final memberName = entry.group(1)!;
        final terraformValue = entry.group(2)!;
        members[memberName] = terraformValue;
      }
      if (members.isNotEmpty) {
        result.add(EmittedEnum(name: name, members: members));
      }
    }
    return result;
  }
}
