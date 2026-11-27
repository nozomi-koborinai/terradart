/// Dart identifiers for Terraform names.
library;

import 'dart:math' as math;

import 'dart:core';

import 'dart_literal.dart';

String lowerCamel(String name) {
  final parts = name
      .split(RegExp(r'[^A-Za-z0-9]+'))
      .where((p) => p.isNotEmpty)
      .toList();
  if (parts.isEmpty) return 'x';
  final buf = StringBuffer(
    parts.first.toLowerCase() == parts.first
        ? parts.first
        : parts.first[0].toLowerCase() + parts.first.substring(1),
  );
  for (final p in parts.skip(1)) {
    buf.write(p[0].toUpperCase());
    buf.write(p.substring(1));
  }
  var out = buf.toString();
  if (RegExp(r'^[0-9]').hasMatch(out)) out = 'r$out';
  return out;
}

String pascalCase(String name) {
  final parts = name
      .split(RegExp(r'[^A-Za-z0-9]+'))
      .where((p) => p.isNotEmpty)
      .toList();
  if (parts.isEmpty) return 'X';
  final buf = StringBuffer();
  for (final p in parts) {
    buf.write(p[0].toUpperCase());
    buf.write(p.substring(1));
  }
  var out = buf.toString();
  if (RegExp(r'^[0-9]').hasMatch(out)) out = 'X$out';
  return out;
}

/// [name] as a Dart identifier in snake_case.
String snakeCase(String name) {
  final buf = StringBuffer();
  for (var i = 0; i < name.length; i++) {
    final c = name[i];
    final isUpper = c.toUpperCase() == c && c.toLowerCase() != c;
    if (isUpper && i > 0 && buf.isNotEmpty && !buf.toString().endsWith('_')) {
      buf.write('_');
    }
    buf.write(RegExp(r'[A-Za-z0-9]').hasMatch(c) ? c.toLowerCase() : '_');
  }
  var out = buf.toString().replaceAll(RegExp(r'_+'), '_');
  out = out.replaceAll(RegExp(r'^_|_$'), '');
  if (out.isEmpty) out = 'stack';
  if (RegExp(r'^[0-9]').hasMatch(out)) out = 'm_$out';
  return out;
}

const Set<String> stackMemberNames = {
  'add',
  'addOutput',
  'addConstant',
  'variable',
  'externalVariable',
  'addExternalBlock',
  'addMoved',
  'addModule',
  'addProvider',
  'moved',
  'modules',
  'synth',
  'writeTo',
  'providers',
  'backend',
  'resources',
  'dataSources',
  'appExports',
  'variables',
  'externalVariables',
  'externalBlocks',
  'validate',
  'outputEnvironment',
  'addDartDefineOutput',
  'dartDefineOutputs',
  'requiredVersion',
  'outputs',
  'constants',
  'runtimeType',
  'hashCode',
  'toString',
  'noSuchMethod',
};

final class NameAllocator {
  NameAllocator({Set<String> reserved = const {}}) {
    _used.addAll(reserved);
  }

  final Set<String> _used = {...stackMemberNames};

  String allocate(String base, {required String suffix}) {
    var candidate = lowerCamel(base);
    if (!isDartIdentifier(candidate) || _used.contains(candidate)) {
      candidate = lowerCamel(base) + pascalCase(suffix);
    }
    if (!isDartIdentifier(candidate)) candidate = '${candidate}Res';
    var attempt = candidate;
    var n = 2;
    while (_used.contains(attempt)) {
      attempt = '$candidate${n++}';
    }
    _used.add(attempt);
    return attempt;
  }

  static String typeSuffix(String tfType) {
    final parts = tfType.split('_');
    return pascalCase(parts.sublist(math.min(1, parts.length - 1)).join('_'));
  }
}
