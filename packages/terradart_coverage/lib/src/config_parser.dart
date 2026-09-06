import 'dart:io';

import 'package:terradart_google/catalog.dart' show CatalogKind;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'tf_reference.dart';

/// Recursively scans [dir] for Terraform source (`.tf` HCL and `.tf.json`) and
/// extracts every `resource` / `data` block's type — **without running
/// Terraform**.
///
/// This is the zero-setup path the coverage CLI uses by default: no `init`, no
/// backend, no credentials, not even a `terraform` binary. It reads only the
/// source you already have, which is all that "how much of my config is
/// curated?" actually needs.
///
/// The walk descends into subdirectories (so `infra/` covers `dev/`, `prod/`,
/// and `modules/` in one pass) but skips `.terraform/` and `.git/` so results
/// don't depend on whether the tree has been initialized. Each directory is
/// parsed as one Terraform module with `terradart_hcl` — the front-end
/// `terradart-migrate` reads through — so block structure is exact: a
/// `resource` inside a heredoc or a comment is not a resource, and `count` /
/// `for_each` are read from the block itself.
///
/// What is expanded and what is not, recorded in the [ParseOutcome] rather
/// than hidden:
///  - `count = N`, and `for_each` over a literal object, tuple or
///    `toset([...])`, count as N occurrences (never fewer than one: the block
///    still has to be migrated).
///  - Any other `count` / `for_each` (a variable, a conditional, …) counts
///    once and is listed in [ParseOutcome.unexpanded]. Pipe
///    `terraform show -json` instead for exact instance counts.
///  - A `module` sourced from a registry or git URL can't be read from local
///    source, so its resources are invisible; each is listed in
///    [ParseOutcome.unparseable]. A local module inside [dir] is reached by
///    the walk and counted once, whatever `count` / `for_each` it is called
///    with; one outside [dir], or missing, is listed as not analyzed.
///  - A file that fails to parse is listed with its first error and skipped;
///    the other files still count.
ParseOutcome scanConfigDir(String dir) {
  final root = Directory(dir);
  if (!root.existsSync()) {
    throw FormatException('directory not found: "$dir"');
  }
  final rootCanonical = _canonical(root.path);
  final refs = <TfReference>[];
  final notes = <String>[];
  final unexpanded = <String>[];

  // One Terraform module per directory, like Terraform itself.
  final byDir = <String, List<File>>{};
  for (final file in _terraformFiles(root)) {
    final label = _dirLabel(_relativePath(file.path, root.path));
    byDir.putIfAbsent(label, () => []).add(file);
  }
  final labels = byDir.keys.toList()..sort();

  for (final label in labels) {
    final files = byDir[label]!..sort((a, b) => a.path.compareTo(b.path));
    final parsed = <HclFile>[];
    for (final file in files) {
      final rel = _relativePath(file.path, root.path);
      try {
        final content = file.readAsStringSync();
        parsed.add(
          file.path.endsWith('.json')
              ? decodeTfJson(content, fileName: rel)
              : parseHcl(content, fileName: rel),
        );
      } on IOException catch (e) {
        notes.add('$rel: could not read ($e)');
      } on HclParseException catch (e) {
        notes.add('${_where(e.first)}: ${e.first.message} — file skipped');
      }
    }

    final module = TfModule.fromFiles(parsed);
    for (final w in module.warnings) {
      notes.add('${_where(w)}: ${w.message} — block skipped');
    }
    for (final r in module.resources) {
      _collect(
        r,
        type: r.type,
        address: r.address,
        kind: CatalogKind.resource,
        count: r.count,
        forEach: r.forEach,
        label: label,
        refs: refs,
        unexpanded: unexpanded,
      );
    }
    for (final d in module.dataSources) {
      _collect(
        d,
        type: d.type,
        address: d.address,
        kind: CatalogKind.dataSource,
        count: d.count,
        forEach: d.forEach,
        label: label,
        refs: refs,
        unexpanded: unexpanded,
      );
    }
    for (final m in module.moduleCalls) {
      _noteModuleCall(
        m,
        moduleDir: files.first.parent,
        rootCanonical: rootCanonical,
        notes: notes,
        unexpanded: unexpanded,
      );
    }
  }

  if (refs.isEmpty && notes.isEmpty) {
    notes.add('no .tf or .tf.json files found under "$dir"');
  }
  return ParseOutcome(
    references: refs,
    unparseable: notes,
    unexpanded: unexpanded,
  );
}

Iterable<File> _terraformFiles(Directory root) sync* {
  for (final entity in root.listSync(recursive: true, followLinks: false)) {
    if (entity is! File) continue;
    final p = entity.path.replaceAll(r'\', '/');
    if (p.contains('/.terraform/') ||
        p.contains('/.git/') ||
        p.startsWith('.terraform/') ||
        p.startsWith('.git/')) {
      continue;
    }
    if (p.endsWith('.tf') || p.endsWith('.tf.json')) yield entity;
  }
}

/// Adds one [TfReference] per instance the block declares.
void _collect(
  TfBlock block, {
  required String type,
  required String address,
  required CatalogKind kind,
  required Expr? count,
  required Expr? forEach,
  required String label,
  required List<TfReference> refs,
  required List<String> unexpanded,
}) {
  final instances = _instanceCount(count, forEach);
  if (instances == null) {
    final meta = count != null ? 'count' : 'for_each';
    final expr = count ?? forEach!;
    unexpanded.add(
      '${block.file.fileName}: $address: $meta = ${_source(block.file, expr)} '
      '— counted once',
    );
  }
  final n = instances == null || instances < 1 ? 1 : instances;
  final ref = TfReference(type: type, kind: kind, modulePath: label);
  for (var i = 0; i < n; i++) {
    refs.add(ref);
  }
}

/// How many instances a block declares: one without meta-arguments, the
/// literal `count`, or the size of a literal `for_each`; `null` when it cannot
/// be read from source.
int? _instanceCount(Expr? count, Expr? forEach) {
  if (count != null) return _intLiteral(_unwrapInterpolation(count));
  if (forEach != null) return _collectionSize(_unwrapInterpolation(forEach));
  return 1;
}

/// JSON syntax writes expressions as strings — `"for_each": "${toset([...])}"`
/// — which decode to a template holding one interpolation; this is that
/// interpolation's expression. Any other expression is returned unchanged.
Expr _unwrapInterpolation(Expr e) {
  if (e is TemplateExpr && e.parts.length == 1) {
    final part = e.parts.single;
    if (part is TemplateInterpolation) return part.expr;
  }
  return e;
}

int? _intLiteral(Expr e) {
  if (e is! LiteralExpr || e.value is! num) return null;
  final v = e.value! as num;
  if (v is int) return v;
  return v == v.truncateToDouble() ? v.toInt() : null;
}

/// `toset([...])` — the idiomatic literal `for_each` set.
final _toset = RegExp(r'^toset\((.*)\)$', dotAll: true);

int? _collectionSize(Expr e) {
  switch (e) {
    case TupleExpr(:final elements):
      return elements.length;
    case ObjectExpr(:final items):
      return items.length;
    case RawExpr(:final source):
      final m = _toset.firstMatch(source.trim());
      if (m == null) return null;
      try {
        final inner = parseHclExpression(m.group(1)!);
        return inner is TupleExpr ? inner.elements.length : null;
      } on HclParseException {
        return null;
      }
    default:
      return null;
  }
}

void _noteModuleCall(
  ModuleCallBlock m, {
  required Directory moduleDir,
  required String? rootCanonical,
  required List<String> notes,
  required List<String> unexpanded,
}) {
  final file = m.file.fileName;
  final source = m.source?.constantString;
  if (source == null) {
    notes.add(
      '$file: module "${m.name}" has no constant source — not analyzed',
    );
    return;
  }
  if (_isRemoteModule(source)) {
    notes.add(
      '$file: module "${m.name}" (source: $source) not analyzed '
      '— remote module',
    );
    return;
  }
  final target = _canonical(
    source.startsWith('/') ? source : '${moduleDir.path}/$source',
  );
  if (target == null) {
    notes.add(
      '$file: module "${m.name}" (source: $source) not analyzed '
      '— directory not found',
    );
  } else if (rootCanonical == null ||
      !(target == rootCanonical || target.startsWith('$rootCanonical/'))) {
    notes.add(
      '$file: module "${m.name}" (source: $source) not analyzed '
      '— outside the scanned directory',
    );
  } else if (m.count != null || m.forEach != null) {
    final meta = m.count != null ? 'count' : 'for_each';
    final expr = m.count ?? m.forEach!;
    unexpanded.add(
      '$file: module "${m.name}": $meta = ${_source(m.file, expr)} '
      '— its local source directory is scanned once',
    );
  }
}

/// A module source is *local* when it is a relative or absolute filesystem path
/// (its files are already in the scanned tree). Anything else — a registry
/// address (`namespace/name/provider`) or a git/URL source — is remote.
bool _isRemoteModule(String source) {
  return !(source.startsWith('./') ||
      source.startsWith('../') ||
      source.startsWith('/'));
}

/// The expression as written, on one line; `Expr.toString()` for JSON input.
String _source(HclFile file, Expr expr) {
  final text = file.textOf(expr).replaceAll(RegExp(r'\s+'), ' ');
  return text.isEmpty ? expr.toString() : text;
}

/// `file:line:column` for a diagnostic with a position, else just the file.
String _where(HclDiagnostic d) =>
    d.range.isNone ? '${d.fileName}' : '${d.fileName}:${d.range.start}';

/// The canonical path of an existing directory, `/`-separated; `null` when
/// it does not exist.
String? _canonical(String path) {
  try {
    return Directory(path).resolveSymbolicLinksSync().replaceAll(r'\', '/');
  } on FileSystemException {
    return null;
  }
}

String _relativePath(String filePath, String rootPath) {
  var f = filePath.replaceAll(r'\', '/');
  var r = rootPath.replaceAll(r'\', '/');
  if (r.endsWith('/')) r = r.substring(0, r.length - 1);
  if (f == r) return f;
  if (f.startsWith('$r/')) f = f.substring(r.length + 1);
  return f;
}

/// The directory portion of a relative file path, used to group the report by
/// directory (`dev`, `prod`, `modules/network`, …); top-level files are `root`.
String _dirLabel(String relativePath) {
  final i = relativePath.lastIndexOf('/');
  if (i < 0) return 'root';
  final dir = relativePath.substring(0, i);
  return dir.isEmpty ? 'root' : dir;
}
