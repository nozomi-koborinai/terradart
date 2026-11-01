// doc_renames.dart — fails when a doc names a Dart symbol the public API no
// longer has, so a guide cannot keep teaching a type or getter an upgrade
// removed.
//
// Run from repo root: dart tool/doc_renames.dart
// tool/doc_renames_test.dart runs the same check (CI: `dart test tool/`).
//
// A removed symbol is one the public API (the `lib/` of every workspace
// package but `terradart_codegen`, and the SDK's `dart:` libraries) no longer
// declares, and that either
//
// - MIGRATING.md names in a backtick span (prose, any table cell, indented
//   tables included): a type (`OldName`, `Foo<Bar>`, `OldName(...)`, outside
//   string literals), a member through its type (`Type.member`), or a whole
//   lowerCamel span (`addExport`), or
// - the last release on pub.dev declared: a type, or a member of a type
//   (`Type.member`; constructors, fields, getters, methods, enum values).
//
// Declarations are read with the analyzer, so a member is declared only when
// its type, a supertype, or an extension on it declares it.
//
// A mention is a removed symbol anywhere in a document (prose, a backtick
// span, a fence) outside the before column of its rename tables, or anywhere
// in a `///` doc comment. In prose, a one-word name (`Network`, `Settings`)
// is English, so it counts only in code. The documents are those tool/doc_snippets.dart
// compiles plus the `terradart help` topics; the doc comments are those of
// the doc-comment packages, the examples and the cookbook recipes.
// A `[Type]` or `[Type.member]` reference of a doc comment must also name a
// declared symbol: of the workspace packages, or of the example or recipe
// the comment belongs to.
// MIGRATING.md and the CHANGELOG.md files are the record of what each
// release changed and keep the old names. A mention that is not the Dart
// symbol (an upstream description naming an API resource) goes in
// tool/doc_renames_allow.yaml with a reason; an entry no mention matches
// fails.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'doc_snippets.dart' show docCommentPackages, snippetDocuments;
import 'migrating_cells.dart' show lastRelease;

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
final _span = RegExp(r'`([^`]+)`');
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
final _fence = RegExp(r'^\s*(`{3,}|~{3,})');

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
  final lines = md.split('\n');
  String? fence;
  for (var i = 0; i < lines.length; i++) {
    final marker = _fence.firstMatch(lines[i])?.group(1);
    if (marker != null) {
      if (fence == null) {
        fence = marker;
      } else if (marker.startsWith(fence)) {
        fence = null;
      }
      continue;
    }
    if (fence != null) continue;
    for (final m in _span.allMatches(lines[i])) {
      for (final s in spanSymbols(m.group(1)!)) {
        out.putIfAbsent(s, () => i + 1);
      }
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
  );

  final Set<String> types;
  final Map<String, Set<String>> members;
  final Map<String, Set<String>> supertypes;

  /// Every declared name: members, top-level declarations, parameters.
  final Set<String> names;

  /// The top-level functions, getters and variables.
  final Set<String> topLevel;

  /// The declarations of the `.dart` files under [dirs].
  factory PublicApi.read(Iterable<String> dirs) {
    final collector = _Declarations();
    for (final dir in dirs) {
      final d = Directory(dir);
      if (!d.existsSync()) continue;
      for (final f in d.listSync(recursive: true).whereType<File>()) {
        if (!f.path.endsWith('.dart')) continue;
        parseString(
          content: f.readAsStringSync(),
          throwIfDiagnostics: false,
        ).unit.accept(collector);
      }
    }
    return PublicApi._(
      collector.types,
      collector.members,
      collector.supertypes,
      collector.names,
      collector.topLevel,
    );
  }

  /// The workspace packages' `lib/` but codegen's, and the SDK's `dart:`
  /// libraries.
  factory PublicApi.workspace(String root) {
    final sdk = p.join(
      File(Platform.resolvedExecutable).parent.parent.path,
      'lib',
    );
    return PublicApi.read([
      for (final pkg in Directory(p.join(root, 'packages')).listSync())
        if (pkg is Directory && p.basename(pkg.path) != 'terradart_codegen')
          p.join(pkg.path, 'lib'),
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
    ]);
  }

  /// The packages of the last release on pub.dev, fetched into a scratch
  /// package.
  static ({String version, PublicApi api}) released(String root) {
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
      return (
        version: release.version,
        api: PublicApi.read([
          for (final pkg in config['packages'] as List)
            if (release.packages.contains((pkg as Map)['name']))
              p.join(Uri.parse(pkg['rootUri'] as String).toFilePath(), 'lib'),
        ]),
      );
    } finally {
      dir.deleteSync(recursive: true);
    }
  }

  /// Whether [symbol] — a type, a `Type.member`, or a lowerCamel name — is
  /// declared. A member of a type with a supertype outside these libraries
  /// counts as declared.
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
      if (!types.contains(type)) return seen.length > 1 || type == 'Object';
      if (members[type]?.contains(member) ?? false) return true;
      queue.addAll(supertypes[type] ?? const {});
    }
    return members['Object']?.contains(member) ?? false;
  }

  /// Every type, `Type.member` and top-level name these libraries declare,
  /// private ones aside.
  Set<String> get symbols => {
    for (final n in topLevel)
      if (!n.startsWith('_')) n,
    for (final t in types)
      if (!t.startsWith('_')) ...[
        t,
        for (final m in members[t] ?? const <String>{})
          if (!m.startsWith('_')) '$t.$m',
      ],
  };
}

final class _Declarations extends RecursiveAstVisitor<void> {
  final types = <String>{};
  final members = <String, Set<String>>{};
  final supertypes = <String, Set<String>>{};
  final names = <String>{};
  final topLevel = <String>{};

  void _type(
    String name,
    Iterable<NamedType> supers,
    Iterable<ClassMember> body, {
    Iterable<String> extra = const [],
  }) {
    types.add(name);
    supertypes.putIfAbsent(name, () => {}).addAll([
      for (final s in supers) s.name.lexeme,
    ]);
    final declared = members.putIfAbsent(name, () => {})..addAll(extra);
    for (final m in body) {
      declared.addAll(_memberNames(m));
    }
    names.addAll(declared);
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
    _type(
      node.namePart.typeName.lexeme,
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
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    _type(node.name.lexeme, [
      ...?node.onClause?.superclassConstraints,
      ...?node.implementsClause?.interfaces,
    ], node.body.members);
    super.visitMixinDeclaration(node);
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    _type(
      node.namePart.typeName.lexeme,
      [...?node.withClause?.mixinTypes, ...?node.implementsClause?.interfaces],
      node.body.members,
      extra: [
        for (final c in node.body.constants) c.name.lexeme,
        'values',
        'name',
        'index',
      ],
    );
    super.visitEnumDeclaration(node);
  }

  @override
  void visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) {
    final ctor = node.primaryConstructor;
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
  }

  @override
  void visitExtensionDeclaration(ExtensionDeclaration node) {
    final on = node.onClause?.extendedType;
    final declared = [for (final m in node.body.members) ..._memberNames(m)];
    names.addAll(declared);
    if (node.name case final name?) {
      types.add(name.lexeme);
      members.putIfAbsent(name.lexeme, () => {}).addAll(declared);
    }
    if (on is NamedType) {
      members.putIfAbsent(on.name.lexeme, () => {}).addAll(declared);
    }
    super.visitExtensionDeclaration(node);
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    _type(node.name.lexeme, [
      node.superclass,
      ...node.withClause.mixinTypes,
      ...?node.implementsClause?.interfaces,
    ], const []);
  }

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) {
    final aliased = node.type;
    _type(node.name.lexeme, [if (aliased is NamedType) aliased], const []);
  }

  @override
  void visitFunctionTypeAlias(FunctionTypeAlias node) {
    types.add(node.name.lexeme);
  }

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    names.add(node.name.lexeme);
    if (node.parent is CompilationUnit) topLevel.add(node.name.lexeme);
    super.visitFunctionDeclaration(node);
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    final declared = [for (final v in node.variables.variables) v.name.lexeme];
    names.addAll(declared);
    topLevel.addAll(declared);
    super.visitTopLevelVariableDeclaration(node);
  }

  @override
  void visitFormalParameterList(FormalParameterList node) {
    names.addAll([
      for (final f in node.parameters)
        if (f.name case final n?) n.lexeme,
    ]);
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
      if (!out.containsKey(s) && !current.declares(s)) {
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

/// The `lib/` directories of the example or recipe [lib] belongs to, which
/// its references may name besides the workspace packages.
List<String> _siblingLibs(String root, String lib) {
  final parts = p.split(lib);
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
  final before = docComments ? const <int, int>{} : beforeColumns(text);
  final out = <StaleMention>[];
  final lines = text.split('\n');
  String? fence;
  var dartFence = false;
  for (var i = 0; i < lines.length; i++) {
    final n = i + 1;
    var line = lines[i];
    if (docComments) {
      final m = _docComment.firstMatch(line);
      if (m == null) {
        fence = null;
        continue;
      }
      line = m.group(1)!;
    }
    final marker = _fence.firstMatch(line)?.group(1);
    if (marker != null) {
      if (fence == null) {
        fence = marker;
        final language = line.trim().substring(marker.length).trim();
        dartFence = language.isEmpty
            ? docComments
            : language.startsWith('dart');
      } else if (marker.startsWith(fence)) {
        fence = null;
      }
      continue;
    }
    if (before[n] case final column?) {
      line = (_cells(line)..removeAt(column)).join(' | ');
    }
    final segments = fence != null
        ? [(dartFence ? line.replaceAll(_quoted, "''") : line, dartFence)]
        : [
            (line.replaceAll(_span, ' '), false),
            for (final m in _span.allMatches(line))
              if (!_words.hasMatch(m.group(1)!.trim()))
                (m.group(1)!.replaceAll(_quoted, "''"), true),
          ];
    final seen = <String>{};
    for (final (segment, code) in segments) {
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
List<String> checkDocRenames(
  String root, {
  String? migrating,
  List<String>? docs,
  List<String>? libs,
  AllowList? allow,
  bool released = true,
}) {
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
  final current = PublicApi.workspace(root);
  final removed = removedSymbols(
    migrating: symbols,
    current: current,
    released: released ? PublicApi.released(root) : null,
  );
  final out = <String>[];
  for (final MapEntry(key: s) in allow.notApi.entries) {
    if (removed.remove(s) == null) {
      out.add(
        '$allowPath: notApi `$s` is not a removed name MIGRATING.md spells; '
        'delete the entry',
      );
    }
  }
  final targets = renameScanTargets(root);
  final mentions = <StaleMention>[];
  for (final doc in docs ?? targets.docs) {
    final file = File(p.isAbsolute(doc) ? doc : p.join(root, doc));
    mentions.addAll(staleMentions(doc, file.readAsStringSync(), removed));
  }
  final unresolved = <StaleMention>[];
  for (final dir in libs ?? targets.libs) {
    final lib = Directory(p.isAbsolute(dir) ? dir : p.join(root, dir));
    if (!lib.existsSync()) continue;
    final local = PublicApi.read(_siblingLibs(root, dir));
    bool declared(String s) => current.declares(s) || local.declares(s);
    final files = [
      for (final f in lib.listSync(recursive: true).whereType<File>())
        if (f.path.endsWith('.dart')) f,
    ]..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      final rel = p.relative(f.path, from: root);
      final text = f.readAsStringSync();
      mentions.addAll(staleMentions(rel, text, removed, docComments: true));
      unresolved.addAll(unresolvedReferences(rel, text, declared));
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
      '${m.file}:${m.line}: `${m.symbol}` was removed or renamed '
      '(${removed[m.symbol]})',
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

void main() {
  final failures = checkDocRenames(Directory.current.path);
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
