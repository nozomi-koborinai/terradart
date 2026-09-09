/// The `terradart-migrate` command line.
library;

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart' show HclParseException;

import 'in_place.dart';
import 'project.dart';
import 'rerun.dart';
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
  final updateArg = args['update'] as String?;
  if (updateArg != null) {
    if (args['dir'] != null || args['out'] != null) {
      e
        ..writeln(
          'terradart-migrate: --update reads and writes one package; it '
          'takes neither --dir nor --out',
        )
        ..writeln()
        ..writeln(_usage(parser));
      return MigrateExitCodes.usage;
    }
    return _runUpdate(updateArg, o, e, json: args['json'] as bool);
  }
  final inlineLocals = args['inline-locals'] as bool;
  if (inlineLocals && args['merge-envs'] as bool) {
    // Both move a value out of Terraform and into Dart, and --merge-envs
    // does it better: what the environments disagree on becomes a constant
    // on the `Env` enum, which one `final` per Stack cannot express.
    e
      ..writeln(
        'terradart-migrate: --inline-locals and --merge-envs cannot be '
        'combined; --merge-envs already lifts the values the environments '
        'disagree on onto the generated Env enum',
      )
      ..writeln()
      ..writeln(_usage(parser));
    return MigrateExitCodes.usage;
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
  // Checked before a single file is written, --out included: the rewrite
  // deletes the user's own Terraform, and `git checkout` is the only undo.
  final inPlace = args['in-place'] as bool;
  if (inPlace) {
    final blocker = inPlaceGitBlocker(dir);
    if (blocker != null) {
      e.writeln('terradart-migrate: --in-place refuses to run: $blocker');
      return MigrateExitCodes.cannotCreate;
    }
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
      mergeEnvs: args['merge-envs'] as bool,
      liftWorkspace: args['lift-workspace'] as bool,
      inlineLocals: inlineLocals,
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
  InPlaceResult? rewrite;
  if (inPlace) {
    rewrite = planInPlace(project);
    try {
      writeInPlace(rewrite, dir);
    } on FileSystemException catch (x) {
      e.writeln('terradart-migrate: $x');
      return MigrateExitCodes.cannotCreate;
    }
  }
  if (args['json'] as bool) {
    o.writeln(
      const JsonEncoder.withIndent('  ').convert({
        ...project.toJson(),
        if (rewrite != null) 'inPlace': rewrite.toJson(),
      }),
    );
  } else {
    o.write(project.renderText(outArg));
    if (rewrite != null) o.write(rewrite.renderText());
  }
  return MigrateExitCodes.success;
}

/// `--update`: re-runs over a package the migrator generated.
Future<int> _runUpdate(
  String path,
  StringSink o,
  StringSink e, {
  required bool json,
}) async {
  final dir = Directory(path);
  if (!dir.existsSync()) {
    e.writeln('terradart-migrate: --update "$path" is not a directory');
    return MigrateExitCodes.dataError;
  }
  final RerunResult result;
  try {
    result = rerunProject(dir);
  } on FileSystemException catch (x) {
    e.writeln('terradart-migrate: ${x.message} (${x.path})');
    return MigrateExitCodes.dataError;
  } on HclParseException catch (x) {
    e.writeln('terradart-migrate: $x');
    return MigrateExitCodes.dataError;
  } on Object catch (x, st) {
    e
      ..writeln('terradart-migrate: internal error: $x')
      ..writeln(st);
    return MigrateExitCodes.software;
  }
  try {
    writeRerun(result, dir);
  } on FileSystemException catch (x) {
    e.writeln('terradart-migrate: $x');
    return MigrateExitCodes.cannotCreate;
  }
  if (json) {
    o.writeln(const JsonEncoder.withIndent('  ').convert(result.toJson()));
  } else {
    o.write(result.renderText());
  }
  return MigrateExitCodes.success;
}

/// Writes a re-run's files into [packageDir].
///
/// The whole point of `--update` is that it cannot damage a package it did
/// not write, so this refuses any path that is not one of the three the
/// re-run owns — a snippets library, a `.next.tf`, or the report — before
/// writing anything.
void writeRerun(RerunResult result, Directory packageDir) {
  final root = p.normalize(packageDir.absolute.path);
  final targets = <File, String>{};
  for (final entry in result.files.entries) {
    final rel = entry.key;
    final base = p.basename(rel);
    final owned =
        rel == rerunReportFileName ||
        base.endsWith(snippetsSuffix) ||
        base == nextLeftoverFileName;
    final path = p.normalize(p.join(root, rel));
    if (!owned || !p.isWithin(root, path)) {
      throw FileSystemException(
        'refusing to write "$rel": a re-run writes only $rerunReportFileName, '
        '*$snippetsSuffix and $nextLeftoverFileName',
        path,
      );
    }
    targets[File(path)] = entry.value;
  }
  for (final w in targets.entries) {
    w.key.parent.createSync(recursive: true);
    w.key.writeAsStringSync(w.value);
  }
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
    'update',
    valueHelp: 'package dir',
    help:
        'Re-run over a package terradart-migrate already generated, instead '
        'of migrating a tree. Reads each Terraform directory\'s sidecar (not '
        'the main.tf.json a Stack writes), and writes what translates today '
        'as lib/<stack>.snippets.dart plus terradart_leftover.next.tf. Your '
        'Dart is never overwritten.',
  )
  ..addOption(
    'dir',
    valueHelp: 'terraform dir',
    help:
        'The Terraform source tree to migrate. Every directory holding .tf or '
        '.tf.json files becomes one Stack; no terraform run, init, backend or '
        'credentials, and nothing here is written unless --in-place is '
        'given.',
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
    'merge-envs',
    negatable: false,
    help:
        'Fold each group of sibling environment roots into one Stack taking '
        'an `Env` enum: the values they disagree on become constants on it, '
        'and blocks only some of them declare sit behind a flag. A group '
        'that cannot be merged keeps one Stack per root, with the reason in '
        'MIGRATION.md.',
  )
  ..addFlag(
    'lift-workspace',
    negatable: false,
    help:
        'Turn `terraform.workspace` into a `workspace` parameter on the '
        'Stack, so `dart run bin/infra.dart --workspace <name>` synthesizes '
        'for one workspace by name instead of leaving the template for '
        '`terraform workspace select` to resolve.',
  )
  ..addFlag(
    'inline-locals',
    negatable: false,
    help:
        'Declare a `locals` entry whose value is a literal as a Dart final '
        'in the Stack, and read it from there instead of the `\${local.x}` '
        'template Terraform resolves from the sidecar. A local nothing in '
        'the Stack reads, or that something still in Terraform reads, keeps '
        'its sidecar entry.',
  )
  ..addFlag(
    'in-place',
    negatable: false,
    help:
        'Rewrite the Terraform tree under --dir so its .tf files keep only '
        'the blocks that stay in Terraform. Destructive, and the one mode '
        'that writes to --dir: it refuses unless that directory is inside a '
        'git working tree with nothing uncommitted, so `git diff` afterwards '
        'is the migration and `git checkout` is the undo.',
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
MIGRATION.md with a reason for every kept block. With --merge-envs, sibling
environment roots become one Stack per group, parameterised by a generated
Env enum. Reads .tf and .tf.json with no terraform run, init or credentials;
never writes into --dir.

  terradart-migrate --update <package dir>

re-runs over a package it already generated: what the catalog covers today
but did not before becomes a pasteable snippet, and nothing of yours is
overwritten.

${parser.usage}''';
