/// One emitted Dart enum: name + member-to-Terraform-value map.
class EmittedEnum {
  const EmittedEnum({required this.name, required this.members});
  final String name;
  final Map<String, String> members;
}

/// Parses Dart source for the enums `renderTerraformEnum` emits (and every
/// `prelude` enum is written as):
///
/// ```text
/// extension type const Foo._(TfArg<String> _) implements TfArg<String> {
///   static const Foo a = Foo._(TfArgLiteral('A'));
///   ...
/// }
/// ```
///
/// Returns one [EmittedEnum] per declaration with at least one member.
class EnumExtractor {
  const EnumExtractor();

  /// Captures (name, body). The body runs to the `values` list every enum
  /// declares after its members.
  static final RegExp _enumBlock = RegExp(
    r'extension\s+type\s+const\s+([A-Z][A-Za-z0-9_]*)\._\(\s*TfArg<String>\s+_\s*,?\s*\)\s+implements\s+TfArg<String>\s*\{(.*?)static\s+const\s+List<\s*\1\s*>\s+values\b',
    dotAll: true,
  );

  /// Within the body, matches each `static const m = Foo._(TfArgLiteral('V'));`,
  /// whitespace-tolerant for `dart_style`'s wrapping of a long member.
  static final RegExp _memberEntry = RegExp(
    r"static\s+const\s+([a-z][a-zA-Z0-9_]*)\s*=\s*([A-Z][A-Za-z0-9_]*)\._\(\s*TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'\s*,?\s*\)\s*,?\s*\)\s*;",
  );

  static final RegExp _escape = RegExp(r'\\(.)');

  static String _unescape(String body) => body.replaceAllMapped(
    _escape,
    (m) => m.group(1) == 'n' ? '\n' : m.group(1)!,
  );

  List<EmittedEnum> extract(String dartSource) {
    final result = <EmittedEnum>[];
    for (final match in _enumBlock.allMatches(dartSource)) {
      final name = match.group(1)!;
      final body = match.group(2)!;
      final members = <String, String>{};
      for (final entry in _memberEntry.allMatches(body)) {
        if (entry.group(2) != name) continue;
        members[entry.group(1)!] = _unescape(entry.group(3)!);
      }
      if (members.isNotEmpty) {
        result.add(EmittedEnum(name: name, members: members));
      }
    }
    return result;
  }
}
