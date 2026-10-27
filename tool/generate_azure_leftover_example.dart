import 'dart:io';

import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'dot_shorthands.dart';

const _skipResourceTypes = <String>{};

const _skipDataTypes = <String>{};

const _srcRoot = 'packages/terradart_azure/lib/src';

const _secretVar = 'leftover_secret';
const _secretVarRef = 'leftoverSecret';
const _secretMapVar = 'leftover_secret_map';
const _secretMapRef = 'leftoverSecretMap';

String _secretFor(String type) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  if (t.contains('Map<')) return _secretMapRef;
  return t == 'Sensitive<String>' || t == 'TfArg<String>'
      ? _secretVarRef
      : "Sensitive.variable('$_secretVar')";
}

const _minListCount = <String, int>{
  'AzurermNetappVolumeGroupOracle.volume': 2,
  'AzurermNetappVolumeGroupSapHana.volume': 2,
};

const azureLeftoverStack = _AzureLeftoverStack();

final class _AzureLeftoverStack implements CoverageStackGenerator {
  const _AzureLeftoverStack();

  @override
  String get slug => 'azure_leftover';

  @override
  Set<String> get bindings => const {
    'location',
    'resourceGroupName',
    'leftover',
  };

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    _dummies = dummies;
    _sealedVariants.clear();
    _enums.clear();
    _insideHelper = false;
    final files =
        Directory(_srcRoot)
            .listSync(recursive: true)
            .whereType<File>()
            .where(
              (f) =>
                  f.path.endsWith('.dart') &&
                  !f.path.endsWith('_catalog.g.dart') &&
                  !f.path.endsWith('catalog_entry.dart'),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    final parsedFiles = <String, _ParsedFile>{};
    for (final file in files) {
      parsedFiles[file.path] = _parseFile(file);
      _collectEnums(file.readAsStringSync());
    }
    for (final sealed in _sealedMember.keys) {
      if (!_sealedVariants.containsKey(sealed)) {
        throw StateError('_sealedMember: no sealed type $sealed');
      }
    }

    final helpers = <String, _ClassInfo>{};
    final factories = <_Factory>[];
    for (final parsed in parsedFiles.values) {
      for (final cls in parsed.classes.values) {
        if (cls.kind == _Kind.helper) {
          helpers[cls.name] = cls;
        } else if (cls.kind == _Kind.resource || cls.kind == _Kind.data) {
          if (cls.tfType == null) continue;
          if (cls.kind == _Kind.resource &&
              _skipResourceTypes.contains(cls.tfType)) {
            continue;
          }
          if (cls.kind == _Kind.data && _skipDataTypes.contains(cls.tfType)) {
            continue;
          }
          if (exclude.contains(cls.name)) continue;
          factories.add(
            _Factory(
              type: cls.tfType!,
              className: cls.name,
              kind: cls.kind,
              requiredParams: cls.requiredParams,
              optionalParams: cls.optionalParams,
              filePath: parsed.path,
              sensitiveLeaves: parsed.sensitiveLeaves,
            ),
          );
        }
      }
    }
    factories.sort((a, b) {
      final k = a.kind.index.compareTo(b.kind.index);
      if (k != 0) return k;
      return a.type.compareTo(b.type);
    });

    final usedLocals = <String>{};
    final buf = StringBuffer()
      ..writeln('// GENERATED — tool/generate_azure_leftover_example.dart')
      ..writeln('// ignore_for_file: unused_element')
      ..writeln()
      ..writeln(
        '/// Coverage stack for leftover Azure factories at the current pin.',
      )
      ..writeln(
        '/// Dummy constructor values; synth + terraform validate only.',
      )
      ..writeln('/// Never apply.')
      ..writeln('library;')
      ..writeln()
      ..writeln("import 'package:terradart_azure/terradart_azure.dart';")
      ..writeln()
      ..writeln('final class AzureLeftoverStack extends Stack {')
      ..writeln('  AzureLeftoverStack()')
      ..writeln('      : super(providers: [const AzureProvider()]) {')
      ..writeln("    const leftover = 'leftover';")
      ..writeln("    const location = 'eastus';")
      ..writeln("    const resourceGroupName = 'leftover';")
      ..writeln();

    final body = StringBuffer();
    for (final f in factories) {
      final local = _uniqueLocal(f.type, f.kind, usedLocals);
      body.writeln('    add(');
      body.writeln('      ${f.className}(');
      body.writeln("        '$local',");
      for (final p in f.requiredParams) {
        body.writeln(
          '        ${p.name}: ${_dummy(p, helpers, sensitive: f.sensitiveLeaves, depth: 0, owner: f.className)},',
        );
      }
      for (final extra in _extras(f, helpers)) {
        body.writeln('        ${extra.name}: ${extra.value},');
      }
      body.writeln('      ),');
      body.writeln('    );');
      body.writeln();
    }

    if (body.toString().contains(_secretVarRef)) {
      buf.writeln(
        "    final $_secretVarRef = variable<String>('$_secretVar', "
        'sensitive: true);',
      );
      buf.writeln();
    }
    if (body.toString().contains(_secretMapRef)) {
      buf.writeln(
        '    final $_secretMapRef = variable<Map<String, String>>('
        "'$_secretMapVar', sensitive: true);",
      );
      buf.writeln();
    }
    buf.write(body);

    buf.writeln('  }');
    buf.writeln('}');

    return RenderedStack(
      dotShorthands(
        buf.toString(),
        packageEnums('packages/terradart_azure/lib/src'),
      ),
    );
  }
}

late CoverageDummies _dummies;

enum _Kind { resource, data, helper }

class _Factory {
  _Factory({
    required this.type,
    required this.className,
    required this.kind,
    required this.requiredParams,
    required this.optionalParams,
    required this.filePath,
    required this.sensitiveLeaves,
  });
  final String type;
  final String className;
  final _Kind kind;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final String filePath;
  final Set<String> sensitiveLeaves;
}

class _Param {
  _Param(this.name, this.type);
  final String name;
  final String type;
}

class _ClassInfo {
  _ClassInfo({
    required this.name,
    required this.kind,
    required this.tfType,
    required this.requiredParams,
    required this.optionalParams,
    required this.fields,
  });
  final String name;
  final _Kind kind;
  final String? tfType;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final Map<String, String> fields;
}

class _ParsedFile {
  _ParsedFile(this.path, this.classes, this.sensitiveLeaves);
  final String path;
  final Map<String, _ClassInfo> classes;
  final Set<String> sensitiveLeaves;
}

Set<String> _parseSensitiveLeaves(String src) {
  final out = <String>{};
  for (final m in RegExp(
    r'Sensitive\s*=\s*<String>\{([^}]*)\}',
  ).allMatches(src)) {
    for (final q in RegExp(r"'([^']+)'").allMatches(m.group(1)!)) {
      final path = q.group(1)!;
      out.add(path);
      out.add(path.split('.').last);
    }
  }
  return out;
}

final _sealedVariants = <String, List<String>>{};

_ParsedFile _parseFile(File file) {
  final src = file.readAsStringSync();
  final classes = <String, _ClassInfo>{};
  for (final m in RegExp(r'sealed class (\w+)').allMatches(src)) {
    _sealedVariants[m.group(1)!] = [];
  }
  final classRe = RegExp(r'final class (\w+)(?:\s+extends\s+(\w+))?');
  for (final m in classRe.allMatches(src)) {
    final name = m.group(1)!;
    final ext = m.group(2);
    _sealedVariants[ext]?.add(name);
    final brace = src.indexOf('{', m.end);
    if (brace < 0) continue;
    final end = _matchBrace(src, brace);
    if (end < 0) continue;
    final body = src.substring(brace, end + 1);
    final kind = switch (ext) {
      'Resource' => _Kind.resource,
      'Data' => _Kind.data,
      _ => _Kind.helper,
    };
    final fields = _parseFields(body);
    final parsedCtor = _parseCtor(name, body, fields);
    classes[name] = _ClassInfo(
      name: name,
      kind: kind,
      tfType: _parseTfType(body),
      requiredParams: parsedCtor.required,
      optionalParams: parsedCtor.optional,
      fields: fields,
    );
  }
  return _ParsedFile(file.path, classes, _parseSensitiveLeaves(src));
}

String? _parseTfType(String body) {
  final oneLine = RegExp(
    r"static const String tfType = '([^']+)'",
  ).firstMatch(body);
  if (oneLine != null) return oneLine.group(1);
  final split = RegExp(
    r"static const String tfType =\s*'([^']+)'",
  ).firstMatch(body);
  return split?.group(1);
}

Map<String, String> _parseFields(String body) {
  final out = <String, String>{};
  for (final m in RegExp(r'final\s+(.+?)\s+(\w+);').allMatches(body)) {
    out[m.group(2)!] = m.group(1)!.trim();
  }
  return out;
}

({List<_Param> required, List<_Param> optional}) _parseCtor(
  String className,
  String body,
  Map<String, String> fields,
) {
  final positional = RegExp(
    'const ${RegExp.escape(className)}\\(\\s*this\\.(\\w+),?\\s*\\);',
  ).firstMatch(body);
  if (positional != null) {
    final name = positional.group(1)!;
    return (
      required: [_Param(name, fields[name] ?? 'TfArg<String>')],
      optional: const [],
    );
  }
  final ctor = RegExp(
    '${RegExp.escape(className)}\\(\\s*(?:super\\.localName,\\s*)?\\{',
  ).firstMatch(body);
  if (ctor == null) return (required: const [], optional: const []);
  final open = ctor.end - 1;
  final close = _matchBrace(body, open);
  if (close < 0) return (required: const [], optional: const []);
  final paramsSrc = body.substring(open + 1, close);
  final required = <_Param>[];
  final optional = <_Param>[];
  for (final raw in _splitTopLevel(paramsSrc, ',')) {
    final t = raw.trim().replaceAll(RegExp(r'\s+'), ' ');
    if (t.isEmpty) continue;
    if (t.contains('super.')) continue;
    if (t.startsWith('required ')) {
      final thisM = RegExp(r'required this\.(\w+)').firstMatch(t);
      if (thisM != null) {
        final name = thisM.group(1)!;
        required.add(_Param(name, fields[name] ?? 'TfArg<String>'));
        continue;
      }
      final typed = RegExp(r'required (.+) (\w+)$').firstMatch(t);
      if (typed != null) {
        required.add(_Param(typed.group(2)!, typed.group(1)!.trim()));
      }
      continue;
    }
    final thisM = RegExp(r'this\.(\w+)').firstMatch(t);
    if (thisM != null) {
      final name = thisM.group(1)!;
      optional.add(_Param(name, fields[name] ?? 'TfArg<String>'));
      continue;
    }
    final typed = RegExp(r'^(.+?)\?? (\w+)$').firstMatch(t);
    if (typed != null) {
      optional.add(
        _Param(typed.group(2)!, typed.group(1)!.replaceAll('?', '').trim()),
      );
    }
  }
  return (required: required, optional: optional);
}

class _Extra {
  _Extra(this.name, this.value);
  final String name;
  final String value;
}

const _sealedMember = <String, String>{};

String _sealedChoice(
  String sealed,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
}) {
  final variants = [
    for (final v in _sealedVariants[sealed]!)
      (v, helpers[v]!.requiredParams.single),
  ];
  if (variants.isEmpty) throw StateError('$sealed declares no variants');
  final (variant, member) = variants.firstWhere(
    (v) => v.$2.name == _sealedMember[sealed],
    orElse: () => variants.first,
  );
  final outer = _insideHelper;
  _insideHelper = true;
  final value = _dummy(
    member,
    helpers,
    depth: depth + 1,
    sensitive: sensitive,
    owner: variant,
  );
  _insideHelper = outer;
  return '.${member.name}($value)';
}

List<_Extra> _extras(_Factory f, Map<String, _ClassInfo> helpers) {
  if (f.kind != _Kind.data || f.requiredParams.isNotEmpty) return const [];
  final optional = {for (final p in f.optionalParams) p.name: p};
  final pick = ['name', 'id'].where(optional.containsKey).firstOrNull;
  if (pick == null) return const [];
  final p = optional[pick]!;
  return [
    _Extra(
      pick,
      _dummy(
        p,
        helpers,
        sensitive: f.sensitiveLeaves,
        depth: 0,
        owner: f.className,
      ),
    ),
  ];
}

List<String> _splitTopLevel(String src, String sep) {
  final out = <String>[];
  final buf = StringBuffer();
  var depth = 0;
  for (var i = 0; i < src.length; i++) {
    final ch = src[i];
    if (ch == '<' || ch == '(' || ch == '[' || ch == '{') depth++;
    if (ch == '>' || ch == ')' || ch == ']' || ch == '}') {
      depth = depth > 0 ? depth - 1 : 0;
    }
    if (ch == sep && depth == 0) {
      out.add(buf.toString());
      buf.clear();
      continue;
    }
    buf.write(ch);
  }
  if (buf.isNotEmpty) out.add(buf.toString());
  return out;
}

int _matchBrace(String src, int open) {
  var depth = 0;
  for (var i = open; i < src.length; i++) {
    final ch = src[i];
    if (ch == '{') depth++;
    if (ch == '}') {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

String _uniqueLocal(String tfType, _Kind kind, Set<String> used) {
  var name = tfType.startsWith('azurerm_')
      ? tfType.substring('azurerm_'.length)
      : tfType;
  if (kind == _Kind.data) name = 'd_$name';
  if (name.length > 48) name = name.substring(0, 48);
  name = name.replaceAll(RegExp(r'[^A-Za-z0-9_]'), '_');
  if (name.isEmpty || RegExp(r'^[0-9]').hasMatch(name)) {
    name = 'n_$name';
  }
  var candidate = name;
  var n = 2;
  while (used.contains(candidate)) {
    final suffix = '_$n';
    candidate = name.length + suffix.length > 48
        ? '${name.substring(0, 48 - suffix.length)}$suffix'
        : '$name$suffix';
    n++;
  }
  used.add(candidate);
  return candidate;
}

String _toSnake(String camel) {
  return camel.replaceAllMapped(
    RegExp(r'[A-Z]'),
    (m) => '_${m.group(0)!.toLowerCase()}',
  );
}

bool _isSensitive(String name, Set<String> sensitive) {
  if (sensitive.isEmpty) return false;
  final snake = _toSnake(name);
  return sensitive.contains(snake) || sensitive.contains(name);
}

String _dummy(
  _Param p,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  String owner = '',
}) {
  if (depth > 8) return "TfArg.literal('leftover')";
  final n = p.name;
  if (_isSensitive(n, sensitive) && p.type.startsWith('TfArg') ||
      p.type.startsWith('Sensitive<')) {
    return _secretFor(p.type);
  }
  return _dummyForType(
    p.type,
    helpers,
    depth: depth,
    name: n,
    sensitive: sensitive,
    owner: owner,
  );
}

const _primitives = {
  'String',
  'num',
  'int',
  'double',
  'bool',
  'Object',
  'dynamic',
  'Null',
  'Map',
  'List',
  'Set',
};

String _headType(String type) {
  final i = type.indexOf('<');
  return i < 0 ? type : type.substring(0, i);
}

String _dummyForType(
  String type,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  String name = '',
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();

  if (t.startsWith('RefTo<')) {
    return 'RefTo.literal(${_stringValue(name, owner: owner)})';
  }
  if (t.startsWith('Sensitive<')) return _secretFor(t);
  if (t.startsWith('TfArg<') && t.endsWith('>')) {
    if (_isSensitive(name, sensitive)) {
      return _secretFor(t);
    }
    final inner = t.substring(6, t.length - 1);
    final value = _literalInner(
      inner,
      helpers,
      depth: depth,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
    return _enums.containsKey(inner.trim())
        ? 'TfArg.literal($value,)'
        : 'TfArg.literal($value)';
  }
  if (t.startsWith('List<') && t.endsWith('>')) {
    final inner = t.substring(5, t.length - 1);
    final item = _dummyForType(
      inner,
      helpers,
      depth: depth + 1,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
    final count = _minListCount['$owner.$name'] ?? 1;
    return '[${List.filled(count, item).join(', ')},]';
  }
  if (t.startsWith('Map<String, ') && t.endsWith('>')) {
    final value = t.substring(12, t.length - 1).trim();
    if (helpers.containsKey(value)) {
      return "{'k': ${_constructHelper(value, helpers, depth: depth + 1, sensitive: sensitive, shorthand: _insideHelper)},}";
    }
  }
  if (t.startsWith('Map<') || t == 'Map') {
    return "{'k': leftover}";
  }
  if (_sealedVariants.containsKey(t)) {
    return _sealedChoice(t, helpers, depth: depth, sensitive: sensitive);
  }
  if (helpers.containsKey(t)) {
    return _constructHelper(
      t,
      helpers,
      depth: depth + 1,
      sensitive: sensitive,
      shorthand: _insideHelper,
    );
  }
  if (_enums.containsKey(t)) return _enumMember(t, name, owner: owner);
  if (_primitives.contains(_headType(t))) {
    return _literalInner(
      t,
      helpers,
      depth: depth,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
  }
  return 'TfArg.literal(leftover)';
}

String _literalInner(
  String inner,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required String name,
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = inner.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  final value = _dummies.valueFor(owner, name);
  final fitted = value == null ? null : _fit(value, t);
  if (fitted != null) return fitted;
  if (t == 'String') return 'leftover';
  if (_enums.containsKey(t)) return _enumMember(t, name, owner: owner);
  if (t == 'num' || t == 'int' || t == 'double') return '200';
  if (t == 'bool') return 'true';
  if (t.startsWith('List<') && t.endsWith('>')) {
    final listInner = t.substring(5, t.length - 1).trim().replaceAll('?', '');
    if (listInner.startsWith('RefTo<')) {
      return '[RefTo.literal(${_stringValue(name, owner: owner)})]';
    }
    if (helpers.containsKey(listInner)) {
      return '[${_constructHelper(listInner, helpers, depth: depth + 1, sensitive: sensitive)},]';
    }
    if (listInner.startsWith('Map')) return "[{'k': leftover}]";
    if (listInner.contains('num') ||
        listInner.contains('int') ||
        listInner.contains('double')) {
      return '[200]';
    }
    if (listInner.contains('bool')) return '[true]';
    return '[leftover]';
  }
  if (t.startsWith('Map<') || t == 'Map') return "{'k': leftover}";
  if (t == 'Object' || t.contains('Object')) return 'leftover';
  if (helpers.containsKey(t)) {
    return _constructHelper(t, helpers, depth: depth + 1, sensitive: sensitive);
  }
  return 'leftover';
}

final _enums = <String, List<(String, String)>>{};

final _enumDecl = RegExp(
  r'extension\s+type\s+const\s+(\w+)\._\([^)]*\)\s+implements\s+TfArg<String>\s*\{(.*?)static\s+const\s+List<',
  dotAll: true,
);
final _enumEntry = RegExp(
  r"static\s+const\s+(\w+)\s*=\s*\w+\._\(\s*TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'",
);

void _collectEnums(String source) {
  for (final m in _enumDecl.allMatches(source)) {
    _enums[m.group(1)!] = [
      for (final e in _enumEntry.allMatches(m.group(2)!))
        (e.group(1)!, e.group(2)!.replaceAll(r'\', '')),
    ];
  }
}

String _enumMember(String enumName, String name, {required String owner}) {
  final members = _enums[enumName]!;
  final literal = _stringValue(name, owner: owner);
  final preferred = literal.startsWith("'") && literal.endsWith("'")
      ? literal.substring(1, literal.length - 1)
      : null;
  final pick = members.firstWhere(
    (m) => m.$2 == preferred,
    orElse: () => members.first,
  );
  return '$enumName.${pick.$1}';
}

String _stringValue(String name, {String owner = ''}) {
  final value = _dummies.valueFor(owner, name);
  return value != null && value.isString ? value.dart : 'leftover';
}

String? _fit(DummyValue value, String t) {
  final json = switch (value) {
    LiteralDummy(:final json) => json,
    BoundDummy(:final template) => template,
    DartDummy() => null,
  };
  if (value is DartDummy || t == 'Object' || t == 'dynamic') return value.dart;
  final fits = switch (t) {
    'String' => json is String,
    'num' || 'int' || 'double' => json is num,
    'bool' => json is bool,
    _ => t.startsWith('List<') && json is List,
  };
  return fits ? value.dart : null;
}

var _insideHelper = false;

String _constructHelper(
  String className,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  bool shorthand = false,
}) {
  final ctor = shorthand ? '.new' : className;
  if (depth > 8) return '$ctor()';
  final info = helpers[className];
  if (info == null) return '$ctor()';
  final params = [
    ...info.requiredParams,
    if (info.requiredParams.isEmpty && info.optionalParams.isNotEmpty)
      info.optionalParams.first,
  ];
  if (params.isEmpty) {
    return '$ctor()';
  }
  final outer = _insideHelper;
  _insideHelper = true;
  final args = params
      .map(
        (p) =>
            '${p.name}: ${_dummy(p, helpers, depth: depth, sensitive: sensitive, owner: className)}',
      )
      .join(', ');
  _insideHelper = outer;
  return '$ctor($args,)';
}
