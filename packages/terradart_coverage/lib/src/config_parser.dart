import 'dart:convert';
import 'dart:io';

import 'package:terradart_google/catalog.dart' show CatalogKind;

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
/// don't depend on whether the tree has been initialized.
///
/// Limitations are recorded in [ParseOutcome.unparseable] rather than hidden:
///  - `count` / `for_each` are not expanded — each block counts once.
///  - A module sourced from a registry or git URL can't be read from local
///    source, so its resources are invisible; each such `module` is called out.
///  - HCL is matched with a best-effort scan (block headers), not a full parser.
ParseOutcome scanConfigDir(String dir) {
  final root = Directory(dir);
  if (!root.existsSync()) {
    throw FormatException('directory not found: "$dir"');
  }
  final refs = <TfReference>[];
  final notes = <String>[];
  final files = _terraformFiles(root).toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  for (final file in files) {
    final rel = _relativePath(file.path, root.path);
    final label = _dirLabel(rel);
    final String content;
    try {
      content = file.readAsStringSync();
    } on IOException catch (e) {
      notes.add('$rel: could not read ($e)');
      continue;
    }
    if (file.path.endsWith('.tf.json')) {
      _scanTfJson(content, label, rel, refs, notes);
    } else {
      _scanHcl(content, label, rel, refs, notes);
    }
  }

  if (refs.isEmpty && notes.isEmpty) {
    notes.add('no .tf or .tf.json files found under "$dir"');
  }
  return ParseOutcome(references: refs, unparseable: notes);
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

/// `resource "google_storage_bucket" "assets" {` / `data "google_project" "p" {`
final _blockHeader = RegExp(
  r'^[ \t]*(resource|data)[ \t]+"([^"]+)"[ \t]+"[^"]*"[ \t]*\{',
  multiLine: true,
);

/// A `module "name" { ... source = "..." }` block, capturing its source. The
/// `[^}]` guard keeps the match inside the module block in the common case.
final _moduleSource = RegExp(
  r'module[ \t]+"([^"]+)"[ \t]*\{[^}]*?source[ \t]*=[ \t]*"([^"]+)"',
  dotAll: true,
);

void _scanHcl(
  String content,
  String label,
  String rel,
  List<TfReference> refs,
  List<String> notes,
) {
  for (final m in _blockHeader.allMatches(content)) {
    final mode = m.group(1)!;
    final type = m.group(2)!;
    refs.add(
      TfReference(
        type: type,
        kind: mode == 'data' ? CatalogKind.dataSource : CatalogKind.resource,
        modulePath: label,
      ),
    );
  }
  for (final m in _moduleSource.allMatches(content)) {
    final name = m.group(1)!;
    final source = m.group(2)!;
    if (_isRemoteModule(source)) {
      notes.add(
        '$rel: module "$name" (source: $source) not analyzed '
        '— remote module',
      );
    }
  }
}

void _scanTfJson(
  String content,
  String label,
  String rel,
  List<TfReference> refs,
  List<String> notes,
) {
  final Object? decoded;
  try {
    decoded = jsonDecode(content);
  } on FormatException catch (e) {
    notes.add('$rel: invalid JSON (${e.message})');
    return;
  }
  if (decoded is! Map) return;

  for (final entry in [
    (key: 'resource', kind: CatalogKind.resource),
    (key: 'data', kind: CatalogKind.dataSource),
  ]) {
    final block = decoded[entry.key];
    if (block is! Map) continue;
    block.forEach((type, named) {
      // `{ "google_x": { "a": {...}, "b": {...} } }` — one ref per named block.
      final count = (named is Map && named.isNotEmpty) ? named.length : 1;
      for (var i = 0; i < count; i++) {
        refs.add(
          TfReference(
            type: type as String,
            kind: entry.kind,
            modulePath: label,
          ),
        );
      }
    });
  }

  final modules = decoded['module'];
  if (modules is Map) {
    modules.forEach((name, body) {
      final source = (body is Map) ? body['source'] : null;
      if (source is String && _isRemoteModule(source)) {
        notes.add(
          '$rel: module "$name" (source: $source) not analyzed '
          '— remote module',
        );
      }
    });
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
