import '../enum_emitter.dart';

class ValidValuesEmitter {
  const ValidValuesEmitter();

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
      '  # TODO(wrap-promote): rename `$enumName` to a domain-appropriate name.',
    );
    final members = [for (final v in enumValues) camelByValue[v]!];
    final body = renderTerraformEnum(
      doc: '`$leaf` values.',
      name: enumName,
      members: members,
      rawValues: enumValues,
    );
    for (final line in body.trimRight().split('\n')) {
      buf.writeln(line.isEmpty ? '' : '  $line');
    }
    return buf.toString();
  }

  String leafFieldName(String fieldPath) => _leafFieldName(fieldPath);

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

  static String _safeIdentifier(String camel) =>
      _dartReservedWords.contains(camel) || _enumMemberNames.contains(camel)
      ? '${camel}Case'
      : camel;

  static const Set<String> _enumMemberNames = {
    'values',
    'variable',
    'expression',
    'arg',
    'toTfJson',
  };

  static String _leafFieldName(String fieldPath) {
    final dot = fieldPath.lastIndexOf('.');
    return dot < 0 ? fieldPath : fieldPath.substring(dot + 1);
  }
}
