import 'dart:io';

/// Gate 8: every enum value identifier across `terradart_google` should
/// be at least [minLength] characters UNLESS the value is in [allowList].
///
/// The intent is to catch abbreviation-style enum values like `.lt`,
/// `.gt`, `.eq`, `.le`, `.ge`, `.ne` and force the verbose-natural form
/// (`.lessThan`, `.greaterThan`, etc.). However, many short enum
/// identifiers in `terradart_google` are legitimate industry-standard
/// acronyms (`tcp`, `udp`, `ssl`, `ga`, `on`, `off`, etc.) that mirror
/// the Terraform wire value — these should NOT be renamed. The
/// [allowList] excludes them from the violation list.
///
/// Returns an empty list when all enum values conform (i.e. are either
/// >= [minLength] characters OR in the allow-list).
class EnumValueLength {
  static List<String> scan({
    required String rootDir,
    required int minLength,
    Set<String> allowList = const {},
  }) {
    final violations = <String>[];
    final dir = Directory(rootDir);
    if (!dir.existsSync()) return violations;

    final enumRe = RegExp(r'enum\s+(\w+)\s*\{([^}]*)\}', multiLine: true);
    for (final entity in dir.listSync(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) continue;
      final source = entity.readAsStringSync();
      for (final match in enumRe.allMatches(source)) {
        final enumName = match.group(1)!;
        final body = match.group(2)!;
        for (final value in body.split(',')) {
          final trimmed = value.trim().split(RegExp(r'[\s(]')).first;
          if (trimmed.isEmpty) continue;
          if (allowList.contains(trimmed)) continue;
          if (trimmed.length < minLength) {
            violations.add(
              '${entity.path}: enum $enumName.$trimmed (length ${trimmed.length} < $minLength)',
            );
          }
        }
      }
    }
    return violations;
  }
}
