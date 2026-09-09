/// `--update`: re-running the migrator on a package it already generated.
///
/// A migration is not a one-shot. The catalog grows, and a block that had no
/// factory six months ago has one today. But the Dart in the package is the
/// user's now — hand-edited, refactored, reviewed — so re-migrating over it
/// is not an option.
///
/// So the re-run reads only what is *still Terraform*: each module's sidecar,
/// everything in its `tf-out/` directory except the `main.tf.json` the Stack
/// itself writes. What translates now becomes `lib/<stack>.snippets.dart` —
/// an extension on `Stack` whose body is the statements to paste — beside
/// `terradart_leftover.next.tf`, the sidecar as it looks once they are
/// pasted. Nothing else is written: no Dart of the user's is ever touched.
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/context.dart';
import 'emit/naming.dart';
import 'emit/stack_emitter.dart';
import 'manifests.dart';
import 'migrate.dart';
import 'migrate_manifest.dart';
import 'report.dart';
import 'sidecar.dart';
import 'version.dart';

/// The Terraform file a Stack writes; never part of its own sidecar.
const synthFileName = 'main.tf.json';

/// The pasteable Dart of one re-run module (`lib/<stem>.snippets.dart`).
const snippetsSuffix = '.snippets.dart';

/// The sidecar as it looks once the snippets are pasted.
const nextLeftoverFileName = 'terradart_leftover.next.tf';

/// The re-run report at the package root.
const rerunReportFileName = 'RERUN.md';

/// One module directory of the package, re-read from its sidecar.
final class RerunModule {
  const RerunModule({
    required this.terraformDir,
    required this.stem,
    required this.stackFile,
    required this.snippets,
    required this.nextLeftover,
    required this.translated,
    required this.stillKept,
    required this.packages,
    required this.sidecarBlocks,
  });

  /// `tf-out/dev`, relative to the package root.
  final String terraformDir;

  /// `dev_stack` — the snippets live in `lib/<stem>.snippets.dart` and the
  /// Stack, if the package still has one under that name, in `lib/<stem>.dart`.
  final String stem;

  /// `lib/<stem>.dart` when the package has it; `null` when the Stack was
  /// renamed, or merged into another one by `--merge-envs`.
  final String? stackFile;

  /// The snippets library; empty when nothing new translates.
  final String snippets;

  /// The shrunken sidecar; `null` when it would not change.
  final String? nextLeftover;

  /// The blocks that translate now and did not before.
  final List<MigratedItem> translated;

  /// What is still Terraform, with the reason; empty when nothing in the
  /// directory translates at all (there is then no new reason to give).
  final List<KeptItem> stillKept;

  /// Provider packages the snippets import.
  final List<String> packages;

  /// How many blocks the sidecar holds in total.
  final int sidecarBlocks;

  /// `DevStack` — the class `lib/<stem>.dart` declares, when it still does.
  String get stackClass => pascalCase(stem);

  /// `DevStackRerun` — the extension the snippets declare.
  String get extensionName => '${stackClass}Rerun';

  /// `devStackBlocks` — its method, whose body is what gets pasted.
  String get methodName => '${lowerCamel(stem)}Blocks';

  /// `lib/<stem>.snippets.dart`.
  String get snippetsFile => 'lib/$stem$snippetsSuffix';

  bool get hasSnippets => translated.isNotEmpty;
}

/// What a whole re-run found.
final class RerunResult {
  const RerunResult({
    required this.packagePath,
    required this.modules,
    required this.files,
  });

  /// The package the re-run read, as the caller named it.
  final String packagePath;
  final List<RerunModule> modules;

  /// Path (relative to the package root) → content. Only files the re-run
  /// owns: `*.snippets.dart`, `*.next.tf` and `RERUN.md`.
  final Map<String, String> files;

  List<RerunModule> get changed => [
    for (final m in modules)
      if (m.hasSnippets) m,
  ];

  int get translatedCount => modules.fold(0, (n, m) => n + m.translated.length);
  int get keptCount => modules.fold(0, (n, m) => n + m.stillKept.length);

  /// How many blocks the sidecars hold, translated or not.
  int get sidecarBlockCount => modules.fold(0, (n, m) => n + m.sidecarBlocks);

  /// True when no block the sidecars hold translates today.
  bool get isEmpty => changed.isEmpty;

  Map<String, Object?> toJson() => {
    'version': packageVersion,
    'package': packagePath,
    'translated': translatedCount,
    'kept': keptCount,
    'modules': [
      for (final m in modules)
        {
          'terraformDir': m.terraformDir,
          'stackFile': m.stackFile,
          'snippets': m.hasSnippets ? m.snippetsFile : null,
          'translated': [for (final t in m.translated) t.address],
          'kept': {for (final k in m.stillKept) k.address: k.reason},
        },
    ],
    'files': files.keys.toList()..sort(),
  };

  /// The stdout summary.
  String renderText() {
    final b = StringBuffer()
      ..writeln('terradart-migrate $packageVersion: re-run on $packagePath');
    if (isEmpty) {
      b.writeln(
        '  nothing new: no factory added since the last run covers the '
        '${_count(sidecarBlockCount, 'block')} still in Terraform.',
      );
      return b.toString();
    }
    b.writeln(
      '  ${_count(translatedCount, 'block')} '
      '${translatedCount == 1 ? 'translates' : 'translate'} now, across '
      '${_count(changed.length, 'directory', 'directories')}; '
      '${_count(keptCount, 'block')} still in Terraform',
    );
    for (final m in changed) {
      b.writeln(
        '  ${m.terraformDir}: ${m.translated.length} → ${m.snippetsFile}',
      );
    }
    b
      ..writeln('Report: $rerunReportFileName')
      ..writeln(
        'Next: paste each snippet body into its Stack, swap the '
        '$nextLeftoverFileName files in, and re-synthesize.',
      );
    return b.toString();
  }

  /// `RERUN.md` — what translates now, and how to take it.
  String renderMarkdown() {
    final b = StringBuffer()
      ..writeln('# Re-run report')
      ..writeln()
      ..writeln(
        '`terradart-migrate $packageVersion --update` re-read the sidecar of '
        'every Terraform directory in `$packagePath` — what is still '
        'Terraform, never the `$synthFileName` a Stack writes — and migrated '
        'it against today\'s catalog.',
      )
      ..writeln();
    if (isEmpty) {
      b
        ..writeln(
          'Nothing new: no factory added since the last run covers the '
          '${_count(sidecarBlockCount, 'block')} still in Terraform. No file '
          'was written apart from this report.',
        )
        ..writeln();
      _writeKept(b);
      return b.toString();
    }
    b
      ..writeln(
        '**$translatedCount block${translatedCount == 1 ? '' : 's'} '
        'translate${translatedCount == 1 ? 's' : ''} now.** Nothing was '
        'overwritten: your Dart is untouched, and so is every sidecar. The '
        're-run only added the files below.',
      )
      ..writeln()
      ..writeln('## Taking the snippets')
      ..writeln();
    for (final m in changed) {
      final target = m.stackFile == null
          ? 'the Stack that synthesizes into `${m.terraformDir}`'
          : '`${m.stackFile}`';
      b
        ..writeln('### `${m.terraformDir}`')
        ..writeln()
        ..writeln(
          '1. Paste the body of `${m.methodName}()` from '
          '`${m.snippetsFile}` into $target\'s constructor.',
        )
        ..writeln(
          '2. Add the imports that file opens with'
          '${m.packages.isEmpty ? '' : ' (${m.packages.map((p) => '`$p`').join(', ')})'}.',
        )
        ..writeln(
          '3. Replace `${m.terraformDir}/$leftoverFileName` with '
          '`${m.terraformDir}/$nextLeftoverFileName`.',
        )
        ..writeln(
          '4. Delete `${m.snippetsFile}`, re-synthesize, and `terraform plan` '
          '— it must report *No changes*.',
        )
        ..writeln();
      b
        ..writeln('| Block | Dart |')
        ..writeln('| :--- | :--- |');
      for (final t in m.translated) {
        b.writeln(
          '| `${t.address}` | ${t.dartName == null ? 'added' : '`${t.dartName}`'} |',
        );
      }
      b.writeln();
    }
    _writeKept(b);
    return b.toString();
  }

  void _writeKept(StringBuffer b) {
    final kept = [
      for (final m in modules)
        for (final k in m.stillKept) (dir: m.terraformDir, item: k),
    ];
    if (kept.isEmpty) return;
    b
      ..writeln('## Still in Terraform')
      ..writeln()
      ..writeln('| Directory | Block | Reason |')
      ..writeln('| :--- | :--- | :--- |');
    for (final k in kept) {
      b.writeln('| `${k.dir}` | `${k.item.address}` | ${k.item.reason} |');
    }
    b.writeln();
  }
}

/// Re-runs the migrator over the package in [packageDir].
///
/// Reads every `tf-out/` directory's sidecar, migrates it against
/// [manifests] (the current catalogs by default), and returns the snippets
/// and shrunken sidecars — without writing anything. [format] runs the
/// emitted Dart through `dart_style`.
///
/// Throws [FileSystemException] when [packageDir] holds no `tf-out/` tree,
/// and [ModuleTreeException]-style [HclParseException] when a sidecar does
/// not parse.
RerunResult rerunProject(
  Directory packageDir, {
  List<MigrateManifest>? manifests,
  bool format = true,
}) {
  final root = p.normalize(packageDir.absolute.path);
  final tfOut = Directory(p.join(root, 'tf-out'));
  if (!tfOut.existsSync()) {
    throw FileSystemException(
      'no tf-out/ directory: --update expects a package terradart-migrate '
      'generated',
      tfOut.path,
    );
  }
  // The root of the mirrored tree is `tf-out/` itself, and its Stack is
  // named after the package, not after the directory.
  final name = _packageName(root) ?? p.basename(root);
  final stackClasses = _stacksByDirectory(root);
  final modules = <RerunModule>[];
  final files = <String, String>{};
  final stems = <String>{};
  for (final dir in _terraformDirs(tfOut)) {
    final relDir = p.relative(dir.path, from: root).replaceAll(r'\', '/');
    final module = _sidecarModule(dir);
    final blocks =
        module.resources.length +
        module.dataSources.length +
        module.moduleCalls.length;
    if (blocks == 0) continue;
    // The Stack `bin/infra.dart` points at this directory, when it names
    // one; else the name the first run would have derived. Two directories
    // can share a base name (`envs/*/modules/api`), and their snippets may
    // not share a file.
    final declared = stackClasses[relDir];
    var stem = declared != null
        ? snakeCase(declared)
        : stackNames(
            relDir == 'tf-out' ? name : p.basename(dir.path),
          ).stackFile;
    for (var n = 2; !stems.add(stem); n++) {
      stem = '${stackNames(p.basename(dir.path)).stackFile}_$n';
    }
    final stackFile = File(p.join(root, 'lib', '$stem.dart')).existsSync()
        ? 'lib/$stem.dart'
        : null;
    final rerun = _rerunModule(
      module,
      terraformDir: relDir,
      stem: stem,
      stackFile: stackFile,
      existingStack: stackFile == null
          ? null
          : File(p.join(root, stackFile)).readAsStringSync(),
      currentLeftover: _read(p.join(dir.path, leftoverFileName)),
      sidecarBlocks: blocks,
      manifests: manifests,
      format: format,
    );
    modules.add(rerun);
    if (rerun.hasSnippets) files[rerun.snippetsFile] = rerun.snippets;
    final next = rerun.nextLeftover;
    if (next != null) files['$relDir/$nextLeftoverFileName'] = next;
  }
  final result = RerunResult(
    packagePath: packageDir.path,
    modules: modules,
    files: files,
  );
  // The report is written like any other file the re-run owns; it just
  // needs the finished result to render.
  files[rerunReportFileName] = result.renderMarkdown();
  return result;
}

RerunModule _rerunModule(
  TfModule module, {
  required String terraformDir,
  required String stem,
  required String? stackFile,
  required String? existingStack,
  required String? currentLeftover,
  required int sidecarBlocks,
  required List<MigrateManifest>? manifests,
  required bool format,
}) {
  final emitted = StackEmitter(
    module,
    ctx: EmitContext(
      manifests: manifests ?? allMigrateManifests,
      sensitive: SensitiveIndex.fromCatalogs(),
    ),
    moduleName: terraformDir,
    stackClass: pascalCase(stem),
    stackFile: stem,
    version: packageVersion,
    // A local the Stack already declares must not be shadowed by a pasted
    // one; the snippets pick another name instead.
    reservedNames: _localsOf(existingStack),
  ).emit();

  // Blocks and their `moved` entries are pasteable; variables, outputs, the
  // backend and the `terraform` settings are the Stack's structure, and the
  // re-run has no business rewriting it.
  final statements = [
    for (final s in emitted.statements)
      if (_isPasteable(s.tag)) s,
  ];
  final translated = [
    for (final m in emitted.report.migrated)
      if (_isBlockTag(m.address)) m,
  ];
  if (!emitted.hasStack || statements.isEmpty) {
    return RerunModule(
      terraformDir: terraformDir,
      stem: stem,
      stackFile: stackFile,
      snippets: '',
      nextLeftover: null,
      translated: const [],
      // Without a Stack every block is kept for the same structural reason,
      // which says nothing about the block; the sidecar is simply unchanged.
      stillKept: emitted.hasStack
          ? List.unmodifiable(emitted.report.kept)
          : const [],
      packages: const [],
      sidecarBlocks: sidecarBlocks,
    );
  }

  // The next sidecar must hold everything the snippets do not carry, or
  // swapping it in would drop it: a provider configuration, a variable, an
  // output, the `terraform` settings. Only what is pasted may leave.
  final report = MigrationReport(
    module: emitted.report.module,
    stackClass: emitted.report.stackClass,
    migrated: [
      for (final m in emitted.report.migrated)
        if (_isPasteable(m.address)) m,
    ],
    kept: [
      ...emitted.report.kept,
      for (final m in emitted.report.migrated)
        if (!_isPasteable(m.address))
          KeptItem(address: m.address, reason: _notPasteable),
    ],
    warnings: emitted.report.warnings,
    packages: emitted.report.packages,
    providers: emitted.report.providers,
    expanded: emitted.report.expanded,
  );
  final next = _collapseReasons(
    buildSidecar(
      module,
      report,
      version: packageVersion,
    ).files[leftoverFileName],
  );
  final source = _renderSnippets(
    stem: stem,
    terraformDir: terraformDir,
    stackFile: stackFile,
    imports: emitted.blockImports,
    statements: statements,
    translated: translated,
  );
  return RerunModule(
    terraformDir: terraformDir,
    stem: stem,
    stackFile: stackFile,
    snippets: format ? formatDart(source) : source,
    nextLeftover: next == currentLeftover ? null : (next ?? _emptyLeftover()),
    translated: List.unmodifiable(translated),
    stillKept: List.unmodifiable(report.kept),
    packages: emitted.packages,
    sidecarBlocks: sidecarBlocks,
  );
}

/// `lib/<stem>.snippets.dart`: the statements as an extension method, so the
/// file compiles where it sits and the body pastes verbatim.
String _renderSnippets({
  required String stem,
  required String terraformDir,
  required String? stackFile,
  required List<String> imports,
  required List<StackStatement> statements,
  required List<MigratedItem> translated,
}) {
  final target = stackFile == null
      ? 'the Stack that synthesizes into `$terraformDir`'
      : '`$stackFile`';
  final module = RerunModule(
    terraformDir: terraformDir,
    stem: stem,
    stackFile: stackFile,
    snippets: '',
    nextLeftover: null,
    translated: translated,
    stillKept: const [],
    packages: const [],
    sidecarBlocks: 0,
  );
  final body = StringBuffer();
  for (final s in statements) {
    // A `moved` statement names its own addresses; a block does not.
    if (!s.tag.startsWith('moved')) body.writeln('// ${s.tag}');
    // The block's own comments came through the sidecar with it; the
    // migrator's `# terradart-migrate:` reasons did not.
    body.write(s.comments);
    body.writeln(s.text);
  }
  return '''
/// Blocks of `$terraformDir` that translate now — terradart-migrate
/// $packageVersion, re-run.
///
/// ${translated.length} block${translated.length == 1 ? '' : 's'} that stayed in Terraform ${translated.length == 1 ? 'has' : 'have'} a factory today.
/// Paste the body of [${module.extensionName}.${module.methodName}] into
/// $target's constructor, add this file's imports there, swap
/// `$terraformDir/$leftoverFileName` for `$nextLeftoverFileName`, then
/// delete this file and re-synthesize: `terraform plan` must still report
/// *No changes*.
///
/// It is an extension on `Stack` so that it compiles where it sits — the
/// body is exactly what belongs in the constructor. A reference to a block
/// the Stack already owns stays a Terraform expression: the re-run reads the
/// sidecar, not your Dart, so it has no Dart name to point at.
library;

${imports.join('\n')}

extension ${module.extensionName} on Stack {
  /// The blocks to paste; see the library doc.
  void ${module.methodName}() {
$body  }
}
''';
}

/// The reason the sidecar was built with, once per block.
///
/// A re-run reads a sidecar and writes one, and every block it keeps comes
/// back carrying the comment the run before wrote above it. Only the reason
/// this run gives is current, and it is the one on top.
String? _collapseReasons(String? text) {
  if (text == null) return null;
  const marker = '# terradart-migrate: ';
  final out = <String>[];
  var inRun = false;
  for (final line in text.split('\n')) {
    final isReason = line.startsWith(marker);
    if (isReason && inRun) continue;
    inRun = isReason;
    out.add(line);
  }
  return out.join('\n');
}

String _emptyLeftover() =>
    '# terradart-migrate $packageVersion — nothing stays in Terraform here\n'
    '# any more. Replace $leftoverFileName with this file (or delete it).\n';

String _count(int n, String what, [String? plural]) =>
    '$n ${n == 1 ? what : plural ?? '${what}s'}';

const _notPasteable =
    'a re-run pastes resources, data sources, module calls and their `moved` '
    'entries; this is the Stack\'s own structure and stays as written';

/// A statement or address the snippets can carry into the constructor: a
/// block, or a `moved` entry that keeps its state.
bool _isPasteable(String tag) => _isBlockTag(tag) || tag.startsWith('moved');

/// A sidecar tag that stands for a resource, data source or module call.
bool _isBlockTag(String tag) =>
    !tag.startsWith('variable.') &&
    !tag.startsWith('output.') &&
    !tag.startsWith('moved') &&
    !tag.startsWith('terraform.') &&
    !tag.startsWith('provider.') &&
    !tag.startsWith('local.') &&
    !tag.startsWith('todo') &&
    tag != 'appExports';

/// The directories of [tfOut] holding Terraform, deepest path last.
///
/// Hidden directories are never entered, as the tree scan does not enter
/// them: `terraform init` fills `.terraform/modules/` with other people's
/// modules, which are neither this package's sidecar nor its to write into.
List<Directory> _terraformDirs(Directory tfOut) {
  final root = p.normalize(tfOut.absolute.path);
  final out = <Directory>[tfOut];
  for (final e in tfOut.listSync(recursive: true, followLinks: false)) {
    if (e is! Directory) continue;
    final rel = p.relative(p.normalize(e.absolute.path), from: root);
    if (p.split(rel).any(_skipSegment)) continue;
    out.add(e);
  }
  out.sort((a, b) => a.path.compareTo(b.path));
  return [
    for (final d in out)
      if (_hasSidecar(d)) d,
  ];
}

bool _skipSegment(String name) =>
    (name.startsWith('.') && name != '.') || name == 'node_modules';

bool _hasSidecar(Directory d) => d
    .listSync(followLinks: false)
    .whereType<File>()
    .any((f) => _isSidecarFile(p.basename(f.path)));

bool _isSidecarFile(String name) =>
    name != synthFileName &&
    !name.endsWith(nextLeftoverFileName) &&
    (name.endsWith('.tf') || name.endsWith('.tf.json'));

/// The directory's sidecar as one module: every Terraform file except the
/// `main.tf.json` the Stack writes, and the `.next.tf` of an earlier re-run.
TfModule _sidecarModule(Directory d) => TfModule.fromFiles([
  for (final f in loadTfFiles(d))
    if (_isSidecarFile(p.basename(f.fileName ?? ''))) f,
]);

/// The Dart locals an existing Stack declares, so a pasted snippet does not
/// shadow one.
Set<String> _localsOf(String? source) {
  if (source == null) return const {};
  return {
    for (final m in RegExp(
      r'(?:^|\s)(?:late\s+)?final\s+(?:\w+\??\s+)?(\w+)\s*[=;]',
    ).allMatches(source))
      m.group(1)!,
  };
}

/// Terraform directory → the Stack class `bin/infra.dart` synthesizes into
/// it, which is the package's own record of the pairing — more reliable
/// than deriving a name from the directory again, and the only thing that
/// gets a directory right when two share a base name.
///
/// A Stack whose directory is an expression rather than a literal (the one
/// `--merge-envs` writes, `tf-out/\${env.path}`) has no entry: the re-run
/// then names the directory instead of the file.
Map<String, String> _stacksByDirectory(String root) {
  final text = _read(p.join(root, 'bin', 'infra.dart'));
  if (text == null) return const {};
  return {
    for (final m in RegExp(
      r"""(\w+)\([^()]*\)\s*\.writeTo\(\s*r?'([^'$]+)'""",
    ).allMatches(text))
      m.group(2)!: m.group(1)!,
  };
}

/// The `name:` of the package's pubspec, which the root Stack is named
/// after; `null` when there is none to read.
String? _packageName(String root) {
  final text = _read(p.join(root, 'pubspec.yaml'));
  if (text == null) return null;
  return RegExp(r'^name:\s*(\S+)', multiLine: true).firstMatch(text)?.group(1);
}

String? _read(String path) {
  final f = File(path);
  return f.existsSync() ? f.readAsStringSync() : null;
}
