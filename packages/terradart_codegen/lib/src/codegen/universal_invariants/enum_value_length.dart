import 'dart:io';

/// Gate 8: every enum value identifier across `terradart_google` must
/// be at least [minLength] characters. Two-letter abbreviations like
/// `.lt`, `.gt`, `.eq`, `.le`, `.ge`, `.ne` are renamed to the
/// verbose-natural form (`.lessThan`, `.greaterThan`, etc.).
///
/// Returns an empty list when all enum values conform.
class EnumValueLength {
  static List<String> scan({
    required String rootDir,
    required int minLength,
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
