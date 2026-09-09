/// `--in-place` (#672): the Terraform tree rewritten to hold only what stays
/// in Terraform.
///
/// Every other mode of the migrator reads `--dir` and never writes to it.
/// This one deliberately breaks that, and it is worth the exception for one
/// reason: after the rewrite, `git diff` in the Terraform tree *is* the
/// review of the migration — every block that became Dart shows as a
/// deletion, in the file it lived in. That is also why it refuses to run
/// unless the working tree is clean: the diff is the deliverable, and
/// `git checkout` is the undo.
///
/// The rewrite cuts source ranges rather than re-rendering: everything that
/// stays keeps its own formatting, comments and blank lines, byte for byte,
/// so nothing in the diff is noise.
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'project.dart';
import 'sidecar.dart';

/// What the rewrite did with one file.
enum InPlaceAction {
  /// Blocks were cut; the rest is unchanged.
  rewritten,

  /// Everything in it became Dart, so nothing is left to keep.
  removed,

  /// Nothing in it became Dart.
  unchanged,

  /// Left alone, with a [InPlaceFile.reason].
  skipped,
}

/// One file of the scanned tree, after the rewrite.
final class InPlaceFile {
  const InPlaceFile({
    required this.path,
    required this.action,
    this.cut = const [],
    this.content,
    this.reason,
  });

  /// The path relative to the scanned root, with forward slashes.
  final String path;
  final InPlaceAction action;

  /// The addresses cut out of this file, in source order.
  final List<String> cut;

  /// The new text, for [InPlaceAction.rewritten].
  final String? content;

  /// Why the file was skipped.
  final String? reason;
}

/// What `--in-place` would do to the scanned tree.
final class InPlaceResult {
  const InPlaceResult({required this.rootPath, required this.files});

  /// The scanned directory, as the caller named it.
  final String rootPath;
  final List<InPlaceFile> files;

  Iterable<InPlaceFile> get _of => files;
  List<InPlaceFile> get rewritten => [
    for (final f in _of)
      if (f.action == InPlaceAction.rewritten) f,
  ];
  List<InPlaceFile> get removed => [
    for (final f in _of)
      if (f.action == InPlaceAction.removed) f,
  ];
  List<InPlaceFile> get skipped => [
    for (final f in _of)
      if (f.action == InPlaceAction.skipped) f,
  ];

  /// Blocks cut across every file.
  int get cutCount => files.fold(0, (n, f) => n + f.cut.length);

  /// True when the tree already holds only what stays in Terraform.
  bool get isEmpty => rewritten.isEmpty && removed.isEmpty;

  Map<String, Object?> toJson() => {
    'root': rootPath,
    'cut': cutCount,
    'files': [
      for (final f in files)
        {
          'path': f.path,
          'action': f.action.name,
          if (f.cut.isNotEmpty) 'cut': f.cut,
          if (f.reason != null) 'reason': f.reason,
        },
    ],
  };

  String renderText() {
    final b = StringBuffer()
      ..writeln('terradart-migrate --in-place: $rootPath')
      ..writeln(
        '  ${_count(cutCount, 'block')} cut, '
        '${_count(rewritten.length, 'file')} rewritten, '
        '${_count(removed.length, 'file')} removed',
      );
    for (final f in files) {
      if (f.action == InPlaceAction.unchanged) continue;
      b.writeln(
        '  ${f.path}: ${f.action.name}'
        '${f.reason == null ? '' : ' (${f.reason})'}'
        '${f.cut.isEmpty ? '' : ' — ${f.cut.join(', ')}'}',
      );
    }
    return b.toString();
  }
}

String _count(int n, String what) => '$n $what${n == 1 ? '' : 's'}';

/// What the tree looks like once every block [project] turned into Dart is
/// cut out of it.
///
/// A `*.tf.json` file is skipped: its nodes carry no source ranges, so there
/// is nothing to cut and re-rendering it would rewrite the whole file. A
/// `moved` block is skipped too — the report does not say which of them
/// became `addMoved`, and a state move is not worth a guess.
InPlaceResult planInPlace(MigratedProject project) {
  final root = p.normalize(p.absolute(project.inputPath));
  final base = _realPath(Directory(root)) ?? root;
  final files = <InPlaceFile>[];
  for (final module in project.modules) {
    final migrated = {for (final m in module.report.migrated) m.address};
    for (final file in module.dir.module.files) {
      final name = file.fileName ?? '';
      final path = p
          .relative(p.normalize(p.absolute(name)), from: root)
          .replaceAll(r'\', '/');
      final escape = _escapes(name, p.join(base, path));
      if (escape != null) {
        files.add(
          InPlaceFile(
            path: path,
            action: InPlaceAction.skipped,
            reason: escape,
          ),
        );
        continue;
      }
      if (file.isJson) {
        files.add(
          InPlaceFile(
            path: path,
            action: InPlaceAction.skipped,
            reason: 'Terraform JSON has no source ranges to cut',
          ),
        );
        continue;
      }
      files.add(
        _rewrite(path, file, migrated, module.report.providers.toSet(), {
          for (final e in module.report.expanded)
            e.address: [for (final i in e.instances) i.to],
        }),
      );
    }
  }
  files.sort((a, b) => a.path.compareTo(b.path));
  return InPlaceResult(rootPath: project.inputPath, files: files);
}

/// Why writing [name] would not be writing the file it looks like, or `null`
/// when the path holds no link at all.
///
/// The scan reads through symbolic links, and so would a write: a `*.tf`
/// link — or a file under a linked directory — sits at a path inside
/// `--dir` and resolves anywhere. That is not the file the rewrite claims to
/// own, its git state is the link's rather than the target's, and two
/// module directories sharing one linked file would each cut it differently.
/// So a path with a link anywhere in it is left alone; [expected] is where
/// the file would resolve to if it had none.
String? _escapes(String name, String expected) {
  final real = _realPath(File(name));
  if (real == null) {
    return 'it could not be resolved on disk';
  }
  if (real != p.normalize(expected)) {
    return 'it is reached through a symbolic link, and resolves to "$real"';
  }
  return null;
}

/// [entity]'s path with every symbolic link resolved, or `null` when it does
/// not resolve.
String? _realPath(FileSystemEntity entity) {
  try {
    return p.normalize(entity.resolveSymbolicLinksSync());
  } on FileSystemException {
    return null;
  }
}

/// One file with the migrated blocks cut out.
InPlaceFile _rewrite(
  String path,
  HclFile file,
  Set<String> migrated,
  Set<String> providers,
  Map<String, List<String>> unrolled,
) {
  // A `count` / `for_each` block is in the report under the addresses of
  // the instances it was unrolled into (`google_x.y_0`), never under the one
  // it is written as — but the block in the file is the one written.
  bool becameDart(String address) =>
      migrated.contains(address) ||
      (unrolled[address]?.every(migrated.contains) ?? false);

  final ranges = <SourceRange>[];
  final cut = <String>[];

  /// Cuts the entries of [block] the Stack owns, or the block itself when it
  /// owns all of them.
  void inner(Block block, Map<BodyEntry, String> addressed) {
    final gone = [
      for (final e in addressed.entries)
        if (migrated.contains(e.value)) e.key,
    ];
    if (gone.isEmpty) return;
    cut.addAll([for (final e in gone) addressed[e]!]);
    if (gone.length == addressed.length) {
      ranges.add(entryRange(block));
    } else {
      ranges.addAll(gone.map(entryRange));
    }
  }

  for (final entry in file.body.entries) {
    if (entry is! Block) continue;
    // A `locals` or `terraform` block is split entry by entry, exactly as
    // the sidecar splits it: part of it may be the Stack's and part not.
    switch (entry.type) {
      case 'locals':
        inner(entry, {
          for (final e in entry.body.entries)
            if (e is Attribute) e: 'local.${e.name}',
        });
        continue;
      case 'terraform':
        _terraform(entry, migrated, providers, ranges, cut, inner);
        continue;
    }
    final address = _address(entry);
    if (address == null || !becameDart(address)) continue;
    ranges.add(entryRange(entry));
    cut.add(address);
  }
  if (ranges.isEmpty) {
    return InPlaceFile(path: path, action: InPlaceAction.unchanged);
  }
  final text = _cut(file.source, ranges);
  return text.trim().isEmpty
      ? InPlaceFile(path: path, action: InPlaceAction.removed, cut: cut)
      : InPlaceFile(
          path: path,
          action: InPlaceAction.rewritten,
          cut: cut,
          content: text,
        );
}

/// The report address of a top-level block, or `null` for one the report
/// does not name (`moved`, and anything the parser did not recognize).
String? _address(Block block) {
  final labels = [for (final l in block.labels) l.text];
  return switch (block.type) {
    'resource' when labels.length == 2 => '${labels[0]}.${labels[1]}',
    'data' when labels.length == 2 => 'data.${labels[0]}.${labels[1]}',
    'module' when labels.length == 1 => 'module.${labels.single}',
    'variable' when labels.length == 1 => 'variable.${labels.single}',
    'output' when labels.length == 1 => 'output.${labels.single}',
    'provider' when labels.length == 1 => _providerAddress(block, labels),
    _ => null,
  };
}

String _providerAddress(Block block, List<String> labels) {
  for (final entry in block.body.entries) {
    if (entry is Attribute && entry.name == 'alias') {
      final alias = entry.value.constantString;
      if (alias != null) return 'provider.${labels.single}.$alias';
    }
  }
  return 'provider.${labels.single}';
}

/// The `terraform { }` block, whose settings are split entry by entry and
/// whose `required_providers` is split again: the Stack declares the
/// providers the report names, and Terraform rejects a second declaration.
void _terraform(
  Block block,
  Set<String> migrated,
  Set<String> providers,
  List<SourceRange> ranges,
  List<String> cut,
  void Function(Block, Map<BodyEntry, String>) inner,
) {
  final settings = <BodyEntry, String>{};
  Block? required;
  for (final entry in block.body.entries) {
    if (entry is Block && entry.type == 'required_providers') {
      required = entry;
      continue;
    }
    settings[entry] = switch (entry) {
      Attribute(:final name) => 'terraform.$name',
      Block(:final type) => 'terraform.$type',
    };
  }
  final settingsGone = settings.values.every(migrated.contains);
  if (required == null) {
    inner(block, settings);
    return;
  }
  final owned = [
    for (final e in required.body.entries)
      if (e is Attribute && providers.contains(e.name)) e,
  ];
  if (owned.length == required.body.entries.length && settingsGone) {
    // Nothing of the block is the module's any more — including the usual
    // layout, where `required_providers` is all it holds and an empty
    // `terraform { }` is what cutting the entries alone would leave.
    ranges.add(entryRange(block));
    cut
      ..addAll(settings.values)
      ..addAll([
        for (final e in owned) 'terraform.required_providers.${e.name}',
      ]);
    return;
  }
  inner(block, settings);
  if (owned.isEmpty) return;
  cut.addAll([for (final e in owned) 'terraform.required_providers.${e.name}']);
  ranges.addAll(
    owned.length == required.body.entries.length
        ? [entryRange(required)]
        : owned.map(entryRange),
  );
}

/// [source] with [ranges] cut out, whole lines at a time.
///
/// Only the cut is a change: every line that stays keeps its own bytes. The
/// blank lines a block was separated from the next one by go with it, so the
/// gap left behind is the one that was already there; where nothing but a
/// closing brace or the end of the file follows, the blank lines above it go
/// instead, since they would otherwise dangle.
String _cut(String source, List<SourceRange> ranges) {
  final sorted = [...ranges]
    ..sort((a, b) => a.start.offset.compareTo(b.start.offset));
  final buf = StringBuffer();
  var at = 0;
  for (final range in sorted) {
    if (range.isNone) continue;
    var start = _lineStart(source, range.start.offset);
    var end = _lineEnd(source, range.end.offset);
    final after = _skipBlankLines(source, end);
    if (after > end) {
      end = after;
    } else if (_closesScope(source, end)) {
      start = _backOverBlankLines(source, start);
    }
    if (start < at) continue;
    buf.write(source.substring(at, start));
    at = end;
  }
  buf.write(source.substring(at));
  final text = buf.toString();
  return text.trim().isEmpty ? '' : '${text.trimRight()}\n';
}

/// The start of the line [offset] sits on, over its indentation only.
int _lineStart(String source, int offset) {
  var i = offset;
  while (i > 0 && (source[i - 1] == ' ' || source[i - 1] == '\t')) {
    i--;
  }
  return i;
}

/// Just past the newline ending the line [offset] sits on.
int _lineEnd(String source, int offset) {
  var i = offset;
  while (i < source.length && source[i] != '\n') {
    i++;
  }
  return i < source.length ? i + 1 : i;
}

/// Just past the run of blank lines starting at [offset].
int _skipBlankLines(String source, int offset) {
  var i = offset;
  while (i < source.length) {
    final end = _lineEnd(source, i);
    if (source.substring(i, end).trim().isNotEmpty) return i;
    i = end;
    if (end == offset) return i;
  }
  return i;
}

/// Back over the run of blank lines ending at [offset].
int _backOverBlankLines(String source, int offset) {
  var i = offset;
  while (i > 0) {
    final lineStart = source.lastIndexOf('\n', i - 2) + 1;
    if (source.substring(lineStart, i).trim().isNotEmpty) return i;
    i = lineStart;
    if (lineStart == 0) return 0;
  }
  return i;
}

/// True when nothing but a closing brace or the end of the file follows
/// [offset].
bool _closesScope(String source, int offset) {
  final rest = source.substring(offset).trimLeft();
  return rest.isEmpty || rest.startsWith('}');
}

/// Why [dir] may not be rewritten in place, or `null` when it may.
///
/// The rewrite deletes the user's own Terraform, so the only acceptable undo
/// is `git checkout`: the directory has to be inside a git working tree with
/// nothing uncommitted in it, untracked files included.
String? inPlaceGitBlocker(Directory dir) {
  if (!dir.existsSync()) return '"${dir.path}" is not a directory';
  final inside = Process.runSync('git', const [
    'rev-parse',
    '--is-inside-work-tree',
  ], workingDirectory: dir.path);
  if (inside.exitCode != 0 || '${inside.stdout}'.trim() != 'true') {
    return '"${dir.path}" is not inside a git working tree, so there would '
        'be no way to undo the rewrite';
  }
  final status = Process.runSync('git', const [
    'status',
    '--porcelain',
    '--',
    '.',
  ], workingDirectory: dir.path);
  if (status.exitCode != 0) {
    return 'git status failed in "${dir.path}": ${status.stderr}';
  }
  final dirty = '${status.stdout}'.trim();
  if (dirty.isEmpty) return null;
  return 'the working tree under "${dir.path}" has uncommitted changes; '
      'commit or stash them first, so `git diff` afterwards is the '
      'migration and nothing else:\n$dirty';
}

/// Applies [result] to [root].
///
/// Only the `*.tf` files the scan read are written or removed, and only
/// under [root]: a path that escapes it, or names anything else, is a
/// [FileSystemException] before a single file is touched.
void writeInPlace(InPlaceResult result, Directory root) {
  final lexical = p.normalize(p.absolute(root.path));
  final base = _realPath(root) ?? lexical;
  final targets = <InPlaceFile, File>{};
  for (final f in result.files) {
    if (f.action == InPlaceAction.unchanged ||
        f.action == InPlaceAction.skipped) {
      continue;
    }
    final path = p.normalize(p.join(lexical, f.path));
    // Lexical containment is not containment: a `*.tf` symbolic link, or a
    // file under a linked directory, sits at a path inside `--dir` and
    // resolves anywhere, and a write follows it. Both the path and what it
    // resolves to have to be ours.
    if (!p.isWithin(lexical, path) ||
        !path.endsWith('.tf') ||
        _realPath(File(path)) != p.normalize(p.join(base, f.path))) {
      throw FileSystemException(
        'terradart-migrate --in-place rewrites only the *.tf files it read '
        'under "${root.path}", and never through a symbolic link',
        f.path,
      );
    }
    targets[f] = File(path);
  }
  for (final entry in targets.entries) {
    if (entry.key.action == InPlaceAction.removed) {
      if (entry.value.existsSync()) entry.value.deleteSync();
      continue;
    }
    entry.value.writeAsStringSync(entry.key.content!);
  }
}
