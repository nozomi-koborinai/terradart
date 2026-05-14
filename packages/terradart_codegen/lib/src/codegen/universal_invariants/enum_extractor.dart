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
  const EnumExtractor();

  /// Matches: `enum <Name> { ... }` followed by the const constructor +
  /// terraformValue field. Captures (name, body).
  static final RegExp _enumBlock = RegExp(
    r'enum\s+([A-Z][A-Za-z0-9_]*)\s*\{([^}]*?)const\s+\1\s*\(this\.terraformValue\)\s*;\s*final\s+String\s+terraformValue\s*;',
    dotAll: true,
  );

  /// Within the body, matches each `member('STRING_VALUE')`.
  static final RegExp _memberEntry = RegExp(
    r"([a-z][a-zA-Z0-9_]*)\s*\(\s*'([^']*)'\s*\)",
  );

  List<EmittedEnum> extract(String dartSource) {
    final result = <EmittedEnum>[];
    for (final match in _enumBlock.allMatches(dartSource)) {
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
