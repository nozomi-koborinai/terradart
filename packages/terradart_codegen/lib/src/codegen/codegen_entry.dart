import 'dart:io';

import 'package:path/path.dart' as p;

import '../parser/ir_merger.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'file_emitter.dart';
import 'naming.dart';

class CodegenResult {
  final List<String> emittedFiles;
  const CodegenResult({required this.emittedFiles});
}

/// Programmatic Stage 1 entry point.
///
/// - [schemaJsonPath]: path to a `terraform providers schema -json` capture.
/// - [mmYamlPaths]: map from Terraform resource name (e.g.
///   `google_pubsub_topic`) to the path of its Magic Modules YAML. Resources
///   not in the map get no MM overrides.
/// - [outputDir]: directory where `<terraform_type>.dart` files are written.
/// - [providerVersion]: stamped into the generated banner.
/// - [onlyResources]: if non-null, restricts output to that subset.
Future<CodegenResult> runCodegen({
  required String schemaJsonPath,
  required Map<String, String> mmYamlPaths,
  required String outputDir,
  String providerVersion = '',
  Iterable<String>? onlyResources,
}) async {
  final schemaSrc = await File(schemaJsonPath).readAsString();
  final base = const SchemaJsonParser()
      .parseString(schemaSrc, providerVersion: providerVersion);

  final overrides = <String, MmResourceOverrides>{};
  for (final entry in mmYamlPaths.entries) {
    final yaml = await File(entry.value).readAsString();
    overrides[entry.key] = const MmYamlParser().parseString(yaml);
  }
  final merged = const IrMerger().merge(base: base, overrides: overrides);

  final outDir = Directory(outputDir);
  if (!outDir.existsSync()) outDir.createSync(recursive: true);

  final emitter = FileEmitter();
  final selected = onlyResources != null
      ? merged.resources.entries.where((e) => onlyResources.contains(e.key))
      : merged.resources.entries;

  final out = <String>[];
  for (final entry in selected) {
    final src = emitter.emit(ir: merged, def: entry.value);
    final path = p.join(outputDir, resourceFileName(entry.key));
    await File(path).writeAsString(src);
    out.add(path);
  }
  return CodegenResult(emittedFiles: out);
}
