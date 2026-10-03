/// The migrator's library entry point: a [TfModule] in, a Dart package out.
library;

import 'package:dart_style/dart_style.dart';
import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/context.dart';
import 'emit/dart_literal.dart';
import 'emit/module_wrapper.dart';
import 'emit/naming.dart';
import 'emit/stack_emitter.dart';
import 'manifests.dart';
import 'migrate_manifest.dart';
import 'report.dart';
import 'sidecar.dart';
import 'version.dart';

export 'emit/module_wrapper.dart'
    show
        LocalModule,
        ModuleInput,
        ModuleOutput,
        localModuleOf,
        renderModuleWrapper;
export 'emit/naming.dart' show snakeCase;

/// One module's Stack, as [migrateStack] emits it.
final class MigratedStack {
  /// Creates the result; see [migrateStack].
  const MigratedStack({
    required this.stackClass,
    required this.stackFile,
    required this.source,
    required this.packages,
    required this.report,
    required this.hasStack,
    this.moduleWrappers = const {},
    this.usesWorkspace = false,
  });

  /// `OrdersStack`.
  final String stackClass;

  /// `orders_stack` — the library file is `lib/<stackFile>.dart`.
  final String stackFile;

  /// The Stack source, formatted unless the caller asked otherwise; empty
  /// when [hasStack] is false.
  final String source;

  /// False when nothing in the module translates: no Stack is generated,
  /// every block stays in Terraform, in the sidecar.
  final bool hasStack;

  /// The TerraDart packages the Stack imports, sorted.
  final List<String> packages;

  /// File stems of the generated local-module wrappers the Stack imports
  /// (`lib/<stem>.dart`), for the caller to write beside it.
  final Set<String> moduleWrappers;

  /// True when the Stack takes a `workspace` parameter (`--lift-workspace`
  /// and something read `terraform.workspace`).
  final bool usesWorkspace;

  /// What became Dart and what stays in Terraform.
  final MigrationReport report;
}

/// Migrates one module to its Stack class.
///
/// [name] names the module (its directory, say); the Stack class is its
/// PascalCase form with `Stack` appended. [childModule] selects child-module
/// mode for a directory a `module` block's `source` points at: providers are
/// registered without configuration so synth emits only `required_providers`,
/// and provider configurations or a backend found there stay in Terraform.
/// [localModules] maps a `module`
/// call's name to the typed wrapper of the local directory its `source`
/// points at (see [localModuleOf]); a call with no entry becomes a bare
/// `ModuleCall`. [liftWorkspace] turns `terraform.workspace` into a
/// `workspace` parameter on the Stack, so its synth names one workspace
/// instead of deferring to `terraform workspace select`. [manifests] defaults to [allMigrateManifests]; [format] runs the emitted Dart through
/// `dart_style`.
MigratedStack migrateStack(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
  bool childModule = false,
  bool liftWorkspace = false,
  Map<String, LocalModule> localModules = const {},
}) {
  final names = stackNames(name);
  final ctx = EmitContext(
    manifests: manifests ?? allMigrateManifests,
    sensitive: SensitiveIndex.fromCatalogs(),
  );
  final emitted = StackEmitter(
    module,
    ctx: ctx,
    moduleName: name,
    stackClass: names.stackClass,
    stackFile: names.stackFile,
    version: packageVersion,
    childModule: childModule,
    localModules: localModules,
    liftWorkspace: liftWorkspace,
  ).emit();
  return MigratedStack(
    stackClass: names.stackClass,
    stackFile: names.stackFile,
    source: format && emitted.hasStack
        ? formatDart(emitted.source)
        : emitted.source,
    packages: emitted.packages,
    moduleWrappers: emitted.moduleWrappers,
    usesWorkspace: emitted.usesWorkspace,
    report: emitted.report,
    hasStack: emitted.hasStack,
  );
}

/// The output of [migrateModule]: files (path → content, relative to the
/// generated package root) and the report.
final class MigrationResult {
  /// Creates the result; see [migrateModule].
  const MigrationResult({
    required this.files,
    required this.report,
    required this.stackClass,
    required this.stackFile,
    required this.packageName,
    required this.sidecar,
  });

  /// `lib/<stack_file>.dart`, `bin/infra.dart`, `pubspec.yaml`, and the
  /// sidecar files under `tf-out/`.
  final Map<String, String> files;

  /// What became Dart and what stays in Terraform.
  final MigrationReport report;

  /// `OrdersStack`.
  final String stackClass;

  /// `orders_stack` — the library file's base name.
  final String stackFile;

  /// The generated package's name.
  final String packageName;

  /// The leftover sidecar: what stays in Terraform, beside the Stack's
  /// `main.tf.json` (the whole output when there is no Stack).
  final Sidecar sidecar;

  /// True when a Stack was generated (something in the module translates).
  bool get hasStack => files.containsKey('lib/$stackFile.dart');

  /// The Stack source (`lib/<stackFile>.dart`); empty without a Stack.
  String get stackSource => files['lib/$stackFile.dart'] ?? '';
}

/// Migrates one Terraform module to a Dart package.
///
/// [name] names the module (its directory, say); the Stack class is its
/// PascalCase form with `Stack` appended, the package its snake_case form.
/// Resources whose arguments all translate become Dart; anything else is
/// listed in the report's `kept` with a reason, and stays in Terraform —
/// verbatim, in the sidecar files under `tf-out/` (see [buildSidecar]).
///
/// See [migrateStack] for [manifests], [format], [childModule] and
/// [liftWorkspace].
MigrationResult migrateModule(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
  bool childModule = false,
  bool liftWorkspace = false,
}) {
  final stack = migrateStack(
    module,
    name: name,
    manifests: manifests,
    format: format,
    childModule: childModule,
    liftWorkspace: liftWorkspace,
  );
  final packageName = packageNameFor(name);
  final sidecar = buildSidecar(module, stack.report, version: packageVersion);
  return MigrationResult(
    files: {
      if (stack.hasStack) 'lib/${stack.stackFile}.dart': stack.source,
      'bin/infra.dart': renderInfra(packageName, [
        if (stack.hasStack)
          (
            stackFile: stack.stackFile,
            stackClass: stack.stackClass,
            terraformDir: 'tf-out',
            workspace: stack.usesWorkspace,
          ),
      ], format: format),
      'pubspec.yaml': renderPubspec(packageName, name, stack.packages),
      for (final e in sidecar.files.entries) 'tf-out/${e.key}': e.value,
    },
    report: stack.report,
    stackClass: stack.stackClass,
    stackFile: stack.stackFile,
    packageName: packageName,
    sidecar: sidecar,
  );
}

/// The Stack class and library file stem for a module name:
/// `dev` → `DevStack` / `dev_stack`.
({String stackClass, String stackFile}) stackNames(String name) {
  final pascal = pascalCase(name);
  final stackClass = pascal.endsWith('Stack') ? pascal : '${pascal}Stack';
  return (stackClass: stackClass, stackFile: snakeCase(stackClass));
}

/// The Dart package name for a module name (`my-infra` → `my_infra`).
String packageNameFor(String name) => snakeCase(name);

/// `dart_style` with the latest language version.
String formatDart(String source) => DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
).format(source);

/// One merged environment group in `bin/infra.dart` (`--merge-envs`): the
/// Stack, the enum it takes, and the `tf-out` prefix its members write under.
typedef MergedInfra = ({
  String stackFile,
  String stackClass,
  String envFile,
  String envClass,
  String outPrefix,
  bool workspace,
});

/// One Stack `bin/infra.dart` synthesizes into its own Terraform directory.
typedef InfraStack = ({
  String stackFile,
  String stackClass,
  String terraformDir,
  bool workspace,
});

/// `bin/infra.dart`: synthesizes every Stack into its Terraform directory.
///
/// A single Stack calls `runStack`, so `terradart synth`, `plan` and `apply`
/// read the entry-point manifest. Each [merged] group calls `runEnvironments`
/// over its `Env` enum (`dir` is `tf-out/<member path>`), so
/// `terradart plan --env <member>` runs that environment. Several groups
/// write every environment when `--env` is omitted, and call
/// `runEnvironments` for the one group a name selects — that call is the
/// manifest `terradart` reads. A name no group declares is a usage error.
String renderInfra(
  String packageName,
  List<InfraStack> stacks, {
  List<MergedInfra> merged = const [],
  bool format = true,
}) {
  final workspace =
      stacks.any((s) => s.workspace) || merged.any((m) => m.workspace);
  final singleStack = merged.isEmpty && stacks.length == 1;
  final files = {
    for (final s in stacks) s.stackFile,
    for (final m in merged) ...[m.stackFile, m.envFile],
  }.toList()..sort();
  final packageImports = [
    for (final f in files) "import 'package:$packageName/$f.dart';",
    if (singleStack || merged.isNotEmpty)
      "import 'package:terradart_core/terradart_core.dart';",
  ]..sort();
  final imports = [
    if (merged.length > 1) "import 'dart:io';\n",
    ...packageImports,
  ].join('\n');
  final body = StringBuffer();
  if (workspace) {
    body.writeln(
      "  final workspace = _option(args, '--workspace') ?? 'default';",
    );
  }
  if (singleStack) {
    final s = stacks.single;
    body.writeln(
      '  await runStack(args, () => ${_plainCtor(s)}, '
      'out: ${dartString(s.terraformDir)});',
    );
  } else {
    for (final s in stacks) {
      body.writeln(
        '  await ${_plainCtor(s)}.writeTo(${dartString(s.terraformDir)});',
      );
    }
  }
  if (merged.length == 1) {
    body.writeln(_runEnvironmentsStmt(merged.single));
  } else if (merged.length > 1) {
    body.write(_manyGroupBody(merged));
  }
  final what = switch ((stacks.length, merged.length)) {
    (0, 0) =>
      '/// nothing yet: no module directory translates, so the Terraform\n'
          '/// directories hold the sidecar files only.',
    (1, 0) => '/// `${stacks.single.terraformDir}/main.tf.json`.',
    _ =>
      "/// every Stack's `main.tf.json` under `tf-out/`, mirroring the\n"
          '/// migrated module tree.',
  };
  final usage = [
    if (merged.isNotEmpty)
      '/// `terradart plan --env <name>` and\n'
          '/// `dart run bin/infra.dart --env <name>` write that environment.\n'
          '/// Without `--env`, every environment is written.',
    if (workspace)
      '/// `--workspace <name>` names the Terraform workspace the Stacks\n'
          '/// synthesize for (default `default`).',
  ];
  final usageText = usage.isEmpty ? '' : '\n///\n${usage.join('\n///\n')}';
  final needsArgs = singleStack || merged.isNotEmpty || workspace;
  final optionHelper = !workspace && merged.length < 2
      ? ''
      : '''

/// The value of `--flag <value>` or `--flag=<value>`, or `null`.
String? _option(List<String> args, String flag) {
  for (var i = 0; i < args.length; i++) {
    if (args[i] == flag && i + 1 < args.length) return args[i + 1];
    if (args[i].startsWith('\$flag=')) {
      return args[i].substring(flag.length + 1);
    }
  }
  return null;
}''';
  final src =
      '''
/// Synth entry point: `terradart synth` and `dart run bin/infra.dart` write
$what$usageText
library;

$imports

Future<void> main(${needsArgs ? 'List<String> args' : ''}) async {
$body}
$optionHelper
''';
  return format ? formatDart(src) : src;
}

String _plainCtor(InfraStack stack) => stack.workspace
    ? '${stack.stackClass}(workspace: workspace)'
    : '${stack.stackClass}()';

String _mergedCtor(MergedInfra group) => group.workspace
    ? '${group.stackClass}(env: env, workspace: workspace)'
    : '${group.stackClass}(env: env)';

/// `runEnvironments` for [group]: the manifest `terradart --env` reads.
String _runEnvironmentsStmt(MergedInfra group, {String indent = '  '}) {
  final lines = [
    '${indent}await runEnvironments(',
    '$indent  args,',
    '$indent  ${group.envClass}.values,',
    '$indent  (env) => ${_mergedCtor(group)},',
    "$indent  dir: (env) => '${group.outPrefix}/\${env.path}',",
    if (group.workspace) '$indent  workspace: (_) => workspace,',
    '$indent);',
  ];
  return lines.join('\n');
}

/// Several merged groups. Omitting `--env` writes every member (no manifest:
/// `terradart plan` then asks for `--env`). A name selects one group through
/// `runEnvironments`, so the manifest names that environment's directory.
String _manyGroupBody(List<MergedInfra> merged) {
  final b = StringBuffer()
    ..writeln("  final selected = _option(args, '--env');")
    ..writeln('  if (selected == null) {');
  for (final group in merged) {
    b
      ..writeln('    for (final env in ${group.envClass}.values) {')
      ..writeln(
        "      await ${_mergedCtor(group)}.writeTo('${group.outPrefix}/\${env.path}');",
      )
      ..writeln('    }');
  }
  b
    ..writeln('    return;')
    ..writeln('  }');
  for (final group in merged) {
    b
      ..writeln(
        '  if (${group.envClass}.values.any((env) => env.name == selected)) {',
      )
      ..writeln(_runEnvironmentsStmt(group, indent: '    '))
      ..writeln('    return;')
      ..writeln('  }');
  }
  final names = merged.map((group) => '...${group.envClass}.values').join(', ');
  b
    ..writeln('  stderr.writeln(')
    ..writeln(
      "    'infra: unknown environment \"\$selected\"; expected one of '",
    )
    ..writeln("    '\${[$names].map((env) => env.name).toSet().join(', ')}',")
    ..writeln('  );')
    ..writeln('  exit(64);');
  return b.toString();
}

/// The generated package's `pubspec.yaml`: lockstep pins on `terradart_core`
/// and every provider package a Stack imports, and — with [engine] — the
/// `terradart.engine` the `terradart` command runs the existing state with.
String renderPubspec(
  String packageName,
  String module,
  Iterable<String> packages, {
  SourceEngine? engine,
}) {
  final deps = StringBuffer('  terradart_core: ^$packageVersion\n');
  for (final p in packages.toSet().toList()..sort()) {
    deps.write('  $p: ^$packageVersion\n');
  }
  final section = switch (engine) {
    null => '',
    SourceEngine.terraform =>
      '''

# The migrated tree's state was written by Terraform, so `terradart plan`
# and `apply` keep running Terraform on it. Set `engine: tofu` to move the
# state to OpenTofu at the next apply.
terradart:
  engine: terraform
''',
    SourceEngine.tofu =>
      '''

# The migrated tree was run with OpenTofu (its lock file or `.tofu` files
# say so), so `terradart plan` and `apply` keep running OpenTofu on it.
terradart:
  engine: tofu
''',
  };
  return '''
name: $packageName
description: Migrated from `$module` by terradart-migrate $packageVersion.
publish_to: none

environment:
  sdk: ^3.10.0

dependencies:
$deps
dev_dependencies:
  lints: ^6.0.0
$section''';
}

/// The engine a migrated tree's state belongs to.
enum SourceEngine {
  /// `terradart.engine: terraform`.
  terraform,

  /// `terradart.engine: tofu`.
  tofu,
}
