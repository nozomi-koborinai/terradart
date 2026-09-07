/// The migrator's library entry point: a [TfModule] in, a Dart package out.
library;

import 'package:dart_style/dart_style.dart';
import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/context.dart';
import 'emit/dart_literal.dart';
import 'emit/naming.dart';
import 'emit/stack_emitter.dart';
import 'manifests.dart';
import 'migrate_manifest.dart';
import 'report.dart';
import 'sidecar.dart';
import 'version.dart';

/// One module's Stack, as [migrateStack] emits it.
final class MigratedStack {
  const MigratedStack({
    required this.stackClass,
    required this.stackFile,
    required this.source,
    required this.packages,
    required this.report,
    required this.hasStack,
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
/// Stack instead of leaving it to a sidecar. [manifests] defaults to
/// [allMigrateManifests]; [format] runs the emitted Dart through `dart_style`.
MigratedStack migrateStack(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
  bool childModule = false,
  bool allowTodo = false,
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
  ).emit();
  return MigratedStack(
    stackClass: names.stackClass,
    stackFile: names.stackFile,
    source: format && emitted.hasStack
        ? formatDart(emitted.source)
        : emitted.source,
    packages: emitted.packages,
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
}) {
  final stack = migrateStack(
    module,
    name: name,
    manifests: manifests,
    format: format,
    childModule: childModule,
    allowTodo: allowTodo,
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

/// [name] as a Dart identifier in snake_case.
String snakeCase(String name) {
  final buf = StringBuffer();
  for (var i = 0; i < name.length; i++) {
    final c = name[i];
    final isUpper = c.toUpperCase() == c && c.toLowerCase() != c;
    if (isUpper && i > 0 && buf.isNotEmpty && !buf.toString().endsWith('_')) {
      buf.write('_');
    }
    buf.write(RegExp(r'[A-Za-z0-9]').hasMatch(c) ? c.toLowerCase() : '_');
  }
  var out = buf.toString().replaceAll(RegExp(r'_+'), '_');
  out = out.replaceAll(RegExp(r'^_|_$'), '');
  if (out.isEmpty) out = 'stack';
  if (RegExp(r'^[0-9]').hasMatch(out)) out = 'm_$out';
  return out;
}

/// `bin/infra.dart`: synthesizes every Stack into its Terraform directory.
String renderInfra(
  String packageName,
  List<({String stackFile, String stackClass, String terraformDir})> stacks, {
  bool format = true,
}) {
  final files = {for (final s in stacks) s.stackFile}.toList()..sort();
  final imports = [
    for (final f in files) "import 'package:$packageName/$f.dart';",
  ].join('\n');
  final calls = [
    for (final s in stacks)
      '  await ${s.stackClass}().writeTo(${dartString(s.terraformDir)});',
  ].join('\n');
  final what = switch (stacks.length) {
    0 =>
      '/// nothing yet: no module directory translates, so the Terraform\n'
          '/// directories hold the sidecar files only.',
    1 => '/// `${stacks.single.terraformDir}/main.tf.json`.',
    _ =>
      "/// every Stack's `main.tf.json` under `tf-out/`, mirroring the\n"
          '/// migrated module tree.',
  };
  final src =
      '''
/// Synth entry point: `dart run bin/infra.dart` writes
$what
library;

$imports

Future<void> main() async {
$calls
}
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
