import 'providers/provider_registry.dart';
import 'wrapper_overrides/wrapper_override.dart';

String snakeToCamel(String s) {
  final parts = s.split('_');
  if (parts.isEmpty) return s;
  final buf = StringBuffer(parts.first);
  for (var i = 1; i < parts.length; i++) {
    final p = parts[i];
    if (p.isEmpty) continue;
    buf
      ..write(p[0].toUpperCase())
      ..write(p.substring(1));
  }
  return buf.toString();
}

String snakeToPascal(String s) {
  final c = snakeToCamel(s);
  return c.isEmpty ? c : '${c[0].toUpperCase()}${c.substring(1)}';
}

String dataSourceClassName(String terraformType) =>
    'Data${snakeToPascal(terraformType)}';

String terraformAbstractClassName(String terraformType) =>
    '\$${snakeToPascal(terraformType)}';

String nestedAbstractClassName(String nestedName) =>
    '\$${snakeToPascal(nestedName)}';

String resourceFileName(String terraformType) => '$terraformType.dart';

class EnumName {
  final String dartName;
  final List<String> dartMembers;
  final List<String> rawValues;
  final String fieldPath;
  const EnumName({
    required this.dartName,
    required this.dartMembers,
    required this.rawValues,
    required this.fieldPath,
  });
}

String shortResourcePascal(String terraformType, {Iterable<String>? prefixes}) {
  final known =
      (prefixes ??
              [
                for (final rules in providerRulesById.values)
                  rules.terraformTypePrefix,
              ])
          .toList()
        ..sort((a, b) => b.length.compareTo(a.length));
  var short = terraformType;
  for (final prefix in known) {
    if (prefix.isNotEmpty && short.startsWith(prefix)) {
      short = short.substring(prefix.length);
      break;
    }
  }
  return snakeToPascal(short);
}

extension WrapperOverrideKindNames on WrapperOverrideKind {
  String typeStem(String terraformType) => switch (this) {
    WrapperOverrideKind.resource => shortResourcePascal(terraformType),
    WrapperOverrideKind.dataSource =>
      'Data${shortResourcePascal(terraformType)}',
  };

  String label(String terraformType) => switch (this) {
    WrapperOverrideKind.resource => terraformType,
    WrapperOverrideKind.dataSource => 'data.$terraformType',
  };
}

EnumName enumName({
  required String resourceType,
  required String fieldPath,
  required List<String> members,
  String? dartName,
}) {
  final leaf = fieldPath.split('.').last;
  final leafPascal = snakeToPascal(leaf);
  final dartMembers = enumMemberNames(members);
  return EnumName(
    dartName: dartName ?? '${shortResourcePascal(resourceType)}$leafPascal',
    dartMembers: dartMembers,
    rawValues: List<String>.from(members),
    fieldPath: fieldPath,
  );
}

String screamingToCamel(String screaming) {
  final parts = screaming.toLowerCase().replaceAll('-', '_').split('_');
  final camel = snakeToCamel(parts.join('_'));
  return safeDartIdentifier(camel);
}

List<String> enumMemberNames(List<String> values) {
  final taken = <String>{};
  final out = <String>[];
  for (final value in values) {
    final legacy = screamingToCamel(value);
    var name = _isUsableMember(legacy) ? legacy : _fallbackMemberName(value);
    if (taken.contains(name)) {
      final base = name;
      var n = 2;
      while (taken.contains('$base$n')) {
        n++;
      }
      name = '$base$n';
    }
    taken.add(name);
    out.add(name);
  }
  return out;
}

final RegExp _memberPattern = RegExp(r'^[a-z][a-zA-Z0-9]*$');

bool _isUsableMember(String name) =>
    _memberPattern.hasMatch(name) && !_enumReservedMembers.contains(name);

const Set<String> _enumReservedMembers = {
  'override',
  'values',
  'index',
  'hashCode',
  'runtimeType',
  'toString',
  'noSuchMethod',
  'terraformValue',
  'variable',
  'expression',
  'arg',
  'toTfJson',
};

const Map<String, String> _operatorMembers = {
  '<': 'lt',
  '<=': 'lte',
  '=': 'eq',
  '==': 'eq',
  '>': 'gt',
  '>=': 'gte',
  '!=': 'ne',
};

String _fallbackMemberName(String value) {
  if (value.isEmpty) return 'empty';
  final op = _operatorMembers[value.trim()];
  if (op != null) return op;

  final words = <String>[];
  final run = RegExp(r'[A-Za-z0-9]+');
  var previousEnd = -1;
  for (final m in run.allMatches(value)) {
    final word = m.group(0)!.toLowerCase();
    if (words.isNotEmpty &&
        _isDigit(value[previousEnd - 1]) &&
        _isDigit(word[0])) {
      final separator = value.substring(previousEnd, m.start);
      words[words.length - 1] += separator == '.' ? 'p' : 'x';
      words[words.length - 1] += word;
    } else {
      words.add(word);
    }
    previousEnd = m.end;
  }
  if (words.isEmpty) return 'value';

  final buf = StringBuffer(words.first);
  for (final w in words.skip(1)) {
    buf
      ..write(w[0].toUpperCase())
      ..write(w.substring(1));
  }
  var name = buf.toString();
  if (_isDigit(name[0])) name = 'v$name';
  if (_dartReservedWords.contains(name) ||
      _enumReservedMembers.contains(name)) {
    name = '${name}Case';
  }
  return name;
}

bool _isDigit(String ch) {
  final c = ch.codeUnitAt(0);
  return c >= 0x30 && c <= 0x39;
}

String dartSingleQuotedBody(String raw) => raw
    .replaceAll(r'\', r'\\')
    .replaceAll("'", r"\'")
    .replaceAll(r'$', r'\$')
    .replaceAll('\n', r'\n');

String snakeToDartIdent(String snake) =>
    safeDartIdentifier(snakeToCamel(snake));

String safeDartIdentifier(String ident) =>
    _dartReservedWords.contains(ident) ? '${ident}Case' : ident;

const Set<String> _dartReservedWords = {
  'assert',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',
};
