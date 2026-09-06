/// The migrator's library entry point: a [TfModule] in, a Dart package out.
library;

import 'package:dart_style/dart_style.dart';
import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/context.dart';
import 'emit/naming.dart';
import 'emit/stack_emitter.dart';
import 'manifests.dart';
import 'migrate_manifest.dart';
import 'report.dart';
import 'version.dart';

/// The output of [migrateModule]: files (path → content, relative to the
/// generated package root) and the report.
final class MigrationResult {
  const MigrationResult({
    required this.files,
    required this.report,
    required this.stackClass,
    required this.stackFile,
    required this.packageName,
  });

  /// `lib/<stack_file>.dart`, `bin/infra.dart`, `pubspec.yaml`.
  final Map<String, String> files;
  final MigrationReport report;

  /// `OrdersStack`.
  final String stackClass;

  /// `orders_stack` — the library file's base name.
  final String stackFile;

  /// The generated package's name.
  final String packageName;

  /// The Stack source (`lib/<stackFile>.dart`).
  String get stackSource => files['lib/$stackFile.dart']!;
}

/// Migrates one Terraform module to a Dart package.
///
/// [name] names the module (its directory, say); the Stack class is its
/// PascalCase form with `Stack` appended, the package its snake_case form.
/// Resources whose arguments all translate become Dart; anything else is
/// listed in the report's `kept` with a reason, and stays in Terraform.
///
/// [manifests] defaults to [allMigrateManifests]; [format] runs the emitted
/// Dart through `dart_style`.
MigrationResult migrateModule(
  TfModule module, {
  required String name,
  List<MigrateManifest>? manifests,
  bool format = true,
}) {
  final pascal = pascalCase(name);
  final stackClass = pascal.endsWith('Stack') ? pascal : '${pascal}Stack';
  final snake = _snake(stackClass);
  final packageName = _snake(name);
  final ctx = EmitContext(
    manifests: manifests ?? allMigrateManifests,
    sensitive: SensitiveIndex.fromCatalogs(),
  );
  final emitted = StackEmitter(
    module,
    ctx: ctx,
    moduleName: name,
    stackClass: stackClass,
    stackFile: snake,
    version: packageVersion,
  ).emit();

  var stackSource = emitted.source;
  var infraSource = _infra(packageName, snake, stackClass);
  if (format) {
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );
    stackSource = formatter.format(stackSource);
    infraSource = formatter.format(infraSource);
  }
  return MigrationResult(
    files: {
      'lib/$snake.dart': stackSource,
      'bin/infra.dart': infraSource,
      'pubspec.yaml': _pubspec(packageName, name, emitted.packages),
    },
    report: emitted.report,
    stackClass: stackClass,
    stackFile: snake,
    packageName: packageName,
  );
}

String _snake(String name) {
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

String _infra(String packageName, String stackFile, String stackClass) =>
    '''
/// Synth entry point: `dart run bin/infra.dart` writes `tf-out/main.tf.json`.
library;

import 'package:$packageName/$stackFile.dart';

Future<void> main() async {
  await $stackClass().writeTo('tf-out');
}
''';

String _pubspec(String packageName, String module, List<String> packages) {
  final deps = StringBuffer('  terradart_core: ^$packageVersion\n');
  for (final p in packages) {
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
