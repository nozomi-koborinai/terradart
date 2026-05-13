/// Emits a Dart enum body (2-space indented) for one MM-derived
/// `enum_values` field. Phase 4.5.1 split: the emitter returns ONLY the
/// enum body; [WrapPromoteGenerator] aggregates all bodies into a single
/// `prelude: |` block and emits a single `# dartTypeOverrides:` snippet.
class ValidValuesEmitter {
  const ValidValuesEmitter();

  /// Returns one Dart enum BODY (header comment + `enum X { ... }`) for
  /// one MM `enum_values` field. The output is meant to be embedded
  /// inside a single `prelude: |` block emitted by
  /// [WrapPromoteGenerator], NOT the emitter (Phase 4.5.1 split). The
  /// returned string is indented by 2 spaces (`prelude: |2` convention),
  /// terminated by `\n`.
  String emit({
    required String fieldName,
    required List<String> enumValues,
    required String resourcePascal,
  }) {
    if (enumValues.length < 2) {
      return '  # Skipped enum for "$fieldName": fewer than 2 values.\n';
    }

    final leaf = _leafFieldName(fieldName);
    final enumName = '$resourcePascal${_snakeToPascal(leaf)}';
    final camelByValue = <String, String>{
      for (final v in enumValues) v: _safeIdentifier(_snakeToCamel(v)),
    };

    final buf = StringBuffer();
    buf.writeln('  # --- validValues: $leaf ---');
    buf.writeln(
        '  # TODO(wrap-promote): rename `$enumName` to a domain-appropriate name.');
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
    return buf.toString();
  }

  /// Public name for the leaf-field utility so callers (WrapPromoteGenerator)
  /// can map an MM path to the dartTypeOverrides key without re-implementing
  /// the rule.
  String leafFieldName(String fieldPath) => _leafFieldName(fieldPath);

  /// Public name for the Pascal-cased enum-name utility (resource +
  /// leaf-field), used by WrapPromoteGenerator when emitting the
  /// dartTypeOverrides snippet.
  String enumNameFor({
    required String fieldName,
    required String resourcePascal,
  }) {
    return '$resourcePascal${_snakeToPascal(_leafFieldName(fieldName))}';
  }

  String _snakeToPascal(String snake) {
    return snake
        .split('_')
        .map((String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1))
        .join();
  }

  String _snakeToCamel(String snake) {
    final parts = snake.toLowerCase().split('_');
    if (parts.isEmpty) return snake;
    final head = parts.first;
    final tail = parts
        .skip(1)
        .map((String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1))
        .join();
    return head + tail;
  }

  /// Dart keywords + built-in identifiers that cannot be used as enum
  /// member names. Source: Dart language spec (reserved words +
  /// built-in identifiers used in contexts where collision causes parse
  /// errors). When an enum value's camelCase rendering collides with one
  /// of these, [_safeIdentifier] appends a `Case` suffix.
  static const Set<String> _dartReservedWords = {
    'abstract',
    'as',
    'assert',
    'async',
    'await',
    'break',
    'case',
    'catch',
    'class',
    'const',
    'continue',
    'covariant',
    'default',
    'deferred',
    'do',
    'dynamic',
    'else',
    'enum',
    'export',
    'extends',
    'extension',
    'external',
    'factory',
    'false',
    'final',
    'finally',
    'for',
    'get',
    'hide',
    'if',
    'implements',
    'import',
    'in',
    'interface',
    'is',
    'late',
    'library',
    'mixin',
    'new',
    'null',
    'on',
    'operator',
    'part',
    'required',
    'rethrow',
    'return',
    'sealed',
    'set',
    'show',
    'static',
    'super',
    'switch',
    'sync',
    'this',
    'throw',
    'true',
    'try',
    'typedef',
    'var',
    'void',
    'when',
    'while',
    'with',
    'yield',
  };

  /// Returns [camel] verbatim unless it's a Dart reserved word, in which
  /// case appends `Case`. Phase 4.5.1 observed `default` only (from
  /// `enum_values: ['DEFAULT', 'ADD_COST_TO_MED']`); the set above covers
  /// the rest of the Dart spec proactively.
  static String _safeIdentifier(String camel) =>
      _dartReservedWords.contains(camel) ? '${camel}Case' : camel;

  /// Returns the leaf segment of a dotted MM nested path. For top-level
  /// fields (no dots) returns the input unchanged. The wrap-promote
  /// caller passes `mm.fieldOverrides` keys, which use the MM YAML's
  /// nested-property hierarchy (e.g. `routing_config.routing_mode`), but
  /// the Terraform schema is flat — the leaf segment is what the
  /// `dartTypeOverrides` map keys on, and what the generated Dart enum
  /// is named after.
  static String _leafFieldName(String fieldPath) {
    final dot = fieldPath.lastIndexOf('.');
    return dot < 0 ? fieldPath : fieldPath.substring(dot + 1);
  }
}
