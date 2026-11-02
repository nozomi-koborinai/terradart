// doc_renames.dart — fails when a doc names a Dart symbol the public API no
// longer has, so a guide cannot keep teaching a type or getter an upgrade
// removed.
//
// Run from repo root: dart tool/doc_renames.dart
// tool/doc_renames_test.dart runs the same check (CI: `dart test tool/`).
//
// The public API is what a dependent can import: the analyzer's export
// namespace of each package's entrypoints (its `lib/` libraries outside
// `lib/src/`), for every workspace package but `terradart_codegen` and for
// the packages of the last release, plus the SDK's `dart:` libraries. A
// declaration under `lib/src/` that no entrypoint exports is not API.
//
// A doc may name only the public API. A type, `Type.member` or top-level
// name a workspace package declares but no entrypoint exports is internal
// (`AppExportsEmitter`), and naming it fails like naming a removed one.
//
// A removed symbol is one the public API no longer declares, and that either
//
// - MIGRATING.md names in a backtick span (prose, any table cell, indented
//   tables included): a type (`OldName`, `Foo<Bar>`, `OldName(...)`, outside
//   string literals), a member through its type (`Type.member`), or a whole
//   lowerCamel span (`addExport`), or
// - the last release on pub.dev declared: a type, a member of a type
//   (`Type.member`; constructors, fields, getters, methods, enum values),
//   or a top-level name, which only a top-level declaration of the same
//   name keeps (a parameter or member spelled the same does not). A
//   type's members include those of its supertypes, and a typedef's those
//   of the type it aliases.
//
// Declarations are read with the analyzer, so a member is declared only when
// its type, a supertype (exported or not), or an exported extension on it
// declares it; a supertype outside the libraries read declares nothing.
//
// A mention is a removed or internal symbol anywhere in a document (prose,
// a code span, a fence) outside the before column of its rename tables, or
// anywhere in a `///` doc comment, behind a lowercase prefix
// (`cli.runTerradart`) or not. Code spans are read by tool/code_spans.dart,
// so a span split across lines counts. In prose, a one-word name
// (`Network`, `Settings`) and a name with no capital letter are English, so
// they count only in code. The doc comment of a declaration a dependent sees (an exported
// declaration, a public member of one, an entrypoint's library comment) is
// held to the public API alone; the others, and the doc comments of the
// examples and recipes, may also name what their own `lib/` declares. The documents are those tool/doc_snippets.dart
// compiles plus the `terradart help` topics; the doc comments are those of
// the doc-comment packages, the examples and the cookbook recipes.
// A `[Type]` or `[Type.member]` reference of a doc comment must also name a
// declared symbol: of the public API, or, outside the doc comment of a
// declaration a dependent sees, of the package's own `lib/` (internal
// declarations included) or of the example or recipe it belongs to.
// MIGRATING.md and the CHANGELOG.md files are the record of what each
// release changed and keep the old names. A mention that is not the Dart
// symbol (an upstream description naming an API resource) goes in
// tool/doc_renames_allow.yaml with a reason; an entry no mention matches
// fails.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'code_spans.dart';
import 'doc_snippets.dart' show docCommentPackages, snippetDocuments;

const migratingPath = 'MIGRATING.md';
const allowPath = 'tool/doc_renames_allow.yaml';

const _note = r'(?: *\([^()|]*\))?';
final _version = RegExp(r'^\d+\.\d+(\.(\d+|x))?$');
final _beforeLabel = RegExp(
  '^(Before|Old|Removed( [a-z]+)?)$_note\$',
  caseSensitive: false,
);
final _afterLabel = RegExp(
  '^(After|New|Move to|Instead|Replacement)$_note\$',
  caseSensitive: false,
);
final _separator = RegExp(r'^\s*\|[-: |]+\|\s*$');
final _type = RegExp(r'(?<![\w$.*…])[A-Z][A-Z0-9]*[a-z][A-Za-z0-9]*(?![\w$*])');
final _token = RegExp(
  r'(?<![\w$.*…])([A-Z][A-Z0-9]*[a-z][A-Za-z0-9]*)(?:\.([a-z][A-Za-z0-9]*))?'
  r'(?![\w$*])|(?<![\w$.])([a-z][a-z0-9]*[A-Z][A-Za-z0-9]*)(?![\w$])',
);
final _label = RegExp(r'^[A-Z][a-z0-9]+:');
final _quoted = RegExp(r'''\'[^']*'|"[^"]*"''');
final _template = RegExp(r'[>}][A-Za-z]');
final _memberSpan = RegExp(r'^([A-Z]\w*\.[a-z]\w*|[a-z][a-zA-Z0-9]*[A-Z]\w*)$');
final _words = RegExp(r'^[\w-]+( [\w-]+)+$');
final _word = RegExp(r'^[A-Z][a-z0-9]+$');
final _docComment = RegExp(r'^\s*/// ?(.*)$');

/// An import prefix (`cli.`, `api.`), or a receiver, before a name.
final _prefix = RegExp(r'(?<![\w$.])[a-z][a-z0-9_]*\.(?=[A-Za-z])');

/// An all-lowercase name, which `_token` leaves to code.
final _lowercase = RegExp(r'(?<![\w$.])[a-z][a-z0-9_]*(?![\w$])');

/// A `Type.\nmember` span reads `Type. member`; the member is still one.
final _splitMember = RegExp(r'\.\s+(?=[a-z])');

List<String> _cells(String row) {
  final inner = row.trim();
  return inner
      .substring(1, inner.endsWith('|') ? inner.length - 1 : inner.length)
      .split('|')
      .map((c) => c.trim())
      .toList();
}

/// The before and after column of a table [header], or `null` when it is no
/// rename table.
(int, int?)? renameColumns(List<String> header) {
  for (var i = 0; i < header.length; i++) {
    final cell = header[i];
    final versioned = _version.hasMatch(cell);
    if (!versioned && !_beforeLabel.hasMatch(cell)) continue;
    for (var j = i + 1; j < header.length; j++) {
      final after = header[j];
      if (versioned ? _version.hasMatch(after) : _afterLabel.hasMatch(after)) {
        return (i, j);
      }
    }
    return versioned ? null : (i, null);
  }
  return null;
}

/// Line → the column of its before cell, for each row of a rename table of
/// [md], indented tables included.
Map<int, int> beforeColumns(String md) {
  final lines = md.split('\n');
  final out = <int, int>{};
  int? column;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i].trimLeft();
    if (!line.startsWith('|')) {
      column = null;
      continue;
    }
    if (i > 0 && lines[i - 1].trimLeft().startsWith('|')) {
      if (column != null && !_separator.hasMatch(line)) out[i + 1] = column;
      continue;
    }
    column = i + 1 < lines.length && _separator.hasMatch(lines[i + 1])
        ? renameColumns(_cells(line))?.$1
        : null;
  }
  return out;
}

/// The symbols one code span names: a whole-span member (`Type.member`,
/// `addExport`), else every type and `Type.member` outside its string
/// literals. A pattern (`Foo<Protocol>Config`) or a run of plain words
/// (`Zone Settings Read`) names none.
Set<String> spanSymbols(String span) {
  final code = span.trim();
  if (_memberSpan.hasMatch(code)) return {code};
  if (_template.hasMatch(code) || _words.hasMatch(code)) return const {};
  final stripped = code.replaceAll(_quoted, "''");
  return {
    for (final m in _token.allMatches(stripped))
      if (m.group(1) != null && !_isLabel(stripped, m)) ...[
        m.group(1)!,
        if (m.group(2) != null) '${m.group(1)}.${m.group(2)}',
      ],
    for (final m in _type.allMatches(stripped))
      if (!_label.hasMatch(stripped.substring(m.start))) m.group(0)!,
  };
}

/// Whether token [m] of [code] is a one-word label (`Next:`), which Dart
/// never spells for a type.
bool _isLabel(String code, RegExpMatch m) =>
    m.group(2) == null && _label.hasMatch(code.substring(m.start));

/// Each symbol a backtick span of [md] names, with the first line naming it.
Map<String, int> migratingSymbols(String md) {
  final out = <String, int>{};
  for (final (:code, :line) in scanMarkdown(md.split('\n')).spans) {
    for (final s in spanSymbols(code.replaceAll(_splitMember, '.'))) {
      out.putIfAbsent(s, () => line);
    }
  }
  return out;
}

/// The declarations of a set of Dart libraries: types, the members each
/// declares, its supertypes, and every declared name.
final class PublicApi {
  PublicApi._(
    this.types,
    this.members,
    this.supertypes,
    this.names,
    this.topLevel,
    this._declaredTypes, {
    this.internal = const {},
    this.exported = const {},
  });

  /// The public types.
  final Set<String> types;

  /// The members of every declared type, public or not, so a public type
  /// inherits what an unexported supertype declares.
  final Map<String, Set<String>> members;
  final Map<String, Set<String>> supertypes;

  /// Every public name: members, top-level declarations, parameters.
  final Set<String> names;

  /// The public top-level functions, getters and variables.
  final Set<String> topLevel;

  final Set<String> _declaredTypes;

  /// The types and top-level names declared under a package's `lib/` that
  /// no entrypoint exports, private ones aside.
  final Set<String> internal;

  /// The exported top-level declarations, by declaring file and name.
  final Set<(String, String)> exported;

  /// Every declaration of the `.dart` files under [dirs].
  factory PublicApi.read(Iterable<String> dirs) =>
      (_Declarations()..readAll(dirs)).api;

  /// What the entrypoints of the workspace packages but codegen export, and
  /// the SDK's `dart:` libraries.
  static Future<PublicApi> workspace(String root) =>
      _workspaces[root] ??= _readWorkspace(root);

  static final _workspaces = <String, Future<PublicApi>>{};

  static Future<PublicApi> _readWorkspace(String root) async {
    final packages = [
      for (final pkg in Directory(p.join(root, 'packages')).listSync())
        if (pkg is Directory && p.basename(pkg.path) != 'terradart_codegen')
          pkg.path,
    ];
    final exported = await _exported(root, packages);
    return (_Declarations()
          ..readAll(_sdkLibraries())
          ..readPackages(packages, exported))
        .api
        ._withExports(exported);
  }

  PublicApi _withExports(Set<(String, String)> exported) => PublicApi._(
    types,
    members,
    supertypes,
    names,
    topLevel,
    _declaredTypes,
    internal: internal,
    exported: exported,
  );

  /// These declarations and [other]'s, as one set of libraries.
  PublicApi merge(PublicApi other) {
    Map<String, Set<String>> union(
      Map<String, Set<String>> a,
      Map<String, Set<String>> b,
    ) => {
      for (final k in {...a.keys, ...b.keys}) k: {...?a[k], ...?b[k]},
    };
    return PublicApi._(
      {...types, ...other.types},
      union(members, other.members),
      union(supertypes, other.supertypes),
      {...names, ...other.names},
      {...topLevel, ...other.topLevel},
      {..._declaredTypes, ...other._declaredTypes},
      internal: internal,
      exported: exported,
    );
  }

  /// Each internal symbol — an unexported type, a member of one, or an
  /// unexported top-level name — with why naming it fails.
  Map<String, String> get internalSymbols {
    const reason = 'not exported by any package entrypoint';
    return {
      for (final s in internal)
        if (!declares(s)) s: reason,
      for (final t in internal)
        if (t.startsWith(RegExp('[A-Z]')))
          for (final m in members[t] ?? const <String>{})
            if (!m.startsWith('_') && !declares('$t.$m')) '$t.$m': reason,
    };
  }

  /// What the entrypoints of the last release's packages on pub.dev export,
  /// fetched into a scratch package.
  static Future<({String version, PublicApi api})> released(String root) =>
      _released[root] ??= _readReleased(root);

  static final _released =
      <String, Future<({String version, PublicApi api})>>{};

  static Future<({String version, PublicApi api})> _readReleased(
    String root,
  ) async {
    final release = lastRelease(root, docCommentPackages);
    final dir = Directory.systemTemp.createTempSync('doc_renames_release_');
    try {
      File(p.join(dir.path, 'pubspec.yaml')).writeAsStringSync(
        [
          'name: doc_renames_release',
          'publish_to: none',
          'environment:',
          '  sdk: ^3.10.0',
          'dependencies:',
          for (final pkg in release.packages) '  $pkg: ${release.version}',
        ].join('\n'),
      );
      var get = Process.runSync('dart', [
        'pub',
        'get',
        '--offline',
      ], workingDirectory: dir.path);
      if (get.exitCode != 0) {
        get = Process.runSync('dart', [
          'pub',
          'get',
        ], workingDirectory: dir.path);
      }
      if (get.exitCode != 0) {
        throw StateError(
          'dart pub get of ${release.version} failed:\n'
          '${get.stdout}${get.stderr}',
        );
      }
      final config =
          jsonDecode(
                File(
                  p.join(dir.path, '.dart_tool', 'package_config.json'),
                ).readAsStringSync(),
              )
              as Map<String, dynamic>;
      final packages = [
        for (final pkg in config['packages'] as List)
          if (release.packages.contains((pkg as Map)['name']))
            Uri.parse(pkg['rootUri'] as String).toFilePath(),
      ];
      return (
        version: release.version,
        api:
            (_Declarations()
                  ..readPackages(packages, await _exported(dir.path, packages)))
                .api,
      );
    } finally {
      dir.deleteSync(recursive: true);
    }
  }

  /// Whether [symbol] — a type, a `Type.member`, or a lowerCamel name — is
  /// declared. A supertype outside these libraries declares no member.
  bool declares(String symbol) {
    final dot = symbol.indexOf('.');
    if (dot < 0) {
      return symbol.startsWith(RegExp('[A-Z]'))
          ? types.contains(symbol)
          : names.contains(symbol);
    }
    final member = symbol.substring(dot + 1);
    final seen = <String>{};
    final queue = [symbol.substring(0, dot)];
    while (queue.isNotEmpty) {
      final type = queue.removeLast();
      if (!seen.add(type)) continue;
      if (seen.length == 1 && !types.contains(type)) return type == 'Object';
      if (members[type]?.contains(member) ?? false) return true;
      queue.addAll(supertypes[type] ?? const {});
    }
    return members['Object']?.contains(member) ?? false;
  }

  /// Every type, `Type.member` and top-level name these libraries declare,
  /// private ones aside; a type's members include what its supertypes (a
  /// typedef's aliased type among them) declare.
  Set<String> get symbols => {
    for (final n in topLevel)
      if (!n.startsWith('_')) n,
    for (final t in types)
      if (!t.startsWith('_')) ...[
        t,
        for (final m in _inherited(t))
          if (!m.startsWith('_')) '$t.$m',
      ],
  };

  Set<String> _inherited(String type) {
    final out = <String>{};
    final seen = <String>{};
    final queue = [type];
    while (queue.isNotEmpty) {
      final t = queue.removeLast();
      if (!seen.add(t)) continue;
      out.addAll(members[t] ?? const {});
      queue.addAll(supertypes[t] ?? const {});
    }
    return out;
  }
}

/// The SDK's `dart:` libraries the docs name.
List<String> _sdkLibraries() {
  final sdk = p.join(
    File(Platform.resolvedExecutable).parent.parent.path,
    'lib',
  );
  return [
    for (final lib in [
      'core',
      'async',
      'collection',
      'convert',
      'io',
      'math',
      'typed_data',
    ])
      p.join(sdk, lib),
  ];
}

/// The libraries of [package] a dependent imports: its `lib/` but `lib/src/`.
Iterable<String> _entrypoints(String package) sync* {
  final lib = Directory(p.join(package, 'lib'));
  if (!lib.existsSync()) return;
  for (final f in lib.listSync(recursive: true).whereType<File>()) {
    if (!f.path.endsWith('.dart')) continue;
    if (p.split(p.relative(f.path, from: lib.path)).first == 'src') continue;
    yield p.normalize(p.absolute(f.path));
  }
}

/// The top-level declarations the entrypoints of [packages] export, by
/// declaring file and name: the analyzer's export namespace of each, with
/// the `package:` URIs of [contextRoot]'s package config.
Future<Set<(String, String)>> _exported(
  String contextRoot,
  List<String> packages,
) async {
  final root = p.normalize(p.absolute(contextRoot));
  final collection = AnalysisContextCollection(includedPaths: [root]);
  try {
    final session = collection.contextFor(root).currentSession;
    final out = <(String, String)>{};
    for (final package in packages) {
      for (final path in _entrypoints(package)) {
        final uri = session.uriConverter.pathToUri(path) ?? Uri.file(path);
        final result = await session.getLibraryByUri('$uri');
        if (result is! LibraryElementResult) continue;
        final names = result.element.exportNamespace.definedNames2;
        for (final MapEntry(key: name, value: e) in names.entries) {
          final file = e.firstFragment.libraryFragment?.source.fullName;
          if (file == null) continue;
          out.add((
            p.normalize(file),
            name.endsWith('=') ? name.substring(0, name.length - 1) : name,
          ));
        }
      }
    }
    return out;
  } finally {
    await collection.dispose();
  }
}

final class _Declarations extends RecursiveAstVisitor<void> {
  final types = <String>{};
  final declaredTypes = <String>{};
  final members = <String, Set<String>>{};
  final supertypes = <String, Set<String>>{};
  final names = <String>{};
  final topLevel = <String>{};
  final internal = <String>{};

  /// The exported `(file, name)` pairs; null when every declaration is
  /// public.
  Set<(String, String)>? _exported;
  Set<String> _entrypointFiles = const {};
  String _file = '';
  bool _public = true;

  PublicApi get api => PublicApi._(
    types,
    members,
    supertypes,
    names,
    topLevel,
    declaredTypes,
    internal: {
      for (final n in internal)
        if (!n.startsWith('_') && !types.contains(n) && !topLevel.contains(n))
          n,
    },
  );

  /// Every declaration under [dirs] is public.
  void readAll(Iterable<String> dirs) {
    _exported = null;
    for (final dir in dirs) {
      final d = Directory(dir);
      if (!d.existsSync()) continue;
      for (final f in d.listSync(recursive: true).whereType<File>()) {
        if (f.path.endsWith('.dart')) _read(f);
      }
    }
  }

  /// Only what [exported] names of the `lib/` of [packages] is public.
  void readPackages(List<String> packages, Set<(String, String)> exported) {
    _exported = exported;
    _entrypointFiles = {for (final pkg in packages) ..._entrypoints(pkg)};
    for (final pkg in packages) {
      final lib = Directory(p.join(pkg, 'lib'));
      if (!lib.existsSync()) continue;
      for (final f in lib.listSync(recursive: true).whereType<File>()) {
        if (f.path.endsWith('.dart')) _read(f);
      }
    }
  }

  void _read(File f) {
    _file = p.normalize(p.absolute(f.path));
    parseString(
      content: f.readAsStringSync(),
      throwIfDiagnostics: false,
    ).unit.accept(this);
  }

  bool _exports(String name) =>
      _exported == null || _exported!.contains((_file, name));

  /// Visits a top-level declaration [name] with [visit], recording what it
  /// declares as public only when [public].
  void _topLevel(bool public, void Function() visit) {
    final was = _public;
    _public = public;
    visit();
    _public = was;
  }

  void _type(
    String name,
    Iterable<NamedType> supers,
    Iterable<ClassMember> body, {
    Iterable<String> extra = const [],
  }) {
    declaredTypes.add(name);
    if (_public) types.add(name);
    if (!_public && _exported != null) internal.add(name);
    supertypes.putIfAbsent(name, () => {}).addAll([
      for (final s in supers) s.name.lexeme,
    ]);
    final declared = members.putIfAbsent(name, () => {})..addAll(extra);
    final own = [for (final m in body) ..._memberNames(m)];
    declared.addAll(own);
    if (_public) names.addAll([...extra, ...own]);
  }

  static Iterable<String> _memberNames(ClassMember m) => switch (m) {
    ConstructorDeclaration(:final name) => [name?.lexeme ?? 'new'],
    FieldDeclaration(:final fields) => [
      for (final v in fields.variables) v.name.lexeme,
    ],
    MethodDeclaration(:final name) => [name.lexeme],
    _ => const [],
  };

  static List<NamedType> _supers(
    ExtendsClause? e,
    WithClause? w,
    ImplementsClause? i,
  ) => [?e?.superclass, ...?w?.mixinTypes, ...?i?.interfaces];

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    final name = node.namePart.typeName.lexeme;
    _topLevel(_exports(name), () {
      _type(
        name,
        _supers(node.extendsClause, node.withClause, node.implementsClause),
        node.body.members,
        extra: [
          if (node.namePart case PrimaryConstructorDeclaration(
            :final constructorName,
          ))
            constructorName?.name.lexeme ?? 'new',
        ],
      );
      super.visitClassDeclaration(node);
    });
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    _topLevel(_exports(node.name.lexeme), () {
      _type(node.name.lexeme, [
        ...?node.onClause?.superclassConstraints,
        ...?node.implementsClause?.interfaces,
      ], node.body.members);
      super.visitMixinDeclaration(node);
    });
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    final name = node.namePart.typeName.lexeme;
    _topLevel(_exports(name), () {
      _type(
        name,
        [
          ...?node.withClause?.mixinTypes,
          ...?node.implementsClause?.interfaces,
        ],
        node.body.members,
        extra: [
          for (final c in node.body.constants) c.name.lexeme,
          'values',
          'name',
          'index',
        ],
      );
      super.visitEnumDeclaration(node);
    });
  }

  @override
  void visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) {
    final ctor = node.namePart;
    if (ctor is! PrimaryConstructorDeclaration) return;
    _topLevel(_exports(ctor.typeName.lexeme), () {
      _type(
        ctor.typeName.lexeme,
        [...?node.implementsClause?.interfaces],
        node.body.members,
        extra: [
          ctor.constructorName?.name.lexeme ?? 'new',
          for (final f in ctor.formalParameters.parameters)
            if (f.name case final n?) n.lexeme,
        ],
      );
      super.visitExtensionTypeDeclaration(node);
    });
  }

  /// A named extension is public when exported; an unnamed one, which no
  /// export carries, when an entrypoint declares it.
  @override
  void visitExtensionDeclaration(ExtensionDeclaration node) {
    final name = node.name?.lexeme;
    final public = name != null
        ? _exports(name)
        : _exported == null || _entrypointFiles.contains(_file);
    _topLevel(public, () {
      final on = node.onClause?.extendedType;
      final declared = [for (final m in node.body.members) ..._memberNames(m)];
      if (public) names.addAll(declared);
      if (name != null) {
        declaredTypes.add(name);
        if (public) types.add(name);
        members.putIfAbsent(name, () => {}).addAll(declared);
      }
      if (public && on is NamedType) {
        members.putIfAbsent(on.name.lexeme, () => {}).addAll(declared);
      }
      super.visitExtensionDeclaration(node);
    });
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    _topLevel(_exports(node.name.lexeme), () {
      _type(node.name.lexeme, [
        node.superclass,
        ...node.withClause.mixinTypes,
        ...?node.implementsClause?.interfaces,
      ], const []);
    });
  }

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) {
    final aliased = node.type;
    _topLevel(_exports(node.name.lexeme), () {
      _type(node.name.lexeme, [if (aliased is NamedType) aliased], const []);
    });
  }

  @override
  void visitFunctionTypeAlias(FunctionTypeAlias node) {
    declaredTypes.add(node.name.lexeme);
    if (_exports(node.name.lexeme)) types.add(node.name.lexeme);
  }

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    if (node.parent is! CompilationUnit) {
      super.visitFunctionDeclaration(node);
      return;
    }
    final public = _exports(node.name.lexeme);
    if (!public && _exported != null) internal.add(node.name.lexeme);
    _topLevel(public, () {
      if (public) {
        names.add(node.name.lexeme);
        topLevel.add(node.name.lexeme);
      }
      super.visitFunctionDeclaration(node);
    });
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    final declared = [
      for (final v in node.variables.variables)
        if (_exports(v.name.lexeme)) v.name.lexeme,
    ];
    if (_exported != null) {
      internal.addAll([
        for (final v in node.variables.variables)
          if (!_exports(v.name.lexeme)) v.name.lexeme,
      ]);
    }
    names.addAll(declared);
    topLevel.addAll(declared);
    _topLevel(declared.isNotEmpty, () {
      super.visitTopLevelVariableDeclaration(node);
    });
  }

  @override
  void visitFormalParameterList(FormalParameterList node) {
    if (_public) {
      names.addAll([
        for (final f in node.parameters)
          if (f.name case final n?) n.lexeme,
      ]);
    }
    super.visitFormalParameterList(node);
  }
}

/// Each removed symbol, with where the removal is recorded: a
/// `MIGRATING.md:<line>` of [migrating], or the [released] version that
/// still declared it.
Map<String, String> removedSymbols({
  required Map<String, int> migrating,
  required PublicApi current,
  ({String version, PublicApi api})? released,
}) {
  final out = <String, String>{};
  for (final MapEntry(key: s, value: line) in migrating.entries) {
    if (!current.declares(s)) out[s] = '$migratingPath:$line';
  }
  if (released != null) {
    for (final s in released.api.symbols) {
      final kept = released.api.topLevel.contains(s)
          ? current.topLevel.contains(s)
          : current.declares(s);
      if (!out.containsKey(s) && !kept) {
        out[s] = 'declared in ${released.version}';
      }
    }
  }
  return out;
}

/// A doc line that names a removed symbol.
typedef StaleMention = ({String file, int line, String symbol});

final _reference = RegExp(r'\[([A-Z][A-Za-z0-9]+(?:\.[a-z]\w*)?)\](?![(\[:])');

/// The `[Type]` and `[Type.member]` references of the `///` lines of [text]
/// ([file]) that [declared] does not resolve.
List<StaleMention> unresolvedReferences(
  String file,
  String text,
  bool Function(String symbol) declared,
) {
  final out = <StaleMention>[];
  final lines = text.split('\n');
  for (var i = 0; i < lines.length; i++) {
    final m = _docComment.firstMatch(lines[i]);
    if (m == null) continue;
    for (final r in _reference.allMatches(m.group(1)!)) {
      if (!declared(r.group(1)!)) {
        out.add((file: file, line: i + 1, symbol: r.group(1)!));
      }
    }
  }
  return out;
}

/// What the doc comments of [lib] may name besides the public API: every
/// declaration of a package's own `lib/`, or the `lib/` directories of the
/// example or recipe it belongs to.
List<String> _siblingLibs(String root, String lib) {
  final parts = p.split(lib);
  if (parts.first == 'packages') return [p.join(root, lib)];
  if (parts.length < 3 || !{'examples', 'cookbook'}.contains(parts.first)) {
    return const [];
  }
  final project = Directory(p.join(root, parts[0], parts[1]));
  return [
    for (final d in project.listSync(recursive: true).whereType<Directory>())
      if (p.basename(d.path) == 'lib' &&
          !p.split(d.path).any((s) => s.startsWith('.')))
        d.path,
  ];
}

/// The removed symbols [text] ([file]) names. With [docComments], only its
/// `///` lines; a document's rename tables keep their before cells.
List<StaleMention> staleMentions(
  String file,
  String text,
  Map<String, String> removed, {
  bool docComments = false,
}) {
  if (removed.isEmpty) return const [];
  final List<String?> lines = docComments
      ? docCommentLines(text)
      : text.split('\n');
  if (!docComments) {
    for (final MapEntry(key: n, value: column) in beforeColumns(text).entries) {
      lines[n - 1] = (_cells(lines[n - 1]!)..removeAt(column)).join(' | ');
    }
  }
  final scan = scanMarkdown(lines);
  final spans = <int, List<String>>{};
  for (final (:code, :line) in scan.spans) {
    if (_words.hasMatch(code.trim())) continue;
    spans
        .putIfAbsent(line, () => [])
        .add(code.replaceAll(_quoted, "''").replaceAll(_splitMember, '.'));
  }
  final out = <StaleMention>[];
  for (var i = 0; i < scan.lines.length; i++) {
    final n = i + 1;
    final (:prose, :fence) = scan.lines[i];
    final List<(String, bool)> segments;
    if (prose != null) {
      segments = [
        (prose, false),
        for (final code in spans[n] ?? const <String>[]) (code, true),
      ];
    } else if (fence != null) {
      final dart = fence.isEmpty ? docComments : fence.startsWith('dart');
      final line = lines[i]!;
      segments = [(dart ? line.replaceAll(_quoted, "''") : line, dart)];
    } else {
      continue;
    }
    final seen = <String>{};
    for (final (raw, code) in segments) {
      final segment = raw.replaceAll(_prefix, '');
      if (code) {
        for (final m in _lowercase.allMatches(segment)) {
          final name = m.group(0)!;
          if (removed.containsKey(name) && seen.add(name)) {
            out.add((file: file, line: n, symbol: name));
          }
        }
      }
      for (final m in _token.allMatches(segment)) {
        if (m.group(1) != null &&
            ((!code && _word.hasMatch(m.group(1)!)) || _isLabel(segment, m))) {
          continue;
        }
        final type = m.group(1);
        final member = type != null && m.group(2) != null
            ? '$type.${m.group(2)}'
            : null;
        final symbol = [member, type ?? m.group(3)!].firstWhere(
          (s) => s != null && removed.containsKey(s),
          orElse: () => null,
        );
        if (symbol != null && seen.add(symbol)) {
          out.add((file: file, line: n, symbol: symbol));
        }
      }
    }
  }
  return out;
}

/// The lines of the `///` doc comments in Dart [text] ([path]) that a
/// dependent reads: those of an exported declaration (by [exported]), of a
/// public member of one, and, in an [entrypoint], of its library directive.
Set<int> publicDocLines(
  String path,
  String text,
  Set<(String, String)> exported, {
  required bool entrypoint,
}) {
  final unit = parseString(content: text, throwIfDiagnostics: false).unit;
  final out = <int>{};
  final file = p.normalize(p.absolute(path));
  void add(Comment? doc) {
    if (doc == null) return;
    final first = unit.lineInfo.getLocation(doc.offset).lineNumber;
    final last = unit.lineInfo.getLocation(doc.end).lineNumber;
    for (var l = first; l <= last; l++) {
      out.add(l);
    }
  }

  for (final directive in unit.directives) {
    if (entrypoint && directive is LibraryDirective) {
      add(directive.documentationComment);
    }
  }
  for (final d in unit.declarations) {
    final name = switch (d) {
      ClassDeclaration(:final namePart) => namePart.typeName.lexeme,
      EnumDeclaration(:final namePart) => namePart.typeName.lexeme,
      ExtensionTypeDeclaration(:final namePart) => namePart.typeName.lexeme,
      MixinDeclaration(:final name) => name.lexeme,
      FunctionDeclaration(:final name) => name.lexeme,
      TypeAlias(:final name) => name.lexeme,
      ExtensionDeclaration(:final name) => name?.lexeme,
      TopLevelVariableDeclaration(:final variables) =>
        variables.variables.first.name.lexeme,
      _ => null,
    };
    final public = name == null ? entrypoint : exported.contains((file, name));
    if (!public) continue;
    add(d.documentationComment);
    final (members, constants) = switch (d) {
      ClassDeclaration(:final body) => (body.members, const <AstNode>[]),
      MixinDeclaration(:final body) => (body.members, const <AstNode>[]),
      EnumDeclaration(:final body) => (body.members, body.constants),
      ExtensionTypeDeclaration(:final body) => (
        body.members,
        const <AstNode>[],
      ),
      ExtensionDeclaration(:final body) => (body.members, const <AstNode>[]),
      _ => (const <ClassMember>[], const <AstNode>[]),
    };
    for (final c in constants) {
      if (c is EnumConstantDeclaration) add(c.documentationComment);
    }
    for (final m in members) {
      final private = switch (m) {
        ConstructorDeclaration(:final name) =>
          name?.lexeme.startsWith('_') ?? false,
        MethodDeclaration(:final name) => name.lexeme.startsWith('_'),
        FieldDeclaration(:final fields) => fields.variables.every(
          (v) => v.name.lexeme.startsWith('_'),
        ),
        _ => true,
      };
      if (!private) add(m.documentationComment);
    }
  }
  return out;
}

/// The documents and doc-comment roots the check scans, relative to [root].
({List<String> docs, List<String> libs}) renameScanTargets(String root) {
  final help = Directory(p.join(root, 'packages', 'terradart_cli', 'help'));
  final libs = <String>[
    for (final pkg in docCommentPackages) 'packages/$pkg/lib',
  ];
  for (final dir in ['examples', 'cookbook']) {
    final base = Directory(p.join(root, dir));
    if (!base.existsSync()) continue;
    for (final pubspec in base.listSync(recursive: true).whereType<File>()) {
      if (p.basename(pubspec.path) != 'pubspec.yaml' ||
          p.split(pubspec.path).any((s) => s.startsWith('.'))) {
        continue;
      }
      final lib = p.join(p.dirname(pubspec.path), 'lib');
      if (Directory(lib).existsSync()) libs.add(p.relative(lib, from: root));
    }
  }
  return (
    docs: [
      ...snippetDocuments(root),
      if (help.existsSync())
        for (final f in help.listSync().whereType<File>())
          if (f.path.endsWith('.md')) p.relative(f.path, from: root),
    ]..sort(),
    libs: libs..sort(),
  );
}

/// The reviewed exceptions of [allowYaml]: `notApi`, the names MIGRATING.md
/// spells in code that were never the public API (symbol → reason), and
/// `mentions`, the mentions that are not the Dart symbol (a path, or a
/// directory ending in `/`, → symbol → reason).
typedef AllowList = ({
  Map<String, String> notApi,
  Map<String, Map<String, String>> mentions,
});

AllowList parseAllowList(String allowYaml) {
  final doc = loadYaml(allowYaml) as YamlMap?;
  Map<String, String> reasons(Object? m) => {
    for (final MapEntry(:key, :value) in ((m as YamlMap?) ?? YamlMap()).entries)
      key as String: value as String,
  };
  return (
    notApi: reasons(doc?['notApi']),
    mentions: {
      for (final MapEntry(:key, :value)
          in ((doc?['mentions'] as YamlMap?) ?? YamlMap()).entries)
        key as String: reasons(value),
    },
  );
}

/// One message per doc line that names a removed symbol, and per stale
/// entry of [allow] (default: [allowPath]; a mention entry is stale only on
/// the default [docs] and [libs]). [migrating] defaults to the
/// repo's MIGRATING.md; [released] (default: the last release) adds the
/// symbols that release declared.
Future<List<String>> checkDocRenames(
  String root, {
  String? migrating,
  List<String>? docs,
  List<String>? libs,
  AllowList? allow,
  bool released = true,
}) async {
  allow ??= parseAllowList(
    File(p.join(root, allowPath)).existsSync()
        ? File(p.join(root, allowPath)).readAsStringSync()
        : '',
  );
  final symbols = migratingSymbols(
    File(migrating ?? p.join(root, migratingPath)).readAsStringSync(),
  );
  if (symbols.isEmpty) {
    throw StateError(
      'MIGRATING.md names no symbol; tool/doc_renames.dart cannot check the '
      'docs',
    );
  }
  final current = await PublicApi.workspace(root);
  final removed = removedSymbols(
    migrating: symbols,
    current: current,
    released: released ? await PublicApi.released(root) : null,
  );
  final internal = current.internalSymbols;
  final out = <String>[];
  for (final MapEntry(key: s) in allow.notApi.entries) {
    if (removed.remove(s) == null) {
      out.add(
        '$allowPath: notApi `$s` is not a removed name MIGRATING.md spells; '
        'delete the entry',
      );
    }
  }
  final forbidden = {...internal, ...removed};
  final targets = docs != null && libs != null
      ? (docs: docs, libs: libs)
      : renameScanTargets(root);
  final mentions = <StaleMention>[];
  for (final doc in docs ?? targets.docs) {
    final file = File(p.isAbsolute(doc) ? doc : p.join(root, doc));
    mentions.addAll(staleMentions(doc, file.readAsStringSync(), forbidden));
  }
  final unresolved = <StaleMention>[];
  for (final dir in libs ?? targets.libs) {
    final lib = Directory(p.isAbsolute(dir) ? dir : p.join(root, dir));
    if (!lib.existsSync()) continue;
    final package = p.split(dir).first == 'packages';
    final withLocal = current.merge(PublicApi.read(_siblingLibs(root, dir)));
    final files = [
      for (final f in lib.listSync(recursive: true).whereType<File>())
        if (f.path.endsWith('.dart')) f,
    ]..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      final rel = p.relative(f.path, from: root);
      final text = f.readAsStringSync();
      final public = package
          ? publicDocLines(
              f.path,
              text,
              current.exported,
              entrypoint:
                  p.split(p.relative(f.path, from: lib.path)).first != 'src',
            )
          : const <int>{};
      mentions.addAll(
        staleMentions(rel, text, forbidden, docComments: true).where(
          (m) => public.contains(m.line) || !withLocal.declares(m.symbol),
        ),
      );
      unresolved.addAll(
        unresolvedReferences(rel, text, current.declares).where(
          (m) => public.contains(m.line) || !withLocal.declares(m.symbol),
        ),
      );
    }
  }
  final used = <(String, String)>{};
  for (final m in mentions) {
    final key = allow.mentions.keys.firstWhere(
      (k) =>
          (k == m.file || (k.endsWith('/') && m.file.startsWith(k))) &&
          allow!.mentions[k]!.containsKey(m.symbol),
      orElse: () => '',
    );
    if (key.isNotEmpty) {
      used.add((key, m.symbol));
      continue;
    }
    out.add(
      removed.containsKey(m.symbol)
          ? '${m.file}:${m.line}: `${m.symbol}` was removed or renamed '
                '(${removed[m.symbol]})'
          : '${m.file}:${m.line}: `${m.symbol}` is internal '
                '(${internal[m.symbol]}); name the public API',
    );
  }
  for (final m in unresolved) {
    if (mentions.any((s) => s.file == m.file && s.line == m.line)) continue;
    out.add('${m.file}:${m.line}: [${m.symbol}] names no declared symbol');
  }
  for (final MapEntry(key: file, value: symbols) in allow.mentions.entries) {
    for (final s in symbols.keys) {
      if (docs == null && libs == null && !used.contains((file, s))) {
        out.add(
          '$allowPath: $file no longer names `$s` as a removed symbol; '
          'delete the entry',
        );
      }
    }
  }
  return out;
}

Future<void> main() async {
  final failures = await checkDocRenames(Directory.current.path);
  if (failures.isEmpty) {
    print('doc_renames: OK');
    return;
  }
  stderr.writeln('doc_renames: FAILED (${failures.length})');
  for (final f in failures) {
    stderr.writeln('  - $f');
  }
  exit(1);
}

/// The released version: the `## <version> - <date>` heading every package
/// of [packages] with a dated top heading agrees on, and those packages.
({String version, Set<String> packages}) lastRelease(
  String root,
  List<String> packages,
) {
  final released = <String, String>{};
  for (final pkg in packages) {
    final changelog = File(p.join(root, 'packages', pkg, 'CHANGELOG.md'));
    if (!changelog.existsSync()) continue;
    final top = RegExp(
      r'^## (\S+) - \d{4}-\d{2}-\d{2}',
      multiLine: true,
    ).firstMatch(changelog.readAsStringSync());
    final heading = RegExp(
      r'^## ',
      multiLine: true,
    ).firstMatch(changelog.readAsStringSync());
    if (top != null && heading != null && top.start == heading.start) {
      released[pkg] = top.group(1)!;
    }
  }
  final versions = released.values.toSet();
  if (versions.length != 1) {
    throw StateError('released packages disagree on a version: $released');
  }
  return (version: versions.single, packages: released.keys.toSet());
}
