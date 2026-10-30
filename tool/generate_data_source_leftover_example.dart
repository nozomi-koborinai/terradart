// Renders examples/data_source_leftover_quickstart/lib/main.dart from the
// generated data-source wrappers, for tool/coverage_stack.dart, which writes
// and validates it. Literal values live in tool/coverage_dummies/google.yaml.

import 'dart:io';

import 'catalog_class_names.dart';
import 'coverage_dummies.dart';
import 'coverage_stack.dart';

const _dataDir = 'packages/terradart_google/lib/src/data';

/// The constructor's required `TfArg<T>`, `Sensitive<T>` and `RefTo<T>`
/// parameters, in order; [ref] marks a `RefTo`.
List<({String dartType, String name, bool ref, bool sensitive})>
_requiredCtorParams(String ctor) {
  final out = <({String dartType, String name, bool ref, bool sensitive})>[];
  final start = RegExp(r'required (TfArg|RefTo|Sensitive)<');
  var i = 0;
  while (true) {
    final m = start.firstMatch(ctor.substring(i));
    if (m == null) break;
    final typeStart = i + m.end;
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
      throw StateError(
        'required ${m.group(1)}<$dartType> missing name in: $ctor',
      );
    }
    out.add((
      dartType: m.group(1) == 'RefTo' ? 'String' : dartType,
      name: nameMatch.group(1)!,
      ref: m.group(1) == 'RefTo',
      sensitive: m.group(1) == 'Sensitive',
    ));
    i = j;
  }
  return out;
}

/// The google lane's coverage stack: one call per catalogued GA data source.
const googleDataSourceStack = _GoogleDataSourceStack();

final class _GoogleDataSourceStack implements CoverageStackGenerator {
  const _GoogleDataSourceStack();

  @override
  String get slug => 'data_source_leftover';

  @override
  Set<String> get bindings => const {
    'projectId',
    'saEmail',
    'saId',
    'kmsVersion',
    'leftover',
  };

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    final catalogued = catalogClassNames('packages/terradart_google/lib/src');
    final files =
        Directory(_dataDir)
            .listSync()
            .whereType<File>()
            .where((f) => f.path.endsWith('.dart'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    final calls = <String>[];
    final usedLocal = <String>{};
    final unplaceable = <String, String>{};

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
      if (!catalogued.contains(className) || exclude.contains(className)) {
        continue;
      }
      final tfType = typeMatch.group(1)!;

      final ctorStart = src.indexOf(
        RegExp('${RegExp.escape(className)}\\(\\s*super\\.localName, \\{'),
      );
      if (ctorStart < 0) {
        throw StateError('no constructor in ${file.path}');
      }
      final ctorEnd = src.indexOf('})', ctorStart);
      final ctor = src.substring(ctorStart, ctorEnd);
      final args = <String>[];
      for (final param in _requiredCtorParams(ctor)) {
        final value = param.sensitive
            ? _sensitiveValue
            : _literal(dummies, className, param.name, param.dartType);
        args.add(
          '      ${param.name}: '
          '${param.ref ? value.replaceFirst('TfArg.', 'RefTo.') : value},',
        );
      }
      final enums = _enumMembers(src);
      String? missing;
      for (final m in RegExp(r'required (\w+) (\w+),').allMatches(ctor)) {
        final helperType = m.group(1)!;
        if (enums[helperType] case final members?) {
          args.add(
            '      ${m.group(2)}: '
            '${_enumMember(dummies, className, m.group(2)!, helperType, members)},',
          );
          continue;
        }
        final value = _requiredHelpers[helperType];
        if (value == null) {
          missing ??=
              '$className.${m.group(2)} takes a required $helperType: add a '
              'dummy value to _requiredHelpers';
          continue;
        }
        args.add('      ${m.group(2)}: $value,');
      }
      if (missing != null) {
        unplaceable[className] = missing;
        continue;
      }
      final extras = _extraOptionals[className] ?? const {};
      extras.forEach((name, value) {
        args.add('      $name: $value,');
      });

      final localName = _uniqueLocal(tfType, usedLocal);
      final buf = StringBuffer()
        ..writeln('    add(')
        ..writeln('      $className(')
        ..writeln("        '$localName',");
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
        '/// Coverage stack with dummy ids; synth + `terraform validate` only.',
      )
      ..writeln('/// Never apply.')
      ..writeln('library;')
      ..writeln()
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
    return RenderedStack(out.toString(), unplaceable: unplaceable);
  }
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

/// What a required sensitive argument takes: Terraform's `sensitive()`
/// passes `terraform validate` without a declared variable.
const _sensitiveValue =
    '''Sensitive.expression(r'\${sensitive("leftover")}')''';

/// Dummy values for required derived-helper parameters, keyed by helper
/// class.
const _requiredHelpers = <String, String>{
  'DataCloudIdentityGroupLookupGroupKey':
      'DataCloudIdentityGroupLookupGroupKey(id: .literal(leftover))',
};

final _enumDecl = RegExp(
  r'extension\s+type\s+const\s+(\w+)\._\([^)]*\)\s+implements\s+TfArg<String>\s*\{(.*?)static\s+const\s+List<',
  dotAll: true,
);
final _enumEntry = RegExp(
  r"static\s+const\s+(\w+)\s*=\s*\w+\._\(\s*TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'",
);

/// Every enum [source] declares: name → (member, raw value) in declaration
/// order.
Map<String, List<(String, String)>> _enumMembers(String source) => {
  for (final m in _enumDecl.allMatches(source))
    m.group(1)!: [
      for (final e in _enumEntry.allMatches(m.group(2)!))
        (e.group(1)!, e.group(2)!),
    ],
};

/// The member of [enumName] whose raw value is the ledger's dummy for the
/// slot, else its first member.
String _enumMember(
  CoverageDummies dummies,
  String className,
  String name,
  String enumName,
  List<(String, String)> members,
) {
  final dummy = dummies.valueFor(className, name);
  final preferred = dummy is LiteralDummy ? dummy.json : null;
  final pick = members.firstWhere(
    (m) => m.$2 == preferred,
    orElse: () => members.first,
  );
  return '$enumName.${pick.$1}';
}

String _literal(
  CoverageDummies dummies,
  String className,
  String name,
  String dartType,
) {
  final value = dummies.valueFor(className, name);
  if (value != null) return 'TfArg.literal(${value.dart})';
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
