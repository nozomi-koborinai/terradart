/// Dart identifiers for Terraform names.
library;

import 'dart:math' as math;

import 'dart:core';

import 'dart_literal.dart';

/// `orders_push` → `ordersPush`, `my-topic` → `myTopic`, `2fa` → `r2fa`.
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

/// `pubsub_quickstart` → `PubsubQuickstart`.
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

/// `Stack` members and inherited names a migrated Stack's locals must not
/// shadow.
const Set<String> stackMemberNames = {
  'add',
  'addData',
  'addExport',
  'addVariable',
  'addExternalVariable',
  'setAppExportsOutputPath',
  'setRequiredVersion',
  'setBackend',
  'synth',
  'writeTo',
  'providers',
  'backend',
  'resources',
  'dataSources',
  'appExports',
  'variables',
  'externalVariables',
  'requiredVersion',
  'appExportsOutputPath',
  'devMode',
  'runtimeType',
  'hashCode',
  'toString',
  'noSuchMethod',
};

/// Hands out unique Dart local names inside one Stack constructor.
final class NameAllocator {
  final Set<String> _used = {...stackMemberNames};

  /// A unique identifier derived from [base]; on a clash the PascalCase
  /// [suffix] (the resource's type, say) is appended, then a counter.
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

  /// The shortest suffix that distinguishes a Terraform type: the trailing
  /// segments after the provider prefix (`google_pubsub_topic` → `PubsubTopic`).
  static String typeSuffix(String tfType) {
    final parts = tfType.split('_');
    return pascalCase(parts.sublist(math.min(1, parts.length - 1)).join('_'));
  }
}
