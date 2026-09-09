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
  /// every block stays in Terraform, and the sidecar is always written.
  final bool hasStack;

  /// The TerraDart packages the Stack imports, sorted.
  final List<String> packages;

  /// File stems of the generated local-module wrappers the Stack imports
  /// (`lib/<stem>.dart`), for the caller to write beside it.
  final Set<String> moduleWrappers;

  /// True when the Stack takes a `workspace` parameter (`--lift-workspace`
  /// and something read `terraform.workspace`).
  final bool usesWorkspace;
  final MigrationReport report;
}

/// Migrates one module to its Stack class.
///
/// [name] names the module (its directory, say); the Stack class is its
/// PascalCase form with `Stack` appended. [childModule] selects child-module
/// mode for a directory a `module` block's `source` points at: providers are
/// registered without configuration so synth emits only `required_providers`,
/// and provider configurations or a backend found there stay in Terraform.
/// [allowTodo] writes a `TODO` per block that stays in Terraform into the
/// Stack instead of leaving it to a sidecar. [localModules] maps a `module`
/// call's name to the typed wrapper of the local directory its `source`
/// points at (see [localModuleOf]); a call with no entry becomes a bare
/// `ModuleCall`. [liftWorkspace] turns `terraform.workspace` into a
/// `workspace` parameter on the Stack, so its synth names one workspace
/// instead of deferring to `terraform workspace select`. [manifests]
/// defaults to [allMigrateManifests]; [format] runs the emitted Dart through
/// `dart_style`.
MigratedStack migrateStack(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
  bool childModule = false,
  bool allowTodo = false,
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
    allowTodo: allowTodo,
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
  const MigrationResult({
    required this.files,
    required this.report,
    required this.stackClass,
    required this.stackFile,
    required this.packageName,
    this.sidecar,
  });

  /// `lib/<stack_file>.dart`, `bin/infra.dart`, `pubspec.yaml`, and the
  /// sidecar files under `tf-out/`.
  final Map<String, String> files;
  final MigrationReport report;

  /// `OrdersStack`.
  final String stackClass;

  /// `orders_stack` — the library file's base name.
  final String stackFile;

  /// The generated package's name.
  final String packageName;

  /// The leftover sidecar (`null` with `allowTodo`, unless there is no
  /// Stack — then the sidecar is the whole output).
  final Sidecar? sidecar;

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
/// [allowTodo].
MigrationResult migrateModule(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
  bool childModule = false,
  bool allowTodo = false,
  bool liftWorkspace = false,
}) {
  final stack = migrateStack(
    module,
    name: name,
    manifests: manifests,
    format: format,
    childModule: childModule,
    allowTodo: allowTodo,
    liftWorkspace: liftWorkspace,
  );
  final packageName = packageNameFor(name);
  final sidecar = allowTodo && stack.hasStack
      ? null
      : buildSidecar(module, stack.report, version: packageVersion);
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
      if (sidecar != null)
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

/// `bin/infra.dart`: synthesizes every Stack into its Terraform directory.
///
/// With [merged] groups the entry point takes `--env <name>`, narrowing the
/// merged environments to one; without it every environment is written.
String renderInfra(
  String packageName,
  List<
    ({String stackFile, String stackClass, String terraformDir, bool workspace})
  >
  stacks, {
  List<MergedInfra> merged = const [],
  bool format = true,
}) {
  final files = {
    for (final s in stacks) s.stackFile,
    for (final m in merged) ...[m.stackFile, m.envFile],
  }.toList()..sort();
  final imports = [
    if (merged.isNotEmpty) "import 'dart:io';\n",
    for (final f in files) "import 'package:$packageName/$f.dart';",
  ].join('\n');
  final workspace =
      stacks.any((s) => s.workspace) || merged.any((m) => m.workspace);
  final calls = [
    if (workspace) "  final workspace = _workspace(args);",
    for (final s in stacks)
      '  await ${s.stackClass}(${s.workspace ? 'workspace: workspace' : ''})'
          '.writeTo(${dartString(s.terraformDir)});',
    for (final m in merged) ...[
      '  for (final env in _environments(args, ${m.envClass}.values)) {',
      '    await ${m.stackClass}(env: env'
          '${m.workspace ? ', workspace: workspace' : ''})',
      "        .writeTo('${m.outPrefix}/\${env.path}');",
      '  }',
    ],
  ].join('\n');
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
      '/// `dart run bin/infra.dart --env <name>` writes one merged '
          'environment\n/// instead of all of them.',
    if (workspace)
      '/// `--workspace <name>` names the Terraform workspace the Stacks\n'
          "/// synthesize for (default `default`).",
  ];
  final usageText = usage.isEmpty ? '' : '\n///\n${usage.join('\n///\n')}';
  final helper = merged.isEmpty
      ? ''
      : '''

/// The environments to synthesize: every member, or the one `--env` names.
List<T> _environments<T extends Enum>(List<String> args, List<T> values) {
  String? name;
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--env' && i + 1 < args.length) name = args[i + 1];
    if (args[i].startsWith('--env=')) name = args[i].substring('--env='.length);
  }
  if (name == null) return values;
  for (final value in values) {
    if (value.name == name) return [value];
  }
  stderr.writeln(
    'infra: unknown environment "\$name"; expected one of '
    '\${values.map((v) => v.name).join(', ')}',
  );
  exit(64);
}''';
  final workspaceHelper = !workspace
      ? ''
      : '''

/// The Terraform workspace the Stacks synthesize for: `--workspace <name>`,
/// or Terraform's own default.
String _workspace(List<String> args) {
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--workspace' && i + 1 < args.length) return args[i + 1];
    if (args[i].startsWith('--workspace=')) {
      return args[i].substring('--workspace='.length);
    }
  }
  return 'default';
}''';
  final src =
      '''
/// Synth entry point: `dart run bin/infra.dart` writes
$what$usageText
library;

$imports

Future<void> main(${merged.isEmpty && !workspace ? '' : 'List<String> args'}) async {
$calls
}
$helper$workspaceHelper
''';
  return format ? formatDart(src) : src;
}

/// The generated package's `pubspec.yaml`: lockstep pins on `terradart_core`
/// and every provider package a Stack imports.
String renderPubspec(
  String packageName,
  String module,
  Iterable<String> packages,
) {
  final deps = StringBuffer('  terradart_core: ^$packageVersion\n');
  for (final p in packages.toSet().toList()..sort()) {
    deps.write('  $p: ^$packageVersion\n');
  }
  return '''
name: $packageName
description: Migrated from `$module` by terradart-migrate $packageVersion.
publish_to: none

environment:
  sdk: ^3.6.0

dependencies:
$deps
dev_dependencies:
  lints: ^6.0.0
''';
}
