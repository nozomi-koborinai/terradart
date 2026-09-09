import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';

/// The Terraform syntax [migrateModuleSource] reads the source as.
enum MigrateSyntax {
  /// `.tf` — native HCL.
  hcl,

  /// `.tf.json` — the JSON configuration syntax.
  json,

  /// JSON when the source opens a brace, HCL otherwise. A `.tf.json` file is
  /// always one JSON object; an HCL body never starts with `{`.
  auto;

  static MigrateSyntax? byName(String name) {
    for (final s in MigrateSyntax.values) {
      if (s.name == name) return s;
    }
    return null;
  }
}

/// A Dart package name: what `pubspec.yaml` and the Stack's library both
/// need the module name to become.
final _packageName = RegExp(r'^[a-z_][a-z0-9_]*$');

/// Migrates one Terraform module's [source] text to a TerraDart package.
///
/// [source] is a whole Terraform configuration — HCL or `*.tf.json`, per
/// [syntax] — as text; nothing is read from disk and no `terraform` runs.
/// [name] names the module: the Stack class is its PascalCase form with
/// `Stack` appended, the generated package its snake_case form. With
/// [allowTodo] a block that stays in Terraform becomes a `TODO` comment in
/// the Stack instead of a sidecar entry (`terradart-migrate --allow-todo`).
///
/// Returns the generated Dart, the sidecar of what stays in Terraform, and
/// the report of every block either way — always a JSON object, so MCP
/// clients that reject a bare array in `structuredContent` accept it. A
/// source that does not parse comes back as `{'error': ..., 'diagnostics':
/// [...]}` rather than throwing, so the agent sees the message.
Map<String, Object?> migrateModuleSource(
  String source, {
  String name = 'main',
  MigrateSyntax syntax = MigrateSyntax.auto,
  bool allowTodo = false,
}) {
  if (source.trim().isEmpty) {
    return {
      'error': 'source is empty: pass the text of a .tf or .tf.json file',
    };
  }
  final moduleName = name.trim();
  final packageName = moduleName.isEmpty ? '' : packageNameFor(moduleName);
  if (!_packageName.hasMatch(packageName)) {
    return {
      'error':
          'name "$name" is not a Dart package name: it must start with a '
          'letter or underscore and hold only letters, digits and underscores '
          'once lower-cased',
    };
  }
  final isJson = switch (syntax) {
    MigrateSyntax.json => true,
    MigrateSyntax.hcl => false,
    MigrateSyntax.auto => source.trimLeft().startsWith('{'),
  };

  final TfModule module;
  try {
    module = isJson
        ? TfModule.fromTfJson(source, fileName: 'main.tf.json')
        : TfModule.fromHcl(source, fileName: 'main.tf');
  } on HclParseException catch (e) {
    return {
      'error':
          'source is not valid ${isJson ? 'Terraform JSON' : 'HCL'}: '
          '${e.first.message}',
      'diagnostics': [for (final d in e.diagnostics) d.toString()],
    };
  }

  final result = migrateModule(module, name: moduleName, allowTodo: allowTodo);
  final sidecar = result.sidecar;
  return {
    'migrated': result.hasStack,
    'package_name': result.packageName,
    'stack_class': result.stackClass,
    'stack_file': 'lib/${result.stackFile}.dart',
    // Empty when nothing in the module translates: then the sidecar is the
    // whole answer, and the report says why of every block.
    'dart_source': result.stackSource,
    'infra_source': result.files['bin/infra.dart'] ?? '',
    'pubspec': result.files['pubspec.yaml'] ?? '',
    // File name → content, for the directory the Stack synthesizes into
    // (`tf-out/`): what stays in Terraform, verbatim.
    'sidecar': sidecar?.files ?? const <String, String>{},
    'sidecar_placements': sidecar?.placements ?? const <String, String>{},
    'report': result.report.toJson(),
    'report_text': result.report.renderText(),
  };
}
