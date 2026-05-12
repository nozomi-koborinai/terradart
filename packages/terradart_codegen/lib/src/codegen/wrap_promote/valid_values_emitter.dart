/// Emits a Dart enum + commented `dartTypeOverrides` entry for one
/// MM-derived `enum_values` field.
///
/// Phase 4.3: full generation. The enum is ready to copy into the main yaml
/// `prelude`; the `dartTypeOverrides` entry is commented out for the
/// reviewer to uncomment + integrate. Naming uses a
/// `<ResourcePascal><FieldPascal>` placeholder — the reviewer renames to a
/// domain-appropriate name.
class ValidValuesEmitter {
  const ValidValuesEmitter();

  /// Returns a multi-line string (terminated by `\n`) ready to embed in the
  /// wrap-promote additions section.
  String emit({
    required String fieldName,
    required List<String> enumValues,
    required String resourcePascal,
  }) {
    if (enumValues.length < 2) {
      // Not worth an enum — caller skips this field, but if invoked anyway,
      // emit a noisy comment so the reviewer sees what happened.
      return '# Skipped enum for "$fieldName": fewer than 2 values.\n';
    }

    final enumName = '$resourcePascal${_snakeToPascal(fieldName)}';
    final camelByValue = <String, String>{
      for (final v in enumValues) v: _snakeToCamel(v),
    };

    final buf = StringBuffer();
    buf.writeln('# --- validValues: $fieldName ---');
    buf.writeln(
        '# TODO(wrap-promote): rename `$enumName` to a domain-appropriate name.');
    buf.writeln('prelude: |');
    buf.writeln('  enum $enumName {');
    for (var i = 0; i < enumValues.length; i++) {
      final camel = camelByValue[enumValues[i]]!;
      final isLast = i == enumValues.length - 1;
      buf.writeln('    $camel${isLast ? ';' : ','}');
    }
    buf.writeln();
    buf.writeln('    String get terraformValue {');
    buf.writeln('      switch (this) {');
    for (final v in enumValues) {
      final camel = camelByValue[v]!;
      buf.writeln("        case $enumName.$camel: return '$v';");
    }
    buf.writeln('      }');
    buf.writeln('    }');
    buf.writeln('  }');
    buf.writeln();
    buf.writeln(
        '# dartTypeOverrides entry (uncomment + integrate into the main yaml):');
    buf.writeln('# dartTypeOverrides:');
    buf.writeln('#   $fieldName: $enumName');
    return buf.toString();
  }

  String _snakeToPascal(String snake) {
    return snake
        .split('_')
        .map((String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1))
        .join();
  }

  String _snakeToCamel(String snake) {
    final parts = snake.split('_');
    if (parts.isEmpty) return snake;
    final head = parts.first.toLowerCase();
    final tail = parts
        .skip(1)
        .map((String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1))
        .join();
    return head + tail;
  }
}
