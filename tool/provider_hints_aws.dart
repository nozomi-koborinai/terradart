// tool/provider_hints_aws.dart
//
// The hashicorp/aws scanner behind tool/extract_provider_hints.dart.
//
// The AWS provider is hand-written (SDKv2 and plugin framework side by
// side), so there is no one schema file per resource:
//
// - A resource is the function an `// @SDKResource("aws_x", ...)` /
//   `// @FrameworkResource("aws_x", ...)` annotation sits on. For a
//   framework resource the schema is the `Schema` method of the struct the
//   constructor returns (`&xResource{...}`).
// - Attribute keys are string literals or `names.Attr*` constants; nested
//   schemas often come from package helper functions, which are followed
//   from the call site with the keys open there.
// - A value set is `enum.Validate[T]()` (and its IgnoreCase / Framework
//   forms), `fwtypes.StringEnumType[T]()` (and the list / set forms),
//   `validation.StringInSlice(...)` or `stringvalidator.OneOf(...)`. `T` is
//   an aws-sdk-go-v2 `types` enum whose `Values()` lists the members
//   (Smithy-generated `types/enums.go`, read at the module version the
//   provider's go.mod requires) or a provider type with its own `Values()`.
//   Slice arguments are evaluated over literals, constants, `Values()`,
//   `enum.Values`, `enum.Slice`, `append` and local `*_Values()` helpers; a
//   set with any part that does not evaluate is dropped, never guessed.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

import 'extract_provider_hints.dart';

/// Whether [root] is a hashicorp/aws source tree.
bool isAwsProviderSource(Directory root) =>
    Directory(p.join(root.path, 'internal', 'service')).existsSync() &&
    Directory(p.join(root.path, 'names')).existsSync();

/// One Go function or method: its body tokens and the imports of the file
/// that declares it.
final class GoFunc {
  const GoFunc({
    required this.body,
    required this.imports,
    required this.file,
  });

  final List<GoToken> body;

  /// Import alias → import path.
  final Map<String, String> imports;
  final String file;
}

/// A Go package reduced to what a value set is computed from: its string
/// constants and its functions (`name`, or `Receiver.name` for a method).
final class GoPackage {
  final Map<String, String> consts = {};
  final Map<String, GoFunc> funcs = {};

  /// Declarations annotated `@SDKResource` / `@FrameworkResource`: function
  /// name → Terraform types.
  final Map<String, List<String>> resourceFuncs = {};

  void addFile(String src, {required String file}) {
    final imports = parseGoImports(src);
    for (final m in _annotatedFunc.allMatches(src)) {
      final types = [
        for (final a in _resourceAnnotation.allMatches(m.group(1)!))
          a.group(2)!,
      ];
      if (types.isNotEmpty) {
        (resourceFuncs[m.group(2)!] ??= []).addAll(types);
      }
    }
    final toks = tokenizeGo(src);
    var i = 0;
    while (i < toks.length) {
      final t = toks[i];
      if (_isIdent(toks, i, 'func')) {
        final end = _addFunc(toks, i + 1, imports, file);
        i = end;
        continue;
      }
      if (_isIdent(toks, i, 'const')) {
        if (_isPunct(toks, i + 1, '(')) {
          final close = _matching(toks, i + 1);
          _addConsts(toks, i + 2, close);
          i = close + 1;
        } else {
          _addConsts(toks, i + 1, i + 7 < toks.length ? i + 7 : toks.length);
          i++;
        }
        continue;
      }
      if (t.kind == GoTok.punct && goClosers.containsKey(t.text)) {
        i = _matching(toks, i) + 1;
        continue;
      }
      i++;
    }
  }

  int _addFunc(
    List<GoToken> toks,
    int i,
    Map<String, String> imports,
    String file,
  ) {
    String? receiver;
    if (_isPunct(toks, i, '(')) {
      final close = _matching(toks, i);
      for (var k = close - 1; k > i; k--) {
        if (toks[k].kind == GoTok.ident) {
          receiver = toks[k].text;
          break;
        }
      }
      i = close + 1;
    }
    if (i >= toks.length || toks[i].kind != GoTok.ident) return i;
    final name = toks[i].text;
    var k = i + 1;
    while (k < toks.length) {
      final u = toks[k];
      if (u.kind == GoTok.punct && (u.text == '(' || u.text == '[')) {
        k = _matching(toks, k) + 1;
        continue;
      }
      if (_isPunct(toks, k, '{')) {
        final prev = toks[k - 1];
        if (prev.kind == GoTok.ident &&
            (prev.text == 'interface' || prev.text == 'struct')) {
          k = _matching(toks, k) + 1;
          continue;
        }
        break;
      }
      if (_isIdent(toks, k, 'func') || _isIdent(toks, k, 'type')) return k;
      k++;
    }
    if (k >= toks.length) return k;
    final close = _matching(toks, k);
    funcs[receiver == null ? name : '$receiver.$name'] = GoFunc(
      body: toks.sublist(k + 1, close),
      imports: imports,
      file: file,
    );
    return close + 1;
  }

  void _addConsts(List<GoToken> toks, int from, int to) {
    var j = from;
    while (j < to) {
      if (toks[j].kind != GoTok.ident) {
        j++;
        continue;
      }
      // NAME = "v" | NAME T = "v" | NAME pkg.T = "v"
      final eq = _isPunct(toks, j + 1, '=')
          ? j + 1
          : _isIdent(toks, j + 1) && _isPunct(toks, j + 2, '=')
              ? j + 2
              : _isIdent(toks, j + 1) &&
                      _isPunct(toks, j + 2, '.') &&
                      _isIdent(toks, j + 3) &&
                      _isPunct(toks, j + 4, '=')
                  ? j + 4
                  : -1;
      if (eq > 0 && eq + 1 < to && toks[eq + 1].kind == GoTok.string) {
        consts[toks[j].text] = toks[eq + 1].text;
        j = eq + 2;
        continue;
      }
      j++;
    }
  }
}

final _annotatedFunc = RegExp(
  r'((?:^//[^\n]*\n)+)func\s+(?:\([^)]*\)\s*)?(\w+)',
  multiLine: true,
);
final _resourceAnnotation =
    RegExp(r'@(SDKResource|FrameworkResource)\("([a-z0-9_]+)"');
final _importBlock = RegExp(r'^import\s*\(([^)]*)\)', multiLine: true);
final _importLine = RegExp(r'^\s*(\w+|\.|_)?\s*"([^"]+)"', multiLine: true);
final _importSingle =
    RegExp(r'^import\s+(\w+|\.|_)?\s*"([^"]+)"', multiLine: true);

/// A Go file's imports: alias (or the path's last element) → path.
Map<String, String> parseGoImports(String src) {
  final out = <String, String>{};
  void add(String? alias, String path) =>
      out[alias ?? path.split('/').last] = path;
  for (final b in _importBlock.allMatches(src)) {
    for (final m in _importLine.allMatches(b.group(1)!)) {
      add(m.group(1), m.group(2)!);
    }
  }
  for (final m in _importSingle.allMatches(src)) {
    add(m.group(1), m.group(2)!);
  }
  return out;
}

bool _isPunct(List<GoToken> t, int i, String s) =>
    i >= 0 && i < t.length && t[i].kind == GoTok.punct && t[i].text == s;

bool _isIdent(List<GoToken> t, int i, [String? s]) =>
    i >= 0 &&
    i < t.length &&
    t[i].kind == GoTok.ident &&
    (s == null || t[i].text == s);

/// Index of the bracket closing the one at [open] (or the end).
int _matching(List<GoToken> t, int open) {
  var depth = 0;
  for (var k = open; k < t.length; k++) {
    final u = t[k];
    if (u.kind != GoTok.punct) continue;
    if (goClosers.containsKey(u.text)) depth++;
    if (goClosers.containsValue(u.text) && --depth == 0) return k;
  }
  return t.length - 1;
}

/// Evaluates value-set expressions against the loaded packages.
final class _Evaluator {
  _Evaluator(this.packages);

  /// Import path → package.
  final Map<String, GoPackage> packages;

  List<String>? typeValues(GoPackage pkg, String type, [int depth = 0]) {
    final f = pkg.funcs['$type.Values'];
    return f == null ? null : returned(pkg, f, depth + 1);
  }

  List<String>? returned(GoPackage pkg, GoFunc f, int depth) {
    if (depth > 8) return null;
    final at = f.body.indexWhere(
      (t) => t.kind == GoTok.ident && t.text == 'return',
    );
    if (at < 0) return null;
    final r = expr(f.body, at + 1, pkg, f.imports, depth);
    return r?.values;
  }

  GoPackage? _pkg(Map<String, String> imports, String alias) {
    final path = imports[alias];
    return path == null ? null : packages[path];
  }

  /// `T` or `pkg.T` at [i]: the package and type name, and the index after.
  (GoPackage, String, int)? typeRef(
    List<GoToken> t,
    int i,
    GoPackage self,
    Map<String, String> imports,
  ) {
    if (!_isIdent(t, i)) return null;
    if (_isPunct(t, i + 1, '.') && _isIdent(t, i + 2)) {
      final pkg = _pkg(imports, t[i].text);
      return pkg == null ? null : (pkg, t[i + 2].text, i + 3);
    }
    return (self, t[i].text, i + 1);
  }

  /// Comma-separated expressions from [i] up to the bracket at [close],
  /// concatenated; each may carry a `...` spread.
  List<String>? list(
    List<GoToken> t,
    int i,
    int close,
    GoPackage self,
    Map<String, String> imports,
    int depth,
  ) {
    final out = <String>[];
    while (i < close) {
      final r = expr(t, i, self, imports, depth);
      if (r == null) return null;
      out.addAll(r.values);
      i = r.end;
      if (_isPunct(t, i, '.') &&
          _isPunct(t, i + 1, '.') &&
          _isPunct(t, i + 2, '.')) {
        i += 3;
      }
      if (_isPunct(t, i, ',')) {
        i++;
      } else if (i != close) {
        return null;
      }
    }
    return out;
  }

  ({List<String> values, int end})? expr(
    List<GoToken> t,
    int i,
    GoPackage self,
    Map<String, String> imports,
    int depth,
  ) {
    if (i >= t.length || depth > 8) return null;
    final tok = t[i];
    if (tok.kind == GoTok.string) return (values: [tok.text], end: i + 1);
    // []T{a, b}
    if (_isPunct(t, i, '[') && _isPunct(t, i + 1, ']')) {
      var k = i + 2;
      while (k < t.length && !_isPunct(t, k, '{')) {
        if (!_isIdent(t, k) && !_isPunct(t, k, '.')) return null;
        k++;
      }
      final close = _matching(t, k);
      final v = list(t, k + 1, close, self, imports, depth);
      return v == null ? null : (values: v, end: close + 1);
    }
    if (!_isIdent(t, i)) return null;
    final name = tok.text;
    if ((name == 'append' || name == 'string') && _isPunct(t, i + 1, '(')) {
      final close = _matching(t, i + 1);
      final v = list(t, i + 2, close, self, imports, depth);
      return v == null ? null : (values: v, end: close + 1);
    }
    if (name == 'enum' && _isPunct(t, i + 1, '.') && _isIdent(t, i + 2)) {
      final fn = t[i + 2].text;
      if (fn == 'Values' && _isPunct(t, i + 3, '[')) {
        final ref = typeRef(t, i + 4, self, imports);
        if (ref == null || !_isPunct(t, ref.$3, ']')) return null;
        final v = typeValues(ref.$1, ref.$2, depth);
        final call = ref.$3 + 1;
        if (v == null || !_isPunct(t, call, '(')) return null;
        return (values: v, end: _matching(t, call) + 1);
      }
      if (fn == 'Slice' && _isPunct(t, i + 3, '(')) {
        final close = _matching(t, i + 3);
        final v = list(t, i + 4, close, self, imports, depth);
        return v == null ? null : (values: v, end: close + 1);
      }
      return null;
    }
    // pkg.X
    if (_isPunct(t, i + 1, '.') && _isIdent(t, i + 2)) {
      final pkg = _pkg(imports, name);
      if (pkg == null) return null;
      return _member(t, i + 2, pkg, imports, depth);
    }
    return _member(t, i, self, imports, depth);
  }

  /// `X` in [pkg] at [i]: `X("").Values()`, `X()` (a helper returning a
  /// set), `X(expr)` (a conversion) or the constant `X`.
  ({List<String> values, int end})? _member(
    List<GoToken> t,
    int i,
    GoPackage pkg,
    Map<String, String> imports,
    int depth,
  ) {
    final name = t[i].text;
    if (_isPunct(t, i + 1, '(')) {
      final close = _matching(t, i + 1);
      if (_isPunct(t, close + 1, '.') &&
          _isIdent(t, close + 2, 'Values') &&
          _isPunct(t, close + 3, '(')) {
        final v = typeValues(pkg, name, depth);
        return v == null ? null : (values: v, end: _matching(t, close + 3) + 1);
      }
      final fn = pkg.funcs[name];
      if (fn != null) {
        if (close != i + 2) return null;
        final v = returned(pkg, fn, depth + 1);
        return v == null ? null : (values: v, end: close + 1);
      }
      final inner = list(t, i + 2, close, pkg, imports, depth);
      return inner == null || inner.length != 1
          ? null
          : (values: inner, end: close + 1);
    }
    final c = pkg.consts[name];
    return c == null ? null : (values: [c], end: i + 1);
  }
}

const _enumTypeValidators = {
  'Validate',
  'ValidateIgnoreCase',
  'FrameworkValidate',
  'FrameworkValidateIgnoreCase',
};
const _anyValidators = {
  'stringvalidator',
  'listvalidator',
  'setvalidator',
};
const _enumCustomTypes = {
  'StringEnumType',
  'SetOfStringEnumType',
  'ListOfStringEnumType',
};

/// One value set found in a function, relative to the function's keys.
typedef _LocalHint = ({List<String> path, List<String> values, bool ci});

/// A call to a package function, with the keys open at the call site.
typedef _Call = ({List<String> path, String callee});

/// One member of an exactly-one group: a path from the resource root
/// ([abs]) or from the function's root.
typedef _Member = ({List<String> path, bool abs});

final class _FuncScan {
  final hints = <_LocalHint>[];
  final calls = <_Call>[];
  final groups = <List<_Member>>[];
  var unresolved = 0;
  var unresolvedGroups = 0;
  var openSets = 0;
}

const _exactlyOneValidators = {
  'boolvalidator',
  'int64validator',
  'listvalidator',
  'objectvalidator',
  'setvalidator',
  'stringvalidator',
};

/// Scans one function body: value sets under attribute keys and calls to
/// package helpers.
_FuncScan _scanFunc(
  GoFunc f,
  GoPackage self,
  GoPackage names,
  _Evaluator eval,
) {
  final t = f.body;
  final scan = _FuncScan();
  final frames = <({String? key, String closer})>[];
  List<String> openKeys() => [
        for (final fr in frames)
          if (fr.key != null) fr.key!,
      ];

  /// The attribute key ending at the `:` at [colon], if any.
  String? keyBefore(int colon) {
    if (!_isPunct(t, colon, ':')) return null;
    if (colon >= 1 && t[colon - 1].kind == GoTok.string) {
      return t[colon - 1].text;
    }
    if (colon >= 3 &&
        _isIdent(t, colon - 1) &&
        _isPunct(t, colon - 2, '.') &&
        _isIdent(t, colon - 3, 'names')) {
      return names.consts[t[colon - 1].text];
    }
    return null;
  }

  void add(List<String>? values, bool ci) {
    final path = openKeys();
    if (values == null) {
      scan.unresolved++;
    } else if (path.isNotEmpty && values.isNotEmpty) {
      scan.hints.add((path: path, values: values, ci: ci));
    }
  }

  var i = 0;
  while (i < t.length) {
    final tok = t[i];
    if (tok.kind == GoTok.punct && tok.text == ':') {
      final key = keyBefore(i);
      if (key != null) {
        var k = i + 1;
        if (_isPunct(t, k, '&')) k++;
        if (_isPunct(t, k, '{')) {
          frames.add((key: key, closer: '}'));
          i = k + 1;
          continue;
        }
        if (_isIdent(t, k) &&
            _isPunct(t, k + 1, '.') &&
            _isIdent(t, k + 2) &&
            _isPunct(t, k + 3, '{')) {
          frames.add((key: key, closer: '}'));
          i = k + 4;
          continue;
        }
      }
    }
    // `validation.Any(...)` / `<kind>validator.Any(...)`: a value set
    // there is one alternative among others (`""`, an ARN, a name
    // pattern), so the input is not closed over it.
    if (tok.kind == GoTok.ident &&
        (tok.text == 'validation' || _anyValidators.contains(tok.text)) &&
        _isPunct(t, i + 1, '.') &&
        (_isIdent(t, i + 2, 'Any') ||
            _isIdent(t, i + 2, 'AnyWithAllWarnings')) &&
        _isPunct(t, i + 3, '(')) {
      scan.openSets++;
      i = _matching(t, i + 3) + 1;
      continue;
    }
    if (_isIdent(t, i, 'enum') &&
        _isPunct(t, i + 1, '.') &&
        _isIdent(t, i + 2) &&
        _enumTypeValidators.contains(t[i + 2].text) &&
        _isPunct(t, i + 3, '[')) {
      final ref = eval.typeRef(t, i + 4, self, f.imports);
      add(
        ref == null ? null : eval.typeValues(ref.$1, ref.$2),
        t[i + 2].text.endsWith('IgnoreCase'),
      );
      i = _matching(t, i + 3) + 1;
      continue;
    }
    if (_isIdent(t, i, 'fwtypes') &&
        _isPunct(t, i + 1, '.') &&
        _isIdent(t, i + 2) &&
        _enumCustomTypes.contains(t[i + 2].text) &&
        _isPunct(t, i + 3, '[')) {
      final ref = eval.typeRef(t, i + 4, self, f.imports);
      add(ref == null ? null : eval.typeValues(ref.$1, ref.$2), false);
      i = _matching(t, i + 3) + 1;
      continue;
    }
    // SDKv2: `ExactlyOneOf: []string{"a", "b.0.c"}`, paths from the root.
    if (_isIdent(t, i, 'ExactlyOneOf') && _isPunct(t, i + 1, ':')) {
      final r = eval.expr(t, i + 2, self, f.imports, 0);
      if (r == null) {
        scan.unresolvedGroups++;
        i += 2;
      } else {
        scan.groups.add([
          for (final v in r.values)
            (
              path: [
                for (final s in v.split('.'))
                  if (int.tryParse(s) == null) s,
              ],
              abs: true,
            ),
        ]);
        i = r.end;
      }
      continue;
    }
    // Framework: `resourcevalidator.ExactlyOneOf(path.MatchRoot(...), ...)`
    // in ConfigValidators, or `<kind>validator.ExactlyOneOf(...)` on an
    // attribute, which counts the attribute itself as a member.
    if (tok.kind == GoTok.ident &&
        (tok.text == 'resourcevalidator' ||
            _exactlyOneValidators.contains(tok.text)) &&
        _isPunct(t, i + 1, '.') &&
        _isIdent(t, i + 2, 'ExactlyOneOf') &&
        _isPunct(t, i + 3, '(')) {
      final close = _matching(t, i + 3);
      final here = openKeys();
      final members = _pathExprs(t, i + 4, close, here, names);
      if (members == null) {
        scan.unresolvedGroups++;
      } else {
        scan.groups.add([
          if (tok.text != 'resourcevalidator') (path: here, abs: false),
          ...members,
        ]);
      }
      i = close + 1;
      continue;
    }
    if (_isIdent(t, i, 'validation') &&
        _isPunct(t, i + 1, '.') &&
        _isIdent(t, i + 2, 'StringInSlice') &&
        _isPunct(t, i + 3, '(')) {
      final close = _matching(t, i + 3);
      final r = eval.expr(t, i + 4, self, f.imports, 0);
      final ok = r != null &&
          _isPunct(t, r.end, ',') &&
          _isIdent(t, r.end + 1) &&
          r.end + 2 == close;
      add(ok ? r.values : null, ok && t[r.end + 1].text == 'true');
      i = close + 1;
      continue;
    }
    if (_isIdent(t, i, 'stringvalidator') &&
        _isPunct(t, i + 1, '.') &&
        (_isIdent(t, i + 2, 'OneOf') ||
            _isIdent(t, i + 2, 'OneOfCaseInsensitive')) &&
        _isPunct(t, i + 3, '(')) {
      final close = _matching(t, i + 3);
      add(
        eval.list(t, i + 4, close, self, f.imports, 0),
        t[i + 2].text == 'OneOfCaseInsensitive',
      );
      i = close + 1;
      continue;
    }
    if (tok.kind == GoTok.ident &&
        _isPunct(t, i + 1, '(') &&
        !_isPunct(t, i - 1, '.') &&
        self.funcs.containsKey(tok.text)) {
      final key = keyBefore(i - 1);
      final call = (
        path: [...openKeys(), if (key != null) key],
        callee: tok.text,
      );
      scan.calls.add(call);
    }
    if (tok.kind == GoTok.punct) {
      final closer = goClosers[tok.text];
      if (closer != null) {
        frames.add((key: null, closer: closer));
      } else if (goClosers.containsValue(tok.text) && frames.isNotEmpty) {
        frames.removeLast();
      }
    }
    i++;
  }
  return scan;
}

/// An attribute key at [i] — a string literal or `names.Attr*` — and the
/// index after it.
(String, int)? _keyAt(List<GoToken> t, int i, GoPackage names) {
  if (i < t.length && t[i].kind == GoTok.string) return (t[i].text, i + 1);
  if (_isIdent(t, i, 'names') &&
      _isPunct(t, i + 1, '.') &&
      _isIdent(t, i + 2)) {
    final v = names.consts[t[i + 2].text];
    return v == null ? null : (v, i + 3);
  }
  return null;
}

/// The comma-separated path expressions from [i] up to [close], optionally
/// wrapped in `path.Expressions{...}`: `path.MatchRoot(k)` (from the
/// resource root) or `path.MatchRelative()` (from [here], the attribute the
/// validator sits on), each followed by `.AtParent()` / `.AtName(k)` /
/// list-index steps. Null when any part is something else.
List<_Member>? _pathExprs(
  List<GoToken> t,
  int i,
  int close,
  List<String> here,
  GoPackage names,
) {
  if (_isIdent(t, i, 'path') &&
      _isPunct(t, i + 1, '.') &&
      _isIdent(t, i + 2, 'Expressions') &&
      _isPunct(t, i + 3, '{')) {
    final inner = _matching(t, i + 3);
    if (inner + 1 != close &&
        !(inner + 2 == close && _isPunct(t, inner + 1, ','))) {
      return null;
    }
    return _pathExprs(t, i + 4, inner, here, names);
  }
  final out = <_Member>[];
  while (i < close) {
    if (!_isIdent(t, i, 'path') || !_isPunct(t, i + 1, '.')) return null;
    final List<String> path;
    final bool abs;
    if (_isIdent(t, i + 2, 'MatchRoot') && _isPunct(t, i + 3, '(')) {
      final key = _keyAt(t, i + 4, names);
      if (key == null || !_isPunct(t, key.$2, ')')) return null;
      path = [key.$1];
      abs = true;
      i = key.$2 + 1;
    } else if (_isIdent(t, i + 2, 'MatchRelative') &&
        _isPunct(t, i + 3, '(') &&
        _isPunct(t, i + 4, ')')) {
      path = [...here];
      abs = false;
      i += 5;
    } else {
      return null;
    }
    while (
        _isPunct(t, i, '.') && _isIdent(t, i + 1) && _isPunct(t, i + 2, '(')) {
      final step = t[i + 1].text;
      final end = _matching(t, i + 2);
      if (step == 'AtParent' && end == i + 3) {
        if (path.isEmpty) return null;
        path.removeLast();
      } else if (step == 'AtName') {
        final key = _keyAt(t, i + 3, names);
        if (key == null || key.$2 != end) return null;
        path.add(key.$1);
      } else if (step != 'AtListIndex' &&
          step != 'AtAnyListIndex' &&
          step != 'AtAnySetValue') {
        return null;
      }
      i = end + 1;
    }
    out.add((path: path, abs: abs));
    if (_isPunct(t, i, ',')) {
      i++;
    } else if (i != close) {
      return null;
    }
  }
  return out;
}

/// Every aws-sdk-go-v2 service `types` package the provider imports, with
/// the module version its go.mod requires: import path → (module, version).
Map<String, ({String module, String version})> awsSdkTypesModules(
  Directory root,
) {
  final gomod = File(p.join(root.path, 'go.mod')).readAsStringSync();
  final versions = {
    for (final m in RegExp(
      r'^\s*(?:require\s+)?(github\.com/aws/aws-sdk-go-v2/service/[a-z0-9]+)\s+(v\S+)',
      multiLine: true,
    ).allMatches(gomod))
      m.group(1)!: m.group(2)!,
  };
  final out = <String, ({String module, String version})>{};
  for (final f in _goFiles(Directory(p.join(root.path, 'internal')))) {
    for (final path in parseGoImports(f.readAsStringSync()).values) {
      final m =
          RegExp(r'^(github\.com/aws/aws-sdk-go-v2/service/[a-z0-9]+)/types$')
              .firstMatch(path);
      final version = m == null ? null : versions[m.group(1)];
      if (version != null) {
        out[path] = (module: m!.group(1)!, version: version);
      }
    }
  }
  return out;
}

/// `<sdkDir>/<module subpath>/types/enums.go` for [path].
String sdkEnumsFile(String sdkDir, String typesImportPath) => p.join(
      sdkDir,
      typesImportPath.replaceFirst('github.com/aws/aws-sdk-go-v2/', ''),
      'enums.go',
    );

/// Downloads each module's `types/enums.go` at its go.mod version into
/// [sdkDir] (a module without one has no enums and is skipped).
Future<void> downloadAwsSdkEnums(
  Map<String, ({String module, String version})> modules,
  String sdkDir,
) async {
  final client = HttpClient();
  try {
    final pending = modules.entries.toList();
    Future<void> worker() async {
      while (pending.isNotEmpty) {
        final e = pending.removeLast();
        final sub =
            e.value.module.replaceFirst('github.com/aws/aws-sdk-go-v2/', '');
        final url = Uri.parse(
          'https://raw.githubusercontent.com/aws/aws-sdk-go-v2/'
          '$sub/${e.value.version}/$sub/types/enums.go',
        );
        final response = await (await client.getUrl(url)).close();
        if (response.statusCode == 404) {
          await response.drain<void>();
          continue;
        }
        if (response.statusCode != 200) {
          throw HttpException('GET $url: HTTP ${response.statusCode}');
        }
        final out = File(sdkEnumsFile(sdkDir, e.key))
          ..parent.createSync(recursive: true);
        await response.pipe(out.openWrite());
      }
    }

    await Future.wait([for (var k = 0; k < 16; k++) worker()]);
  } finally {
    client.close();
  }
}

Iterable<File> _goFiles(Directory dir) => dir
    .listSync(recursive: true)
    .whereType<File>()
    .where((f) => f.path.endsWith('.go') && !f.path.endsWith('_test.go'));

/// The result of scanning the AWS provider source.
final class AwsHintsScan {
  AwsHintsScan(this.byType);

  /// Terraform type → the file that declares it, its hints and its
  /// exactly-one and at-most-one groups (member paths from the resource
  /// root).
  final Map<String, AwsTypeHints> byType;
  var validators = 0;
  var unresolved = 0;
  var groupValidators = 0;
  var unresolvedGroups = 0;

  /// `Any(...)` validators skipped: a value set among alternatives.
  var openSets = 0;
}

/// What [scanAwsProvider] found for one Terraform type.
typedef AwsTypeHints = ({
  String sourcePath,
  List<GoEnumHint> hints,
  List<List<List<String>>> groups,
  List<List<List<String>>> atMostOne,
});

/// Scans hashicorp/aws at [root], with SDK enums read from [sdkDir].
AwsHintsScan scanAwsProvider(Directory root, {required String sdkDir}) {
  final module = RegExp(r'^module\s+(\S+)', multiLine: true)
      .firstMatch(File(p.join(root.path, 'go.mod')).readAsStringSync())!
      .group(1)!;
  final packages = <String, GoPackage>{};
  GoPackage load(Directory dir, String importPath) {
    final pkg = GoPackage();
    final files = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.go') && !f.path.endsWith('_test.go'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      pkg.addFile(
        f.readAsStringSync(),
        file: p.relative(f.path, from: root.path),
      );
    }
    return packages[importPath] = pkg;
  }

  final names = load(Directory(p.join(root.path, 'names')), '$module/names');
  final sdk = Directory(sdkDir);
  if (sdk.existsSync()) {
    for (final f in _goFiles(sdk)) {
      final rel = p.relative(p.dirname(f.path), from: sdkDir);
      final path = 'github.com/aws/aws-sdk-go-v2/${p.split(rel).join('/')}';
      (packages[path] ??= GoPackage())
          .addFile(f.readAsStringSync(), file: f.path);
    }
  }
  final services = Directory(p.join(root.path, 'internal', 'service'))
      .listSync()
      .whereType<Directory>()
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  final servicePkgs = {
    for (final dir in services)
      dir: load(dir, '$module/internal/service/${p.basename(dir.path)}'),
  };
  final eval = _Evaluator(packages);
  final result = AwsHintsScan({});

  for (final pkg in servicePkgs.values) {
    final scans = <String, _FuncScan>{};
    _FuncScan scanOf(String key) => scans[key] ??= () {
          final s = _scanFunc(pkg.funcs[key]!, pkg, names, eval);
          result.validators += s.hints.length + s.unresolved;
          result.unresolved += s.unresolved;
          result.groupValidators += s.groups.length + s.unresolvedGroups;
          result.unresolvedGroups += s.unresolvedGroups;
          result.openSets += s.openSets;
          return s;
        }();
    ({List<_LocalHint> hints, List<List<_Member>> groups}) expand(
      String key,
      Set<String> seen,
    ) {
      if (!pkg.funcs.containsKey(key) || !seen.add(key)) {
        return (hints: const [], groups: const []);
      }
      final s = scanOf(key);
      final hints = [...s.hints];
      final groups = [...s.groups];
      for (final c in s.calls) {
        final inner = expand(c.callee, {...seen});
        for (final h in inner.hints) {
          hints.add((path: [...c.path, ...h.path], values: h.values, ci: h.ci));
        }
        for (final g in inner.groups) {
          groups.add([
            for (final m in g)
              m.abs ? m : (path: [...c.path, ...m.path], abs: false),
          ]);
        }
      }
      return (hints: hints, groups: groups);
    }

    for (final MapEntry(key: fn, value: types) in pkg.resourceFuncs.entries) {
      final ctor = pkg.funcs[fn];
      if (ctor == null) continue;
      final roots = [fn];
      for (var k = 0; k + 2 < ctor.body.length; k++) {
        if (_isPunct(ctor.body, k, '&') &&
            _isIdent(ctor.body, k + 1) &&
            _isPunct(ctor.body, k + 2, '{') &&
            pkg.funcs.containsKey('${ctor.body[k + 1].text}.Schema')) {
          final struct = ctor.body[k + 1].text;
          roots.add('$struct.Schema');
          if (pkg.funcs.containsKey('$struct.ConfigValidators')) {
            roots.add('$struct.ConfigValidators');
          }
          break;
        }
      }
      final byPath = <String, GoEnumHint>{};
      final groups = <String, List<List<String>>>{};
      for (final root in roots) {
        final found = expand(root, {});
        for (final h in found.hints) {
          byPath.putIfAbsent(
            h.path.join('.'),
            () => GoEnumHint(
              path: h.path,
              values: h.values,
              caseInsensitive: h.ci,
            ),
          );
        }
        for (final g in found.groups) {
          final members = {for (final m in g) m.path.join('.')}.toList()
            ..sort();
          if (members.length < 2) continue;
          groups.putIfAbsent(
            members.join(','),
            () => [for (final m in members) m.split('.')],
          );
        }
      }
      for (final type in types) {
        result.byType[type] = (
          sourcePath: ctor.file,
          hints: byPath.values.toList(),
          groups: groups.values.toList(),
          atMostOne: const [],
        );
      }
    }
  }
  return result;
}
