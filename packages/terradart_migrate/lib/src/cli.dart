/// The `terradart-migrate` command line.
library;

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;

import 'project.dart';
import 'topology.dart';
import 'version.dart';

/// Exit codes (BSD sysexits, like `terradart`).
abstract final class MigrateExitCodes {
  static const success = 0;

  /// Bad flags or missing required options.
  static const usage = 64;

  /// The input does not parse, has no Terraform files, or does not exist.
  static const dataError = 65;

  /// An unexpected failure inside the migrator.
  static const software = 70;

  /// The output directory exists and is not empty, or cannot be written.
  static const cannotCreate = 73;
}

/// Runs `terradart-migrate` with [argv]; returns the exit code. [out] and
/// [err] default to stdout and stderr.
Future<int> runMigrateCli(
  List<String> argv, {
  StringSink? out,
  StringSink? err,
}) async {
  final o = out ?? stdout;
  final e = err ?? stderr;
  final parser = _parser();
  final ArgResults args;
  try {
    args = parser.parse(argv);
  } on FormatException catch (x) {
    e
      ..writeln('terradart-migrate: ${x.message}')
      ..writeln()
      ..writeln(_usage(parser));
    return MigrateExitCodes.usage;
  }
  if (args['help'] as bool) {
    o.writeln(_usage(parser));
    return MigrateExitCodes.success;
  }
  if (args['version'] as bool) {
    o.writeln('terradart-migrate $packageVersion');
    return MigrateExitCodes.success;
  }
  final dirArg = args['dir'] as String?;
  final outArg = args['out'] as String?;
  if (dirArg == null || outArg == null) {
    e
      ..writeln('terradart-migrate: --dir and --out are required')
      ..writeln()
      ..writeln(_usage(parser));
    return MigrateExitCodes.usage;
  }
  final dir = Directory(dirArg);
  if (!dir.existsSync()) {
    e.writeln('terradart-migrate: --dir "$dirArg" is not a directory');
    return MigrateExitCodes.dataError;
  }
  final outDir = Directory(outArg);
  final force = args['force'] as bool;
  if (!force && outDir.existsSync() && outDir.listSync().isNotEmpty) {
    e.writeln(
      'terradart-migrate: --out "$outArg" exists and is not empty; pass '
      '--force to write into it (only the files the migrator generates are '
      'overwritten)',
    );
    return MigrateExitCodes.cannotCreate;
  }

  final ModuleTree tree;
  try {
    tree = scanModuleTree(
      dir,
      roots: args['roots'] as List<String>,
      environmentDirs: args['env-dirs'] as List<String>,
    );
  } on ModuleTreeException catch (x) {
    for (final error in x.errors) {
      e.writeln('terradart-migrate: ${error.relPath}: ${error.exception}');
    }
    return MigrateExitCodes.dataError;
  }
  if (tree.modules.isEmpty) {
    e.writeln('terradart-migrate: no *.tf or *.tf.json files under "$dirArg"');
    return MigrateExitCodes.dataError;
  }

  final name =
      args['name'] as String? ?? p.basename(p.normalize(dir.absolute.path));
  final MigratedProject project;
  try {
    project = migrateTree(
      tree,
      name: name,
      allowTodo: args['allow-todo'] as bool,
    );
  } on Object catch (x, st) {
    e
      ..writeln('terradart-migrate: internal error: $x')
      ..writeln(st);
    return MigrateExitCodes.software;
  }
  try {
    writeProject(project, outDir);
  } on FileSystemException catch (x) {
    e.writeln('terradart-migrate: $x');
    return MigrateExitCodes.cannotCreate;
  }
  if (args['json'] as bool) {
    o.writeln(const JsonEncoder.withIndent('  ').convert(project.toJson()));
  } else {
    o.write(project.renderText(outArg));
  }
  return MigrateExitCodes.success;
}

/// Writes [project]'s files and copies under [outDir]; never touches the
/// scanned tree, and never writes outside [outDir]: a path that resolves
/// elsewhere (a `..` segment, say) is refused with a [FileSystemException]
/// before anything is written.
void writeProject(MigratedProject project, Directory outDir) {
  final root = p.normalize(outDir.absolute.path);
  File target(String rel) {
    final path = p.normalize(p.join(root, rel));
    if (!p.isWithin(root, path)) {
      throw FileSystemException(
        'refusing to write outside the output directory',
        path,
      );
    }
    return File(path);
  }

  final files = [
    for (final e in project.files.entries) (file: target(e.key), text: e.value),
  ];
  final copies = [
    for (final c in project.copies) (from: File(c.from), to: target(c.to)),
  ];
  for (final w in files) {
    w.file.parent.createSync(recursive: true);
    w.file.writeAsStringSync(w.text);
  }
  for (final c in copies) {
    c.to.parent.createSync(recursive: true);
    c.from.copySync(c.to.path);
  }
}

ArgParser _parser() => ArgParser(usageLineLength: 80)
  ..addOption(
    'dir',
    valueHelp: 'terraform dir',
    help:
        'The Terraform source tree to migrate. Every directory holding .tf or '
        '.tf.json files becomes one Stack; no terraform run, init, backend or '
        'credentials, and nothing here is written.',
  )
  ..addOption(
    'out',
    valueHelp: 'package dir',
    help:
        'Where the Dart package is written. Must not exist or be empty unless '
        '--force is given.',
  )
  ..addOption(
    'name',
    valueHelp: 'name',
    help:
        'The project name: the Dart package name and the root Stack class. '
        'Defaults to the base name of --dir.',
  )
  ..addMultiOption(
    'roots',
    valueHelp: 'dir',
    help:
        'Directories (relative to --dir) to treat as root modules even when a '
        'module block references them.',
  )
  ..addMultiOption(
    'env-dirs',
    valueHelp: 'dir',
    help:
        'Root directories (relative to --dir) that are environments of one '
        'deployment. By default, roots sharing a parent directory are.',
  )
  ..addFlag(
    'allow-todo',
    negatable: false,
    help:
        'Write a TODO comment per untranslated block into the Stack instead '
        'of a sidecar. The plan then differs until the TODOs are ported.',
  )
  ..addFlag('json', negatable: false, help: 'Print the report as JSON.')
  ..addFlag(
    'force',
    negatable: false,
    help:
        'Write into a non-empty --out, overwriting the files the migrator '
        'generates.',
  )
  ..addFlag('version', negatable: false, help: 'Print the version and exit.')
  ..addFlag('help', abbr: 'h', negatable: false, help: 'Print this help.');

String _usage(ArgParser parser) => '''
Usage: terradart-migrate --dir <terraform dir> --out <package dir> [options]

Migrates a Terraform source tree into a TerraDart package: one Stack per
module directory (child-module mode for directories a `module` block points
at), a Terraform directory per module under tf-out/ mirroring the tree, a
leftover sidecar next to each main.tf.json for what stays in Terraform, and
MIGRATION.md with a reason for every kept block. Reads .tf and .tf.json with
no terraform run, init or credentials; never writes into --dir.

${parser.usage}''';
