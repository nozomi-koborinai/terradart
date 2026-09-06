/// The shape of a Terraform source tree: which directories are modules, and
/// which of them are roots, children (a `module` block's `source` points at
/// them) or environment siblings (roots under one parent directory).
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/body_map.dart';
import 'emit/tf_expr.dart';

enum ModuleRole { root, child }

/// One directory holding `*.tf` / `*.tf.json` files.
final class ModuleDir {
  ModuleDir({
    required this.directory,
    required this.relPath,
    required this.module,
  });

  final Directory directory;

  /// The path relative to the scanned root, with forward slashes; `.` for
  /// the root itself.
  final String relPath;
  final TfModule module;
  ModuleRole role = ModuleRole.root;

  /// `relPath`s of the modules whose `module` blocks call this directory.
  final Set<String> callers = {};

  /// Local module calls: call name → the callee's `relPath` (in-tree only).
  final Map<String, String> calls = {};

  /// The environment group this root belongs to, if any.
  String? environment;

  /// Notes from the scan: a source outside the tree, a non-literal source.
  final List<String> warnings = [];

  bool get isRoot => role == ModuleRole.root;

  /// The directory's base name (`dev`, `service_account`).
  String get baseName => relPath == '.'
      ? p.basename(p.normalize(directory.absolute.path))
      : p.posix.basename(relPath);
}

/// The scanned tree.
final class ModuleTree {
  ModuleTree({required this.root, required this.modules});

  final Directory root;

  /// Every module directory, the root first, then by path.
  final List<ModuleDir> modules;

  List<ModuleDir> get roots => [
    for (final m in modules)
      if (m.isRoot) m,
  ];

  List<ModuleDir> get children => [
    for (final m in modules)
      if (!m.isRoot) m,
  ];

  /// Environment group → its roots, in tree order.
  Map<String, List<ModuleDir>> get environments {
    final out = <String, List<ModuleDir>>{};
    for (final m in modules) {
      final env = m.environment;
      if (env != null) out.putIfAbsent(env, () => []).add(m);
    }
    return out;
  }

  ModuleDir? byPath(String relPath) {
    for (final m in modules) {
      if (m.relPath == relPath) return m;
    }
    return null;
  }
}

/// A module directory that did not parse.
final class ModuleParseError {
  const ModuleParseError(this.relPath, this.exception);

  final String relPath;
  final HclParseException exception;

  @override
  String toString() => '$relPath: $exception';
}

/// Thrown by [scanModuleTree] when a module directory does not parse.
final class ModuleTreeException implements Exception {
  const ModuleTreeException(this.errors);

  final List<ModuleParseError> errors;

  @override
  String toString() => errors.join('\n');
}

/// Scans [root] for module directories and infers their roles.
///
/// A directory is a module when it directly holds a `*.tf` or `*.tf.json`
/// file; hidden directories (`.terraform`, `.git`) and `node_modules` are
/// never entered. A directory some `module` block's `./` or `../` `source`
/// points at is a child; every other module is a root, as is every path in
/// [roots]. Roots sharing a parent directory (other than the scanned root
/// itself) are environment siblings, unless [environmentDirs] names the
/// environments explicitly.
ModuleTree scanModuleTree(
  Directory root, {
  Iterable<String> roots = const [],
  Iterable<String> environmentDirs = const [],
}) {
  final rootPath = p.normalize(root.absolute.path);
  final dirs = <Directory>[root];
  final listed = root.listSync(recursive: true, followLinks: false).toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final e in listed) {
    if (e is! Directory) continue;
    final rel = p.relative(e.path, from: rootPath);
    if (p.split(rel).any(_skipSegment)) continue;
    dirs.add(e);
  }
  final modules = <ModuleDir>[];
  final errors = <ModuleParseError>[];
  for (final d in dirs) {
    if (!_hasTfFiles(d)) continue;
    final rel = relPathOf(d.path, rootPath);
    try {
      modules.add(
        ModuleDir(directory: d, relPath: rel, module: loadTfModule(d)),
      );
    } on HclParseException catch (e) {
      errors.add(ModuleParseError(rel, e));
    }
  }
  if (errors.isNotEmpty) throw ModuleTreeException(errors);
  modules.sort((a, b) => _sortKey(a.relPath).compareTo(_sortKey(b.relPath)));

  final byPath = {for (final m in modules) m.relPath: m};
  for (final m in modules) {
    for (final call in m.module.moduleCalls) {
      final sourceExpr = call.source;
      if (sourceExpr == null) continue;
      final src = sourceExpr.constantString;
      if (src == null) {
        m.warnings.add(
          'module "${call.name}": source is not a literal; the call stays as '
          'written',
        );
        continue;
      }
      if (!src.startsWith('./') && !src.startsWith('../')) continue;
      final target = p.normalize(p.join(m.directory.absolute.path, src));
      final rel = relPathOf(target, rootPath);
      final callee = rel.startsWith('..') ? null : byPath[rel];
      if (callee == null) {
        m.warnings.add(
          'module "${call.name}": source "$src" is not a module directory '
          'under the scanned tree; the call stays as written and its path is '
          'relative to the migrated directory',
        );
        continue;
      }
      m.calls[call.name] = callee.relPath;
      callee.callers.add(m.relPath);
    }
  }

  final forced = {for (final r in roots) normalizeRelPath(r)};
  for (final m in modules) {
    m.role = forced.contains(m.relPath) || m.callers.isEmpty
        ? ModuleRole.root
        : ModuleRole.child;
  }

  final envs = {for (final e in environmentDirs) normalizeRelPath(e)};
  if (envs.isNotEmpty) {
    final members = [
      for (final m in modules)
        if (envs.contains(m.relPath)) m,
    ];
    final parents = {for (final m in members) p.posix.dirname(m.relPath)};
    final group = parents.length == 1 ? parents.single : 'environments';
    for (final m in members) {
      if (!m.isRoot) {
        m.warnings.add(
          '--env-dirs names "${m.relPath}", which a module block references; '
          'treated as an environment root anyway',
        );
        m.role = ModuleRole.root;
      }
      m.environment = group;
    }
  } else {
    final groups = <String, List<ModuleDir>>{};
    for (final m in modules) {
      if (!m.isRoot || m.relPath == '.') continue;
      groups.putIfAbsent(p.posix.dirname(m.relPath), () => []).add(m);
    }
    for (final e in groups.entries) {
      if (e.value.length < 2) continue;
      for (final m in e.value) {
        m.environment = e.key;
      }
    }
  }
  return ModuleTree(root: root, modules: modules);
}

/// [path] relative to [rootPath], with forward slashes; `.` for the root.
String relPathOf(String path, String rootPath) {
  final rel = p.relative(p.normalize(path), from: rootPath);
  return normalizeRelPath(rel);
}

/// `./envs/dev/` → `envs/dev`; `` / `.` / `./` → `.`.
String normalizeRelPath(String rel) {
  var out = rel.replaceAll('\\', '/');
  while (out.startsWith('./')) {
    out = out.substring(2);
  }
  while (out.endsWith('/')) {
    out = out.substring(0, out.length - 1);
  }
  return out.isEmpty ? '.' : out;
}

bool _skipSegment(String name) =>
    name.startsWith('.') && name != '.' || name == 'node_modules';

bool _hasTfFiles(Directory d) => d
    .listSync(followLinks: false)
    .any(
      (f) =>
          f is File && (f.path.endsWith('.tf') || f.path.endsWith('.tf.json')),
    );

String _sortKey(String relPath) => relPath == '.' ? '' : relPath;

/// How the roots of one environment group differ from each other.
final class EnvironmentComparison {
  const EnvironmentComparison({
    required this.group,
    required this.roots,
    required this.shared,
    required this.only,
    required this.differing,
  });

  final String group;

  /// The roots' `relPath`s.
  final List<String> roots;

  /// Resource, data-source and module-call addresses every root declares.
  final List<String> shared;

  /// Root → the addresses only it declares.
  final Map<String, List<String>> only;

  /// Shared address → the top-level arguments whose values differ.
  final Map<String, List<String>> differing;

  Map<String, Object?> toJson() => {
    'group': group,
    'roots': roots,
    'shared': shared,
    'only': only,
    'differing': differing,
  };
}

/// Compares the block arguments of [roots] address by address.
EnvironmentComparison compareEnvironment(String group, List<ModuleDir> roots) {
  final bodies = {for (final r in roots) r.relPath: _blockArguments(r.module)};
  final first = bodies.values.first;
  final shared = [
    for (final a in first.keys)
      if (bodies.values.every((m) => m.containsKey(a))) a,
  ];
  final only = {
    for (final r in roots)
      r.relPath: [
        for (final a in bodies[r.relPath]!.keys)
          if (!shared.contains(a)) a,
      ],
  };
  final differing = <String, List<String>>{};
  for (final a in shared) {
    final keys = <String>{};
    for (final m in bodies.values) {
      keys.addAll(m[a]!.keys);
    }
    final diff = [
      for (final k in keys)
        if (bodies.values.map((m) => jsonEncode(m[a]![k])).toSet().length > 1)
          k,
    ];
    if (diff.isNotEmpty) differing[a] = diff;
  }
  return EnvironmentComparison(
    group: group,
    roots: [for (final r in roots) r.relPath],
    shared: shared,
    only: only,
    differing: differing,
  );
}

Map<String, Map<String, Object?>> _blockArguments(TfModule m) {
  Map<String, Object?> args(Body body) => {
    for (final e in (objectMap(bodyAsObject(body)) ?? {}).entries)
      e.key: jsonValue(e.value),
  };
  return {
    for (final r in m.resources) r.address: args(r.body),
    for (final d in m.dataSources) d.address: args(d.body),
    for (final c in m.moduleCalls) 'module.${c.name}': args(c.body),
  };
}
