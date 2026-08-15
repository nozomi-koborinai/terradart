// ignore_for_file: avoid_print
//
// Regenerates examples/data_source_leftover_quickstart/lib/main.dart from
// the generated data-source wrappers. Run after `terradart wrap`.

import 'dart:io';

const _dataDir = 'packages/terradart_google/lib/src/data';
const _outPath = 'examples/data_source_leftover_quickstart/lib/main.dart';

List<({String dartType, String name})> _requiredCtorParams(String ctor) {
  final out = <({String dartType, String name})>[];
  var i = 0;
  const needle = 'required TfArg<';
  while (true) {
    final start = ctor.indexOf(needle, i);
    if (start < 0) break;
    final typeStart = start + needle.length;
    var depth = 1;
    var j = typeStart;
    while (j < ctor.length && depth > 0) {
      if (ctor[j] == '<') depth++;
      if (ctor[j] == '>') depth--;
      j++;
    }
    final dartType = ctor.substring(typeStart, j - 1);
    final nameMatch = RegExp(r'^\s*(\w+)').firstMatch(ctor.substring(j));
    if (nameMatch == null) {
      throw StateError('required TfArg<$dartType> missing name in: $ctor');
    }
    out.add((dartType: dartType, name: nameMatch.group(1)!));
    i = j;
  }
  return out;
}

void main() {
  final files = Directory(_dataDir)
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  final calls = <String>[];
  final usedLocal = <String>{};

  for (final file in files) {
    final src = file.readAsStringSync();
    final classMatch = RegExp(
      r'final class (\w+)\s+extends Data \{',
    ).firstMatch(src);
    final typeMatch = RegExp(
      r"static const String tfType =\s*'([^']+)';",
    ).firstMatch(src);
    if (classMatch == null || typeMatch == null) {
      throw StateError('unparseable wrapper: ${file.path}');
    }
    final className = classMatch.group(1)!;
    final tfType = typeMatch.group(1)!;
    final localName = _uniqueLocal(tfType, usedLocal);

    final ctorStart = src.indexOf('$className({');
    if (ctorStart < 0) {
      throw StateError('no constructor in ${file.path}');
    }
    final ctorEnd = src.indexOf('})', ctorStart);
    final ctor = src.substring(ctorStart, ctorEnd);
    final args = <String>[];
    for (final param in _requiredCtorParams(ctor)) {
      args.add(
        '      ${param.name}: ${_literal(className, param.name, param.dartType)},',
      );
    }
    final extras = _extraOptionals[className] ?? const {};
    extras.forEach((name, value) {
      args.add('      $name: $value,');
    });

    final buf = StringBuffer()
      ..writeln('    addData(')
      ..writeln('      $className(')
      ..writeln("        localName: '$localName',");
    for (final a in args) {
      buf.writeln(a);
    }
    buf.writeln('      ),');
    buf.writeln('    );');
    calls.add(buf.toString());
  }

  final out = StringBuffer()
    ..writeln(
      '/// Data-source leftover quickstart — remaining GA data sources.',
    )
    ..writeln('///')
    ..writeln(
      '/// Skip-listed; synth + `terraform validate` only. Do not apply.',
    )
    ..writeln('library;')
    ..writeln()
    ..writeln("import 'package:terradart_core/terradart_core.dart';")
    ..writeln("import 'package:terradart_google/data.dart';")
    ..writeln("import 'package:terradart_google/provider.dart';")
    ..writeln()
    ..writeln('final class DataSourceLeftoverStack extends Stack {')
    ..writeln('  DataSourceLeftoverStack({required String projectId})')
    ..writeln('      : super(')
    ..writeln('          providers: [')
    ..writeln(
      "            GoogleProvider(project: projectId, region: 'us-central1'),",
    )
    ..writeln('          ],')
    ..writeln('        ) {')
    ..writeln('    // Dummy ids only — this stack is never applied.')
    ..writeln("    const leftover = 'terradart-leftover';")
    ..writeln(
      "    final saEmail = 'terradart@\$projectId.iam.gserviceaccount.com';",
    )
    ..writeln(
      "    final saId = 'projects/\$projectId/serviceAccounts/\$saEmail';",
    )
    ..writeln('    final kmsVersion =')
    ..writeln(
      "        'projects/\$projectId/locations/us-central1/keyRings/terradart/'",
    )
    ..writeln("        'cryptoKeys/terradart/cryptoKeyVersions/1';")
    ..writeln();
  for (final call in calls) {
    out.writeln(call);
  }
  out.writeln('  }');
  out.writeln('}');

  File(_outPath).writeAsStringSync(out.toString());
  print('wrote $_outPath (${calls.length} data sources)');
}

String _uniqueLocal(String tfType, Set<String> used) {
  var name = tfType.startsWith('google_')
      ? tfType.substring('google_'.length)
      : tfType;
  if (name.length > 48) {
    name = name.substring(0, 48);
  }
  var candidate = name;
  var n = 2;
  while (used.contains(candidate)) {
    candidate = '${name}_$n';
    n++;
  }
  used.add(candidate);
  return candidate;
}

/// Optional slots terraform validate still requires (exactly-one groups,
/// schema-required fields the Dart wrapper left optional).
const _extraOptionals = <String, Map<String, String>>{
  'DataGoogleComputeImage': {'name': 'TfArg.literal(leftover)'},
  'DataGoogleComputeInstanceTemplate': {'name': 'TfArg.literal(leftover)'},
  'DataGoogleComputeRegionInstanceTemplate': {
    'name': 'TfArg.literal(leftover)',
  },
  'DataGoogleComputeSnapshot': {'name': 'TfArg.literal(leftover)'},
  'DataGoogleDiscoveryEngineDataStore': {
    'dataStoreId': 'TfArg.literal(leftover)',
  },
};

String _literal(String className, String name, String dartType) {
  if (name == 'project' || name == 'projectId') {
    return 'TfArg.literal(projectId)';
  }
  if (name == 'network') {
    return "TfArg.literal('projects/\$projectId/global/networks/terradart')";
  }
  if (name == 'ciphertext') {
    return "TfArg.literal('dGVycmFkYXJ0')";
  }
  if (name == 'cryptoKeyVersion') {
    return 'TfArg.literal(kmsVersion)';
  }
  if (name == 'targetServiceAccount') {
    return 'TfArg.literal(saEmail)';
  }
  if (name == 'serviceAccountId') {
    return 'TfArg.literal(saId)';
  }
  if (name == 'managedFolder') {
    return "TfArg.literal('terradart-leftover/')";
  }
  if (name == 'type' && className.contains('SiteVerification')) {
    return "TfArg.literal('INET_DOMAIN')";
  }
  if (name == 'verificationMethod') {
    return "TfArg.literal('DNS_TXT')";
  }
  if (name == 'name' && className == 'DataGoogleServiceAccountKey') {
    return "TfArg.literal('\$saId/keys/1')";
  }
  if (dartType.startsWith('List<String>')) {
    return 'TfArg.literal([leftover])';
  }
  if (dartType.startsWith('List<')) {
    return "TfArg.literal([<String, dynamic>{'id': leftover}])";
  }
  if (dartType.startsWith('Map<String, String>')) {
    return "TfArg.literal(<String, String>{'k': leftover})";
  }
  if (dartType.startsWith('Map<')) {
    return "TfArg.literal(<String, dynamic>{'id': leftover})";
  }
  if (dartType == 'bool') {
    return 'TfArg.literal(false)';
  }
  if (dartType == 'int' || dartType == 'num' || dartType == 'double') {
    return 'TfArg.literal(1)';
  }
  return 'TfArg.literal(leftover)';
}
