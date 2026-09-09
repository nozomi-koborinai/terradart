/// A Terraform source tree migrated into one Dart package: a Stack per
/// module directory, a Terraform directory per module under `tf-out/` that
/// mirrors the tree (so `module` sources keep resolving), the sidecar files
/// beside each `main.tf.json`, and `MIGRATION.md`.
library;

import 'dart:io';

import 'package:path/path.dart' as p;

import 'emit/env_plan.dart';
import 'emit/naming.dart';
import 'merge_envs.dart';
import 'migrate.dart';
import 'migrate_manifest.dart';
import 'report.dart';
import 'sidecar.dart';
import 'topology.dart';
import 'version.dart';

/// One migrated module directory.
final class MigratedModule {
  const MigratedModule({
    required this.dir,
    required this.name,
    required this.stack,
    required this.sidecar,
    required this.terraformDir,
    required this.copied,
    required this.varFilesNotCopied,
    this.mergedInto,
  });

  final ModuleDir dir;

  /// The module name the Stack was derived from (`dev`, `service_account`).
  final String name;
  final MigratedStack stack;

  /// `null` with `allowTodo`, unless the directory has no Stack — then the
  /// sidecar is its whole output.
  final Sidecar? sidecar;

  /// Where the Stack synthesizes, relative to the package (`tf-out/dev`).
  final String terraformDir;

  /// `terraform.tfvars`, `*.auto.tfvars` and `.terraform.lock.hcl` copied
  /// into [terraformDir].
  final List<String> copied;

  /// Other `*.tfvars` files, which Terraform loads only with `-var-file`.
  final List<String> varFilesNotCopied;

  /// The `Env` member this root became inside a merged Stack
  /// (`--merge-envs`), or `null` when it kept a Stack of its own.
  final String? mergedInto;

  MigrationReport get report => stack.report;

  /// Kept blocks written as `TODO` comments into the Stack rather than as
  /// sidecar blocks (`allowTodo`, on a directory that has a Stack).
  int get todoCount => sidecar == null ? report.kept.length : 0;

  /// Scan notes and emitter warnings together.
  List<String> get warnings => [...dir.warnings, ...report.warnings];

  Map<String, Object?> toJson() => {
    'directory': dir.relPath,
    'role': dir.role.name,
    if (dir.environment != null) 'environment': dir.environment,
    'callers': (dir.callers.toList()..sort()),
    'hasStack': stack.hasStack,
    'stackClass': stack.hasStack ? stack.stackClass : null,
    'stackFile': stack.hasStack ? 'lib/${stack.stackFile}.dart' : null,
    if (mergedInto != null) 'mergedInto': mergedInto,
    'terraformDir': terraformDir,
    'sidecar': sidecar?.placements ?? const <String, String>{},
    'copied': copied,
    'varFilesNotCopied': varFilesNotCopied,
    'scanWarnings': dir.warnings,
    'report': report.toJson(),
  };
}

/// The whole migrated package.
final class MigratedProject {
  MigratedProject({
    required this.name,
    required this.packageName,
    required this.inputPath,
    required this.allowTodo,
    required this.modules,
    required this.environments,
    required this.files,
    required this.copies,
    this.merged = const [],
  });

  final String name;
  final String packageName;

  /// The scanned directory, as the caller named it.
  final String inputPath;
  final bool allowTodo;
  final List<MigratedModule> modules;
  final List<EnvironmentComparison> environments;

  /// The environment groups `--merge-envs` folded into one Stack — or, with
  /// a [MergedEnvironment.refusal], the ones it could not.
  final List<MergedEnvironment> merged;

  /// Path (relative to the package root) → content: the Stacks,
  /// `bin/infra.dart`, `pubspec.yaml`, every sidecar file, `MIGRATION.md`.
  final Map<String, String> files;

  /// Files copied byte for byte: source path → path relative to the package.
  final List<({String from, String to})> copies;

  int get migratedCount =>
      modules.fold(0, (n, m) => n + m.report.migrated.length);
  int get keptCount => modules.fold(0, (n, m) => n + m.report.kept.length);
  bool get isComplete => keptCount == 0;

  /// Kept blocks written as `TODO` comments instead of sidecar blocks.
  int get todoCount => modules.fold(0, (n, m) => n + m.todoCount);

  /// With `allowTodo`, a Stack's untranslated blocks are TODO comments, gone
  /// from the configuration. A directory with no Stack keeps its sidecar
  /// even then, so its blocks never make the plan differ.
  bool get planDiffers => allowTodo && todoCount > 0;

  List<MigratedModule> get roots => [
    for (final m in modules)
      if (m.dir.isRoot) m,
  ];

  Map<String, Object?> toJson() => {
    'version': packageVersion,
    'input': inputPath,
    'package': packageName,
    'allowTodo': allowTodo,
    'planDiffers': planDiffers,
    'complete': isComplete,
    'migrated': migratedCount,
    'kept': keptCount,
    'todos': todoCount,
    'modules': [for (final m in modules) m.toJson()],
    'environments': [for (final e in environments) e.toJson()],
    if (merged.isNotEmpty)
      'merged': [
        for (final m in merged)
          {
            'group': m.group,
            'stackClass': m.stackClass,
            'envClass': m.envClass,
            'environments': [for (final e in m.envs) e.member],
            'constants': [for (final f in m.fields) f.origin],
            'guards': [for (final g in m.guards) g.dartName],
            if (m.refusal != null) 'refusal': m.refusal,
          },
      ],
    'files': files.keys.toList()..sort(),
    'copies': [for (final c in copies) c.to],
  };

  /// The stdout summary.
  String renderText(String outPath) {
    final rootCount = roots.length;
    final childCount = modules.length - rootCount;
    final b = StringBuffer()
      ..writeln(
        'terradart-migrate $packageVersion: $inputPath → $outPath '
        '($packageName)',
      )
      ..writeln(
        '  modules: ${modules.length} '
        '($rootCount root${rootCount == 1 ? '' : 's'}, '
        '$childCount child${childCount == 1 ? '' : 'ren'}); '
        'migrated $migratedCount block${migratedCount == 1 ? '' : 's'}, '
        'kept $keptCount',
      );
    for (final m in modules) {
      b.writeln(
        '  ${m.dir.relPath}: '
        '${m.stack.hasStack ? m.stack.stackClass : 'no Stack'} — '
        '${m.report.migrated.length} migrated, ${m.report.kept.length} kept '
        '→ ${m.terraformDir}',
      );
    }
    for (final m in merged) {
      b.writeln(
        m.isMerged
            ? '  --merge-envs: ${m.envs.map((e) => e.path).join(', ')} → '
                  '${m.stackClass}({required ${m.envClass} env}) with '
                  '${m.fields.length} constant'
                  '${m.fields.length == 1 ? '' : 's'} and '
                  '${m.guards.length} flag${m.guards.length == 1 ? '' : 's'}'
            : '  --merge-envs: ${m.envs.map((e) => e.path).join(', ')} stay '
                  'one Stack each — ${m.refusal}',
      );
    }
    if (planDiffers) {
      b.writeln(
        '  --allow-todo: ${_todoPhrase()} in the Stacks instead of sidecar '
        'blocks; the plan differs until they are ported by hand.',
      );
    }
    b
      ..writeln('Report: ${p.join(outPath, 'MIGRATION.md')}')
      ..writeln('Next: cd $outPath && dart pub get && dart run bin/infra.dart');
    return b.toString();
  }

  /// `MIGRATION.md`.
  String renderMarkdown() {
    final single = modules.length == 1;
    final b = StringBuffer()
      ..writeln('# Migration report')
      ..writeln()
      ..writeln(
        '`terradart-migrate $packageVersion` migrated `$inputPath` into the '
        'Dart package `$packageName`: ${modules.length} module '
        '${single ? 'directory' : 'directories'}, $migratedCount '
        'block${migratedCount == 1 ? '' : 's'} became Dart, $keptCount '
        'stay${keptCount == 1 ? 's' : ''} in Terraform'
        '${isComplete ? '.' : ' (listed below, each with its reason).'}',
      );
    if (planDiffers) {
      b
        ..writeln()
        ..writeln(
          '> **`--allow-todo`**: ${_todoPhrase()} (`TODO(terradart-migrate)`) '
          'in the Stacks instead of sidecar blocks. The plan differs from '
          'the current state until they are ported by hand.',
        );
    }
    final rootDirs = roots.map((r) => '`${r.terraformDir}`').join(', ');
    b
      ..writeln()
      ..writeln('## Next steps')
      ..writeln()
      ..writeln('1. `dart pub get`')
      ..writeln(
        '2. `dart run bin/infra.dart` — writes `main.tf.json` next to the '
        'sidecar files in '
        '${single ? '`tf-out/`' : 'every Terraform directory under `tf-out/`'}.',
      )
      ..writeln(
        '3. ${roots.length == 1 ? 'In $rootDirs' : 'In each root ($rootDirs)'}: '
        '`terraform init && terraform plan` — expect *No changes* against '
        'the existing state.',
      )
      ..writeln()
      ..writeln('## Modules')
      ..writeln()
      ..writeln(
        '| Directory | Role | Stack | Terraform directory | Migrated | Kept |',
      )
      ..writeln('| :--- | :--- | :--- | :--- | ---: | ---: |');
    for (final m in modules) {
      b.writeln(
        '| `${m.dir.relPath}` | ${_role(m)} | '
        '${m.stack.hasStack ? '`${m.stack.stackClass}`' : 'none'} | '
        '`${m.terraformDir}` | ${m.report.migrated.length} | '
        '${m.report.kept.length} |',
      );
    }
    for (final m in modules) {
      b
        ..writeln()
        ..writeln('### `${m.dir.relPath}`')
        ..writeln();
      final callers = m.dir.callers.toList()..sort();
      final calledFrom = callers.isEmpty
          ? ''
          : ', called from ${callers.map((c) => '`$c`').join(', ')}';
      b.writeln('- Role: ${_role(m)}$calledFrom');
      if (m.stack.hasStack) {
        b.writeln(
          '- Stack: `${m.stack.stackClass}` in '
          '`lib/${m.stack.stackFile}.dart`; '
          'packages: ${_codes(m.report.packages)}; '
          'providers: ${_codes(m.report.providers)}',
        );
      } else {
        b.writeln(
          '- Stack: none — nothing in this directory translates, so it stays '
          'Terraform (sidecar files only)',
        );
      }
      final sidecarFiles = m.sidecar?.files.keys.toList() ?? const <String>[];
      b.writeln(
        '- Terraform directory: `${m.terraformDir}`'
        '${sidecarFiles.isEmpty ? '' : '; sidecar: ${_codes(sidecarFiles)}'}'
        '${m.copied.isEmpty ? '' : '; copied: ${_codes(m.copied)}'}',
      );
      if (m.varFilesNotCopied.isNotEmpty) {
        b.writeln(
          '- Not copied (Terraform loads these only with `-var-file`): '
          '${_codes(m.varFilesNotCopied)}',
        );
      }
      if (m.report.expanded.isNotEmpty) {
        b.writeln('- Unrolled (${m.report.expanded.length}):');
        for (final e in m.report.expanded) {
          b.writeln(
            '  - `${e.address}` (${e.isForEach ? 'for_each' : 'count'}) → '
            '${_codes([for (final i in e.instances) i.to])}; state moves with '
            '`moved` blocks',
          );
        }
      }
      if (m.report.kept.isNotEmpty) {
        b
          ..writeln('- Kept in Terraform (${m.report.kept.length}):')
          ..writeln()
          ..writeln('  | Address | Reason | File |')
          ..writeln('  | :--- | :--- | :--- |');
        for (final k in m.report.kept) {
          final file = m.sidecar?.placements[k.address];
          final where = file != null
              ? '`$file`'
              : allowTodo
              ? 'TODO in the Stack'
              : '—';
          b.writeln('  | `${k.address}` | ${_cell(k.reason)} | $where |');
        }
      }
      final warnings = m.warnings;
      if (warnings.isNotEmpty) {
        b.writeln('- Warnings:');
        for (final w in warnings) {
          b.writeln('  - ${_cell(w)}');
        }
      }
    }
    if (environments.isNotEmpty) {
      b
        ..writeln()
        ..writeln('## Environments')
        ..writeln()
        ..writeln(
          merged.isEmpty
              ? 'Sibling roots are migrated one Stack each, backends '
                    'untouched; `--merge-envs` folds them into one Stack '
                    'taking the environment as a parameter.'
              : 'Sibling roots were compared argument by argument; what '
                    'follows is what `--merge-envs` found.',
        );
      for (final m in merged) {
        b
          ..writeln()
          ..writeln('### Merged: `${m.group}` → `${m.stackClass}`');
        if (!m.isMerged) {
          b
            ..writeln()
            ..writeln(
              '${_codes([for (final e in m.envs) e.path])} stay one Stack '
              'each: ${m.refusal}.',
            );
          continue;
        }
        b
          ..writeln()
          ..writeln(
            '`${m.stackClass}({required ${m.envClass} env})` in '
            '`lib/${m.stackFile}.dart` synthesizes '
            '${_codes([for (final e in m.envs) e.path])}, one `tf-out` '
            'directory each. `dart run bin/infra.dart --env '
            '${m.envs.first.member}` writes just that one.',
          )
          ..writeln()
          ..writeln(
            '| `${m.envClass}` | Value | ${[for (final e in m.envs) '`${e.member}`'].join(' | ')} |',
          )
          ..writeln('| :--- | :--- |${' :--- |' * m.envs.length}');
        for (final f in m.fields) {
          b.writeln(
            '| `${f.dartName}` | `${f.origin}` | ${[for (final e in m.envs) '`${f.values[e.member]}`'].join(' | ')} |',
          );
        }
        for (final g in m.guards) {
          b.writeln(
            '| `${g.dartName}` | blocks only ${_codes(g.members)} '
            'declare${g.members.length == 1 ? 's' : ''} | ${[for (final e in m.envs) g.members.contains(e.member) ? '`true`' : '`false`'].join(' | ')} |',
          );
        }
      }
      for (final e in environments) {
        b
          ..writeln()
          ..writeln('### `${e.group}`: ${_codes(e.roots)}')
          ..writeln()
          ..writeln('- Shared addresses: ${e.shared.length}');
        for (final r in e.roots) {
          final only = e.only[r] ?? const <String>[];
          if (only.isNotEmpty) b.writeln('- Only in `$r`: ${_codes(only)}');
        }
        for (final d in e.partial.entries) {
          b.writeln('- `${d.key}`: only in ${_codes(d.value)}');
        }
        if (e.differing.isNotEmpty) {
          b.writeln('- Arguments that differ:');
          for (final d in e.differing.entries) {
            b.writeln('  - `${d.key}`: ${_codes(d.value)}');
          }
        }
      }
    }
    return b.toString();
  }

  /// `1 block became a TODO comment` / `3 blocks became TODO comments`.
  String _todoPhrase() => todoCount == 1
      ? '1 block became a TODO comment'
      : '$todoCount blocks became TODO comments';

  static String _role(MigratedModule m) => m.dir.isRoot
      ? (m.dir.environment == null
            ? 'root'
            : 'root, environment `${m.dir.environment}`')
      : 'child';

  static String _codes(List<String> items) =>
      items.isEmpty ? 'none' : items.map((x) => '`$x`').join(', ');

  static String _cell(String s) => s.replaceAll('|', r'\|');
}

/// Migrates every module of [tree] into one package named [name].
///
/// [mergeEnvs] folds each group of sibling environment roots into one Stack
/// taking a generated `Env` enum (see [mergeEnvironments]); a group that
/// cannot be merged keeps one Stack per root and says why in the report.
MigratedProject migrateTree(
  ModuleTree tree, {
  required String name,
  bool allowTodo = false,
  bool format = true,
  bool mergeEnvs = false,
  bool liftWorkspace = false,
  List<MigrateManifest>? manifests,
}) {
  final packageName = packageNameFor(name);
  final names = _moduleNames(tree, name);
  final single = tree.modules.length == 1;
  final modules = <MigratedModule>[];
  final files = <String, String>{};
  final copies = <({String from, String to})>[];
  final stacks =
      <
        ({
          String stackFile,
          String stackClass,
          String terraformDir,
          bool workspace,
        })
      >[];
  final packages = <String>{};
  // The Dart-side interface of every directory some `module` block calls:
  // its `variable` blocks are the wrapper's parameters, its `output` blocks
  // the wrapper's getters.
  // A module that declares neither a variable nor an output has nothing to
  // type, so its calls keep the bare `ModuleCall` and no wrapper is written.
  final interfaces = <String, LocalModule>{};
  for (final m in tree.modules) {
    if (m.callers.isEmpty) continue;
    final local = localModuleOf(m.module, name: names[m.relPath]!);
    if (!local.isEmpty) interfaces[m.relPath] = local;
  }
  Map<String, LocalModule> callsOf(ModuleDir m) => {
    for (final call in m.calls.entries)
      if (interfaces[call.value] != null) call.key: interfaces[call.value]!,
  };

  // --- merged environment groups (--merge-envs) --------------------------
  final mergedGroups = <MergedEnvironment>[];
  final mergedOf = <String, MergedEnvironment>{};
  final memberOf = <String, String>{};
  if (mergeEnvs) {
    // Names the modules keeping a Stack of their own already hold; the roots
    // being merged give theirs up.
    final taken = <String>{
      for (final m in tree.modules)
        if (m.environment == null ||
            !tree.environments.containsKey(m.environment))
          stackNames(names[m.relPath]!).stackFile,
    };
    for (final group in tree.environments.entries) {
      final roots = group.value;
      final members = _envMembers(roots);
      memberOf.addAll(members);
      final base = group.key == '.' ? name : p.posix.split(group.key).last;
      final stack = _mergedStackNames(base, taken);
      taken.add(stack.stackFile);
      final envClass = mergedGroups.isEmpty ? 'Env' : '${pascalCase(base)}Env';
      final result = mergeEnvironments(
        group: group.key,
        envs: [
          for (final r in roots)
            EnvBinding(
              member: members[r.relPath]!,
              path: r.relPath,
              module: r.module,
            ),
        ],
        stackClass: stack.stackClass,
        stackFile: stack.stackFile,
        envClass: envClass,
        envFile: snakeCase(envClass),
        version: packageVersion,
        localModules: {for (final r in roots) members[r.relPath]!: callsOf(r)},
        manifests: manifests,
        allowTodo: allowTodo,
        liftWorkspace: liftWorkspace,
        format: format,
      );
      mergedGroups.add(result);
      if (result.isMerged) {
        for (final r in roots) {
          mergedOf[r.relPath] = result;
        }
      }
    }
  }

  final wrappers = <String, LocalModule>{};
  for (final m in tree.modules) {
    final moduleName = names[m.relPath]!;
    final localModules = callsOf(m);
    final merged = mergedOf[m.relPath];
    final stack =
        merged?.stacks[memberOf[m.relPath]] ??
        migrateStack(
          m.module,
          name: moduleName,
          manifests: manifests,
          format: format,
          childModule: !m.isRoot,
          allowTodo: allowTodo,
          liftWorkspace: liftWorkspace,
          localModules: localModules,
        );
    for (final used in stack.moduleWrappers) {
      for (final local in localModules.values) {
        if (local.fileStem == used) wrappers[used] = local;
      }
    }
    final terraformDir = single || m.relPath == '.'
        ? 'tf-out'
        : 'tf-out/${m.relPath}';
    final sidecar = allowTodo && stack.hasStack
        ? null
        : buildSidecar(m.module, stack.report, version: packageVersion);
    // A merged root's Stack is written once for the whole group, below.
    if (stack.hasStack && merged == null) {
      files['lib/${stack.stackFile}.dart'] = stack.source;
    }
    if (sidecar != null) {
      for (final e in sidecar.files.entries) {
        files['$terraformDir/${e.key}'] = e.value;
      }
    }
    final copied = <String>[];
    final notCopied = <String>[];
    for (final f
        in m.directory.listSync(followLinks: false).whereType<File>()) {
      final base = p.basename(f.path);
      if (_isCopied(base)) {
        copied.add(base);
        copies.add((from: f.path, to: '$terraformDir/$base'));
      } else if (_isVarFile(base)) {
        notCopied.add(base);
      }
    }
    copied.sort();
    notCopied.sort();
    packages.addAll(stack.packages);
    if (stack.hasStack && merged == null) {
      stacks.add((
        stackFile: stack.stackFile,
        stackClass: stack.stackClass,
        terraformDir: terraformDir,
        workspace: stack.usesWorkspace,
      ));
    }
    modules.add(
      MigratedModule(
        dir: m,
        name: moduleName,
        stack: stack,
        sidecar: sidecar,
        terraformDir: terraformDir,
        copied: copied,
        varFilesNotCopied: notCopied,
        mergedInto: merged == null ? null : memberOf[m.relPath],
      ),
    );
  }
  copies.sort((a, b) => a.to.compareTo(b.to));
  for (final g in mergedGroups) {
    if (!g.isMerged) continue;
    files['lib/${g.stackFile}.dart'] = g.source;
    files['lib/${g.envFile}.dart'] = g.envSource;
    packages.addAll(g.packages);
  }
  for (final w in wrappers.values) {
    final source = renderModuleWrapper(w, version: packageVersion);
    files['lib/${w.fileStem}.dart'] = format ? formatDart(source) : source;
  }
  files['bin/infra.dart'] = renderInfra(
    packageName,
    stacks,
    merged: [
      for (final g in mergedGroups)
        if (g.isMerged)
          (
            stackFile: g.stackFile,
            stackClass: g.stackClass,
            envFile: g.envFile,
            envClass: g.envClass,
            outPrefix: 'tf-out',
            workspace: g.usesWorkspace,
          ),
    ],
    format: format,
  );
  files['pubspec.yaml'] = renderPubspec(packageName, name, packages);
  final project = MigratedProject(
    name: name,
    packageName: packageName,
    inputPath: tree.root.path,
    allowTodo: allowTodo,
    modules: modules,
    environments: [
      for (final e in tree.environments.entries)
        compareEnvironment(e.key, e.value),
    ],
    files: files,
    copies: copies,
    merged: mergedGroups,
  );
  files['MIGRATION.md'] = project.renderMarkdown();
  return project;
}

/// A unique module name per directory: the base name, extended with parent
/// directory names on collision (`envs_dev`), then a numeric suffix.
Map<String, String> _moduleNames(ModuleTree tree, String projectName) {
  final out = <String, String>{};
  final used = <String>{};
  String unique(ModuleDir m) {
    final segments = p.posix.split(m.relPath);
    for (var n = 1; n <= segments.length; n++) {
      final candidate = segments.sublist(segments.length - n).join('_');
      if (!used.contains(stackNames(candidate).stackFile)) return candidate;
    }
    for (var i = 2; ; i++) {
      final candidate = '${segments.join('_')}_$i';
      if (!used.contains(stackNames(candidate).stackFile)) return candidate;
    }
  }

  for (final m in tree.modules) {
    final name = m.relPath == '.' ? projectName : unique(m);
    used.add(stackNames(name).stackFile);
    out[m.relPath] = name;
  }
  return out;
}

/// A unique `Env` member per environment root: the directory's base name,
/// extended with parent directory names on collision, then a counter.
Map<String, String> _envMembers(List<ModuleDir> roots) {
  final out = <String, String>{};
  final used = <String>{...envMemberNames};
  for (final r in roots) {
    final segments = p.posix.split(r.relPath);
    var member = '';
    for (var n = 1; n <= segments.length; n++) {
      member = lowerCamel(segments.sublist(segments.length - n).join('_'));
      if (!used.contains(member)) break;
    }
    for (var i = 2; used.contains(member); i++) {
      member = '${lowerCamel(segments.join('_'))}$i';
    }
    used.add(member);
    out[r.relPath] = member;
  }
  return out;
}

/// The merged Stack's names, avoiding the file stems [taken] by the modules
/// that keep a Stack of their own.
({String stackClass, String stackFile}) _mergedStackNames(
  String base,
  Set<String> taken,
) {
  var candidate = stackNames(base);
  if (!taken.contains(candidate.stackFile)) return candidate;
  candidate = stackNames('${base}_envs');
  if (!taken.contains(candidate.stackFile)) return candidate;
  for (var n = 2; ; n++) {
    candidate = stackNames('${base}_envs_$n');
    if (!taken.contains(candidate.stackFile)) return candidate;
  }
}

bool _isCopied(String base) =>
    base == 'terraform.tfvars' ||
    base == 'terraform.tfvars.json' ||
    base.endsWith('.auto.tfvars') ||
    base.endsWith('.auto.tfvars.json') ||
    base == '.terraform.lock.hcl';

bool _isVarFile(String base) =>
    base.endsWith('.tfvars') || base.endsWith('.tfvars.json');
