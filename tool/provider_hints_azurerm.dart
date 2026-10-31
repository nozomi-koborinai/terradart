import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/exclusive_groups.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';

import 'extract_provider_hints.dart';
import 'provider_hints_aws.dart';

bool isAzurermProviderSource(Directory root) =>
    File(
      p.join(root.path, 'internal', 'provider', 'provider.go'),
    ).existsSync() &&
    Directory(p.join(root.path, 'internal', 'services')).existsSync() &&
    Directory(
      p.join(root.path, 'vendor', 'github.com', 'hashicorp', 'go-azure-sdk'),
    ).existsSync();

AwsHintsScan scanAzurermProvider(Directory root) {
  final module = RegExp(
    r'^module\s+(\S+)',
    multiLine: true,
  ).firstMatch(File(p.join(root.path, 'go.mod')).readAsStringSync())!.group(1)!;
  final index = _PackageIndex(root, module);
  final funcs = _indexSchemaFuncs(root, module);
  final byKey = <String, _FuncRef?>{};
  for (final ref in funcs) {
    final key = '${ref.file.packagePath} ${ref.name}';
    byKey[key] = byKey.containsKey(key) ? null : ref;
  }
  _FuncRef? samePackage(_FuncRef from, String name) =>
      byKey['${from.file.packagePath} $name'];
  _FuncRef? resolve(_FuncRef from, String? qualifier, String name) {
    if (qualifier == null) return samePackage(from, name);
    final importPath = from.file.imports[qualifier];
    return importPath == null ? null : byKey['$importPath $name'];
  }

  final result = AwsHintsScan({});
  final schemas = byKind((_) => <String, List<_FuncRef>>{});

  for (final ref in funcs) {
    if (!ref.name.endsWith('.ResourceType')) continue;
    final type = _returnedAzurerm(ref, index);
    final arguments = samePackage(ref, '${ref.receiver}.Arguments');
    if (type == null || arguments == null) continue;
    final kind = _isDataSchema(arguments)
        ? WrapperOverrideKind.dataSource
        : WrapperOverrideKind.resource;
    (schemas.of(kind)[type] ??= []).add(arguments);
  }
  for (final ref in funcs) {
    final WrapperOverrideKind kind;
    if (ref.name.endsWith('.SupportedResources')) {
      kind = WrapperOverrideKind.resource;
    } else if (ref.name.endsWith('.SupportedDataSources')) {
      kind = WrapperOverrideKind.dataSource;
    } else {
      continue;
    }
    final tokens = ref.file.tokens;
    for (var i = ref.bodyStart; i + 4 < ref.bodyEnd; i++) {
      if (tokens[i].kind != GoTok.string ||
          !tokens[i].text.startsWith('azurerm_')) {
        continue;
      }
      if (tokens[i + 1].text != ':') continue;
      final target = _registeredSchema(ref, i + 2, samePackage, byKey);
      if (target == null) continue;
      _preferSchema(schemas.of(kind), tokens[i].text, target);
    }
  }

  for (final kind in WrapperOverrideKind.values) {
    _collect(
      kind,
      schemas.of(kind),
      switch (kind) {
        WrapperOverrideKind.resource => result.byType,
        WrapperOverrideKind.dataSource => result.dataSourcesByType,
      },
      result,
      index,
      resolve,
    );
  }
  return result;
}

/// Scans each of [kind]'s [schemas] into [out], counting into [result].
void _collect(
  WrapperOverrideKind kind,
  Map<String, List<_FuncRef>> schemas,
  Map<String, AwsTypeHints> out,
  AwsHintsScan result,
  _PackageIndex index,
  _SchemaCall resolve,
) {
  for (final type in schemas.keys.toList()..sort()) {
    final hints = <String, GoEnumHint>{};
    final exactly = <List<String>>[];
    final atLeast = <List<String>>[];
    final conflicts = <(String, String)>[];
    String? sourcePath;
    for (final ref in schemas[type]!) {
      sourcePath ??= ref.file.rel;
      final found = _scanBody(ref, index, resolve);
      result.validators += found.validators;
      result.unresolved += found.unresolved;
      for (final path in found.unresolvedPaths) {
        result.unresolvedSites.add(
          '${kind == WrapperOverrideKind.dataSource ? 'data.' : ''}$type $path',
        );
      }
      result.groupValidators += found.relations;
      result.unresolvedGroups += found.unresolvedRelations;
      for (final hint in found.hints) {
        hints.putIfAbsent(hint.dotted, () => hint);
      }
      exactly.addAll(found.exactly);
      atLeast.addAll(found.atLeast);
      conflicts.addAll(found.conflicts);
    }
    final combined = exclusiveGroups(
      exactlyOne: exactly,
      atLeastOne: atLeast,
      conflicts: conflicts,
    );
    List<List<List<String>>> split(List<List<String>> groups) => [
      for (final group in groups)
        ([...group]..sort()).map((member) => member.split('.')).toList(),
    ];
    if (hints.isEmpty &&
        combined.exactlyOne.isEmpty &&
        combined.atMostOne.isEmpty &&
        combined.unsealed.isEmpty) {
      continue;
    }
    out[type] = (
      sourcePath: sourcePath!,
      hints: hints.values.toList(),
      groups: split(combined.exactlyOne),
      atMostOne: split(combined.atMostOne),
    );
    for (final line in combined.unsealed) {
      result.unsealed.add('${kind.label(type)} $line');
    }
  }
}

void _preferSchema(
  Map<String, List<_FuncRef>> schemas,
  String type,
  _FuncRef target,
) {
  final existing = schemas[type];
  if (existing == null) {
    schemas[type] = [target];
    return;
  }
  if (existing.any((e) => !_isDataSchema(e))) return;
  if (!_isDataSchema(target)) schemas[type] = [target];
}

bool _isDataSchema(_FuncRef ref) {
  final leaf = ref.name.split('.').last;
  final fileName = p.basename(ref.file.rel);
  return fileName == 'data_source.go' ||
      fileName.endsWith('_data_source.go') ||
      (ref.receiver?.contains('DataSource') ?? false) ||
      leaf.startsWith('dataSource');
}

_FuncRef? _registeredSchema(
  _FuncRef from,
  int at,
  _FuncRef? Function(_FuncRef from, String name) samePackage,
  Map<String, _FuncRef?> byKey,
) {
  final t = from.file.tokens;
  final end = from.bodyEnd;
  if (at >= end || t[at].kind != GoTok.ident) return null;
  if (at + 2 < end && t[at + 1].text == '(' && t[at + 2].text == ')') {
    return samePackage(from, t[at].text);
  }
  if (at + 4 < end &&
      t[at + 1].text == '.' &&
      t[at + 2].kind == GoTok.ident &&
      t[at + 3].text == '(' &&
      t[at + 4].text == ')') {
    final importPath = from.file.imports[t[at].text];
    if (importPath == null) return null;
    return byKey['$importPath ${t[at + 2].text}'];
  }
  return null;
}

final class _FileTok {
  _FileTok(this.rel, this.tokens, this.imports, this.packagePath);

  final String rel;
  final List<GoToken> tokens;
  final Map<String, String> imports;
  final String packagePath;
}

final class _FuncRef {
  _FuncRef(this.file, this.name, this.receiver, this.bodyStart, this.bodyEnd);

  final _FileTok file;
  final String name;
  final String? receiver;
  final int bodyStart;
  final int bodyEnd;
}

List<_FuncRef> _indexSchemaFuncs(Directory root, String module) {
  final out = <_FuncRef>[];
  final services = Directory(p.join(root.path, 'internal', 'services'));
  for (final entity in services.listSync(recursive: true)) {
    if (entity is! File) continue;
    if (!entity.path.endsWith('.go') || entity.path.endsWith('_test.go')) {
      continue;
    }
    final src = entity.readAsStringSync();
    final tokens = tokenizeGo(src);
    final file = _FileTok(
      p.relative(entity.path, from: root.path),
      tokens,
      parseGoImports(src),
      '$module/${p.relative(entity.parent.path, from: root.path)}',
    );
    for (final ref in _funcs(file)) {
      final leaf = ref.name.split('.').last;
      final keep =
          leaf == 'ResourceType' ||
          leaf == 'Arguments' ||
          leaf == 'SupportedResources' ||
          leaf == 'SupportedDataSources' ||
          !ref.name.contains('.');
      if (keep) out.add(ref);
    }
  }
  return out;
}

List<_FuncRef> _funcs(_FileTok file) {
  final t = file.tokens;
  final out = <_FuncRef>[];
  for (var i = 0; i < t.length; i++) {
    if (t[i].kind != GoTok.ident || t[i].text != 'func') continue;
    var j = i + 1;
    String? receiver;
    if (j < t.length && t[j].text == '(') {
      final idents = <String>[];
      j++;
      while (j < t.length && t[j].text != ')') {
        if (t[j].kind == GoTok.ident) idents.add(t[j].text);
        j++;
      }
      if (idents.isNotEmpty) receiver = idents.last;
      j++;
    }
    if (j >= t.length || t[j].kind != GoTok.ident) continue;
    final funcName = t[j].text;
    j++;
    var paren = 0;
    while (j < t.length) {
      if (t[j].text == '(') paren++;
      if (t[j].text == ')') paren--;
      if (t[j].text == '{' && paren == 0) break;
      j++;
    }
    if (j >= t.length || t[j].text != '{') continue;
    final close = _matchBrace(t, j);
    final name = receiver == null ? funcName : '$receiver.$funcName';
    out.add(_FuncRef(file, name, receiver, j + 1, close));
    i = close;
  }
  return out;
}

int _matchBrace(List<GoToken> t, int open) {
  var depth = 0;
  for (var k = open; k < t.length; k++) {
    if (t[k].text == '{') depth++;
    if (t[k].text == '}') {
      depth--;
      if (depth == 0) return k;
    }
  }
  return t.length - 1;
}

String? _returnedAzurerm(_FuncRef ref, _PackageIndex index) {
  final t = ref.file.tokens;
  for (var i = ref.bodyStart; i < ref.bodyEnd; i++) {
    if (t[i].kind == GoTok.string && t[i].text.startsWith('azurerm_')) {
      return t[i].text;
    }
  }
  for (var i = ref.bodyStart; i < ref.bodyEnd; i++) {
    if (t[i].text != 'return' ||
        i + 1 >= ref.bodyEnd ||
        t[i + 1].kind != GoTok.ident) {
      continue;
    }
    final value = index.constant(ref.file.packagePath, t[i + 1].text);
    if (value != null && value.startsWith('azurerm_')) return value;
  }
  return null;
}

final class _BodyScan {
  final hints = <GoEnumHint>[];
  final exactly = <List<String>>[];
  final atLeast = <List<String>>[];
  final conflicts = <(String, String)>[];
  var validators = 0;
  var unresolved = 0;
  var relations = 0;
  var unresolvedRelations = 0;

  /// The schema path of each value-set validator not evaluated.
  final unresolvedPaths = <String>[];
}

/// Resolves a call to a schema function: `Name()` in the caller's package
/// when [qualifier] is null, else `qualifier.Name()` through its imports.
typedef _SchemaCall =
    _FuncRef? Function(_FuncRef from, String? qualifier, String name);

_BodyScan _scanBody(_FuncRef ref, _PackageIndex index, _SchemaCall lookup) {
  final found = _BodyScan();
  final seen = <String>{};
  void scan(_FuncRef current, List<String> path) {
    // A shared schema function is scanned once per path it is mounted at.
    final id = '${current.file.rel}:${current.bodyStart} ${path.join('.')}';
    if (!seen.add(id)) return;
    final target = _schemaTarget(current);
    _walk(
      current.file.tokens,
      target.start,
      target.end,
      path,
      found,
      index,
      current,
      lookup,
      scan,
      schemaMap: target.schemaMap,
    );
  }

  scan(ref, const []);
  return found;
}

({int start, int end, bool schemaMap}) _schemaTarget(_FuncRef ref) {
  final t = ref.file.tokens;
  if (ref.name.endsWith('.Arguments')) {
    for (var i = ref.bodyStart; i < ref.bodyEnd; i++) {
      if (t[i].text != 'return') continue;
      final open = _mapOpen(t, i, ref.bodyEnd);
      if (open != null) {
        return (start: open + 1, end: _matchBrace(t, open), schemaMap: true);
      }
    }
  }
  return (start: ref.bodyStart, end: ref.bodyEnd, schemaMap: false);
}

int? _mapOpen(List<GoToken> t, int from, int end) {
  var depth = 0;
  var sawMap = false;
  final stop = end < from + 30 ? end : from + 30;
  for (var j = from; j < stop; j++) {
    final text = t[j].text;
    if (text == '(' || text == '[') depth++;
    if (text == ')' || text == ']') {
      if (depth == 0) return null;
      depth--;
    }
    if (depth == 0 && text == ',') return null;
    if (t[j].kind == GoTok.ident && text == 'map') sawMap = true;
    if (text == '{' && depth == 0) return sawMap ? j : null;
  }
  return null;
}

void _walk(
  List<GoToken> t,
  int start,
  int end,
  List<String> path,
  _BodyScan found,
  _PackageIndex index,
  _FuncRef ref,
  _SchemaCall lookup,
  void Function(_FuncRef current, List<String> path) follow, {
  required bool schemaMap,
}) {
  var i = start;
  while (i < end) {
    final tok = t[i];
    if (schemaMap &&
        tok.kind == GoTok.string &&
        i + 1 < end &&
        t[i + 1].text == ':') {
      final key = tok.text;
      i += 2;
      if (i < end && t[i].text == '{') {
        final close = _matchBrace(t, i);
        _walk(
          t,
          i + 1,
          close,
          [...path, key],
          found,
          index,
          ref,
          lookup,
          follow,
          schemaMap: false,
        );
        i = close + 1;
        continue;
      }
      final call = _schemaCallAt(t, i, end);
      if (call != null) {
        final target = lookup(ref, call.qualifier, call.name);
        if (target != null) follow(target, [...path, key]);
        i = call.next;
        continue;
      }
      i = _skipValue(t, i, end);
      continue;
    }
    if (tok.kind == GoTok.ident && tok.text == 'Schema') {
      final open = _mapOpen(t, i, end);
      if (open != null) {
        final close = _matchBrace(t, open);
        _walk(
          t,
          open + 1,
          close,
          path,
          found,
          index,
          ref,
          lookup,
          follow,
          schemaMap: true,
        );
        i = close + 1;
        continue;
      }
      if (i + 4 < end &&
          t[i + 1].text == ':' &&
          t[i + 2].kind == GoTok.ident &&
          t[i + 3].text == '(' &&
          t[i + 4].text == ')') {
        final target = lookup(ref, null, t[i + 2].text);
        if (target != null) follow(target, path);
        i += 5;
        continue;
      }
    }
    if (tok.kind == GoTok.ident && tok.text == 'return' && !schemaMap) {
      final open = _mapOpen(t, i, end);
      if (open != null && !schemaMap) {
        final close = _matchBrace(t, open);
        _walk(
          t,
          open + 1,
          close,
          path,
          found,
          index,
          ref,
          lookup,
          follow,
          schemaMap: true,
        );
        i = close + 1;
        continue;
      }
    }
    if (!schemaMap && _relations.contains(tok.text) && path.isNotEmpty) {
      found.relations++;
      final members = _stringList(t, i, end);
      if (members == null) {
        found.unresolvedRelations++;
      } else {
        _recordRelation(tok.text, path, members, found);
      }
    }
    if (!schemaMap &&
        tok.text == 'StringInSlice' &&
        path.isNotEmpty &&
        !_insideAny(t, i)) {
      found.validators++;
      final values = _sliceValues(t, i, end, index, ref);
      if (values == null || values.isEmpty) {
        found.unresolved++;
        found.unresolvedPaths.add(path.join('.'));
      } else {
        found.hints.add(
          GoEnumHint(
            path: path,
            values: values,
            caseInsensitive: _ignoreCase(t, i, end),
          ),
        );
      }
    }
    if (tok.text == '{') {
      final close = _matchBrace(t, i);
      _walk(
        t,
        i + 1,
        close,
        path,
        found,
        index,
        ref,
        lookup,
        follow,
        schemaMap: false,
      );
      i = close + 1;
      continue;
    }
    i++;
  }
}

const _relations = {'ExactlyOneOf', 'AtLeastOneOf', 'ConflictsWith'};

void _recordRelation(
  String kind,
  List<String> path,
  List<String> members,
  _BodyScan found,
) {
  final parent = path.sublist(0, path.length - 1);
  // A dotted member is already a resource-root path. Azurerm writes the
  // list index as `.0.`, which is not a schema key.
  List<String> full(String member) {
    if (member.contains('.')) {
      return [
        for (final part in member.split('.'))
          if (int.tryParse(part) == null) part,
      ];
    }
    return [...parent, member];
  }

  if (kind == 'ConflictsWith') {
    final self = path.join('.');
    for (final member in members) {
      final other = full(member).join('.');
      if (other != self && other.isNotEmpty) found.conflicts.add((self, other));
    }
    return;
  }
  final group = [for (final member in members) full(member).join('.')];
  if (kind == 'AtLeastOneOf') {
    found.atLeast.add(group);
  } else {
    found.exactly.add(group);
  }
}

/// The schema-function call `Name(...)` or `pkg.Name(...)` that starts at
/// [i] as a whole schema-map value (a comma or the map's end follows it).
({String? qualifier, String name, int next})? _schemaCallAt(
  List<GoToken> t,
  int i,
  int end,
) {
  if (i >= end || t[i].kind != GoTok.ident) return null;
  String? qualifier;
  var j = i;
  if (j + 2 < end && t[j + 1].text == '.' && t[j + 2].kind == GoTok.ident) {
    qualifier = t[j].text;
    j += 2;
  }
  if (j + 1 >= end || t[j + 1].text != '(') return null;
  final close = _matchParen(t, j + 1);
  if (close >= end) return null;
  final next = close + 1;
  if (next < end && t[next].text != ',') return null;
  return (qualifier: qualifier, name: t[j].text, next: next);
}

/// `Any(...)` makes a `StringInSlice` one alternative, not the value set.
bool _insideAny(List<GoToken> t, int at) {
  var paren = 0;
  for (var i = at - 1; i >= 0; i--) {
    if (t[i].text == ')') {
      paren++;
    } else if (t[i].text == '(') {
      if (paren == 0) {
        if (i > 0 && t[i - 1].text == 'Any') return true;
      } else {
        paren--;
      }
    }
  }
  return false;
}

List<String>? _stringList(List<GoToken> t, int from, int end) {
  var saw = false;
  final stop = end < from + 24 ? end : from + 24;
  for (var j = from; j < stop; j++) {
    if (t[j].text == '[' &&
        j + 2 < t.length &&
        t[j + 1].text == ']' &&
        t[j + 2].text == 'string') {
      saw = true;
    }
    if (t[j].text == '{') {
      if (!saw) return null;
      final out = <String>[];
      final close = _matchBrace(t, j);
      for (var k = j + 1; k < close; k++) {
        if (t[k].kind == GoTok.string) out.add(t[k].text);
      }
      return out;
    }
    if (t[j].text == ',') return null;
  }
  return null;
}

List<String>? _sliceValues(
  List<GoToken> t,
  int at,
  int end,
  _PackageIndex index,
  _FuncRef ref,
) {
  final open = t.indexWhere((tok) => tok.text == '(', at);
  if (open < 0 || open >= end) return null;
  final i = open + 1;
  if (i + 2 < t.length &&
      t[i].text == '[' &&
      t[i + 1].text == ']' &&
      t[i + 2].text == 'string') {
    final brace = t.indexWhere((tok) => tok.text == '{', i);
    if (brace < 0 || brace >= end) return null;
    return _elements(t, brace, index, ref.file.packagePath, ref.file.imports);
  }
  if (i + 3 < t.length &&
      t[i].kind == GoTok.ident &&
      t[i + 1].text == '.' &&
      t[i + 2].kind == GoTok.ident) {
    final importPath = ref.file.imports[t[i].text];
    if (importPath == null) return null;
    final values = index.possible(importPath, t[i + 2].text);
    return values ?? index.lookup(importPath, t[i + 2].text);
  }
  if (i < t.length && t[i].kind == GoTok.ident) {
    return _localSlice(t, ref.bodyStart, at, t[i].text, index, ref) ??
        index.lookup(ref.file.packagePath, t[i].text);
  }
  return null;
}

/// The last `name := []string{...}` or `name := [pkg.]Func()` before [at]
/// in the function body starting at [from].
List<String>? _localSlice(
  List<GoToken> t,
  int from,
  int at,
  String name,
  _PackageIndex index,
  _FuncRef ref,
) {
  for (var j = at - 1; j >= from; j--) {
    if (t[j].text != name || j + 6 >= at) continue;
    var k = j + 1;
    if (t[k].text == ':') k++;
    if (t[k].text != '=') continue;
    if (_callValues(t, k + 1, index, ref) case final values?) return values;
    if (t[k + 1].text != '[' ||
        t[k + 2].text != ']' ||
        t[k + 3].text != 'string' ||
        t[k + 4].text != '{') {
      continue;
    }
    return _elements(t, k + 4, index, ref.file.packagePath, ref.file.imports);
  }
  return null;
}

/// The values of the zero-argument slice function `[pkg.]Func()` at [i].
List<String>? _callValues(
  List<GoToken> t,
  int i,
  _PackageIndex index,
  _FuncRef ref,
) {
  if (i + 4 < t.length &&
      t[i].kind == GoTok.ident &&
      t[i + 1].text == '.' &&
      t[i + 2].kind == GoTok.ident &&
      t[i + 3].text == '(' &&
      t[i + 4].text == ')') {
    final importPath = ref.file.imports[t[i].text];
    return importPath == null
        ? null
        : index.possible(importPath, t[i + 2].text);
  }
  if (i + 2 < t.length &&
      t[i].kind == GoTok.ident &&
      t[i + 1].text == '(' &&
      t[i + 2].text == ')') {
    return index.possible(ref.file.packagePath, t[i].text);
  }
  return null;
}

bool _ignoreCase(List<GoToken> t, int at, int end) {
  final open = t.indexWhere((tok) => tok.text == '(', at);
  if (open < 0) return false;
  var paren = 0;
  var comma = false;
  for (var j = open; j < end; j++) {
    if (t[j].text == '(') paren++;
    if (t[j].text == ')') {
      paren--;
      if (paren == 0) return false;
    }
    if (paren == 1 && t[j].text == ',') comma = true;
    if (comma && t[j].kind == GoTok.ident) return t[j].text == 'true';
  }
  return false;
}

List<String>? _elements(
  List<GoToken> t,
  int brace,
  _PackageIndex index,
  String packagePath, [
  Map<String, String> imports = const {},
]) {
  final close = _matchBrace(t, brace);
  final out = <String>[];
  for (var k = brace + 1; k < close; k++) {
    if (t[k].kind == GoTok.string) {
      out.add(t[k].text);
      continue;
    }
    if (t[k].text == 'string' &&
        k + 3 < close &&
        t[k + 1].text == '(' &&
        t[k + 2].kind == GoTok.ident &&
        t[k + 3].text == ')') {
      final value = index.constant(packagePath, t[k + 2].text);
      if (value == null) return null;
      out.add(value);
      k += 3;
      continue;
    }
    if (t[k].text == 'string' &&
        k + 5 < close &&
        t[k + 1].text == '(' &&
        t[k + 2].kind == GoTok.ident &&
        t[k + 3].text == '.' &&
        t[k + 4].kind == GoTok.ident &&
        t[k + 5].text == ')') {
      final importPath = imports[t[k + 2].text];
      final value = importPath == null
          ? null
          : index.constant(importPath, t[k + 4].text);
      if (value == null) return null;
      out.add(value);
      k += 5;
      continue;
    }
    if (t[k].kind == GoTok.ident &&
        t[k].text != 'string' &&
        (k + 1 == close || t[k + 1].text == ',')) {
      final value = index.constant(packagePath, t[k].text);
      if (value == null) return null;
      out.add(value);
      continue;
    }
    if (t[k].kind == GoTok.ident &&
        k + 2 < close &&
        t[k + 1].text == '.' &&
        t[k + 2].kind == GoTok.ident &&
        (k + 3 == close || t[k + 3].text == ',')) {
      final importPath = imports[t[k].text];
      final value = importPath == null
          ? null
          : index.constant(importPath, t[k + 2].text);
      if (value == null) return null;
      out.add(value);
      k += 2;
      continue;
    }
    if (t[k].kind == GoTok.ident && t[k].text != 'string') return null;
  }
  return out;
}

int _skipValue(List<GoToken> t, int i, int end) {
  if (i >= end) return i;
  final close = goClosers[t[i].text];
  if (close == null) return i + 1;
  var depth = 0;
  for (var j = i; j < end; j++) {
    if (t[j].text == t[i].text) depth++;
    if (t[j].text == close) {
      depth--;
      if (depth == 0) return j + 1;
    }
  }
  return end;
}

final class _PackageIndex {
  _PackageIndex(this.root, this.module);

  final Directory root;
  final String module;
  final _loaded = <String, _Package>{};

  List<String>? possible(String importPath, String name) =>
      _package(importPath).funcs[name];

  List<String>? lookup(String importPath, String name) =>
      _package(importPath).funcs[name] ?? _package(importPath).vars[name];

  String? constant(String importPath, String name) =>
      _package(importPath).consts[name];

  _Package _package(String importPath) {
    final existing = _loaded[importPath];
    if (existing != null) return existing;
    final pkg = _Package();
    _loaded[importPath] = pkg;
    final dir = _dir(importPath);
    if (dir == null || !dir.existsSync()) return pkg;
    final files =
        dir
            .listSync()
            .whereType<File>()
            .where(
              (f) => f.path.endsWith('.go') && !f.path.endsWith('_test.go'),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    final tokenized = [
      for (final file in files)
        if (file.readAsStringSync() case final src)
          (tokens: tokenizeGo(src), imports: parseGoImports(src)),
    ];
    for (final (:tokens, imports: _) in tokenized) {
      _readConstDecls(pkg, tokens);
    }
    for (final (:tokens, :imports) in tokenized) {
      _readVars(pkg, tokens, importPath, imports);
    }
    for (final (:tokens, :imports) in tokenized) {
      _readSliceFuncs(pkg, tokens, importPath, imports);
    }
    return pkg;
  }

  Directory? _dir(String importPath) {
    if (importPath.startsWith('$module/')) {
      return Directory(
        p.join(root.path, importPath.substring(module.length + 1)),
      );
    }
    final vendored = Directory(p.join(root.path, 'vendor', importPath));
    if (vendored.existsSync()) return vendored;
    return null;
  }

  void _readConstDecls(_Package pkg, List<GoToken> t) {
    for (var i = 0; i < t.length; i++) {
      if (t[i].text != 'const') continue;
      if (i + 1 < t.length && t[i + 1].text == '(') {
        final close = _matchParen(t, i + 1);
        _readConsts(pkg, t, i + 2, close);
        i = close;
      } else {
        i = _readOneConst(pkg, t, i + 1);
      }
    }
  }

  void _readVars(
    _Package pkg,
    List<GoToken> t,
    String importPath,
    Map<String, String> imports,
  ) {
    for (var i = 0; i < t.length; i++) {
      if (t[i].text != 'var') continue;
      if (i + 1 < t.length && t[i + 1].text == '(') {
        final close = _matchParen(t, i + 1);
        _readConsts(pkg, t, i + 2, close);
        i = close;
        continue;
      }
      if (i + 1 >= t.length || t[i + 1].kind != GoTok.ident) continue;
      final name = t[i + 1].text;
      _readOneConst(pkg, t, i + 1);
      final brace = _sliceBrace(t, i + 2);
      if (brace == null) continue;
      final values = _elements(t, brace, this, importPath, imports);
      if (values != null && values.isNotEmpty) pkg.vars[name] = values;
    }
  }

  /// `func Name() []string { return []string{...} }`: a function whose
  /// whole body returns one slice literal.
  void _readSliceFuncs(
    _Package pkg,
    List<GoToken> t,
    String importPath,
    Map<String, String> imports,
  ) {
    for (var i = 0; i + 8 < t.length; i++) {
      if (t[i].text != 'func' ||
          t[i + 1].kind != GoTok.ident ||
          t[i + 2].text != '(' ||
          t[i + 3].text != ')' ||
          t[i + 4].text != '[' ||
          t[i + 5].text != ']' ||
          t[i + 6].text != 'string' ||
          t[i + 7].text != '{' ||
          t[i + 8].text != 'return') {
        continue;
      }
      final name = t[i + 1].text;
      final close = _matchBrace(t, i + 7);
      final brace = _sliceBrace(t, i + 9, close);
      if (brace != null && _matchBrace(t, brace) + 1 == close) {
        final values = _elements(t, brace, this, importPath, imports);
        if (values != null && values.isNotEmpty) pkg.funcs[name] = values;
      }
      i = close;
    }
  }
}

final class _Package {
  final consts = <String, String>{};
  final funcs = <String, List<String>>{};
  final vars = <String, List<String>>{};
}

void _readConsts(_Package pkg, List<GoToken> t, int start, int end) {
  var i = start;
  while (i < end) {
    i = _readOneConst(pkg, t, i);
  }
}

int _readOneConst(_Package pkg, List<GoToken> t, int i) {
  if (i >= t.length || t[i].kind != GoTok.ident) return i + 1;
  final name = t[i].text;
  var j = i + 1;
  if (j < t.length && t[j].kind == GoTok.ident) j++;
  if (j + 1 < t.length && t[j].text == '=' && t[j + 1].kind == GoTok.string) {
    pkg.consts[name] = t[j + 1].text;
    return j + 2;
  }
  return i + 1;
}

int _matchParen(List<GoToken> t, int open) {
  var depth = 0;
  for (var k = open; k < t.length; k++) {
    if (t[k].text == '(') depth++;
    if (t[k].text == ')') {
      depth--;
      if (depth == 0) return k;
    }
  }
  return t.length - 1;
}

int? _sliceBrace(List<GoToken> t, int from, [int? end]) {
  final stop = end ?? t.length;
  var saw = false;
  for (var j = from; j < stop && j < from + 20; j++) {
    if (t[j].text == '[' &&
        j + 2 < t.length &&
        t[j + 1].text == ']' &&
        t[j + 2].text == 'string') {
      saw = true;
    }
    if (saw && t[j].text == '{') return j;
  }
  return null;
}
