import 'dart:io';

import 'ast.dart';
import 'parser.dart';
import 'tf_json.dart';
import 'tf_module.dart';

/// Reads every `*.tf` and `*.tf.json` file directly under [directory]
/// (sorted by name, like Terraform) into one [TfModule].
///
/// `*_override.tf` files are read as ordinary files — this model does not
/// apply override merging.
TfModule loadTfModule(Directory directory) =>
    TfModule.fromFiles(loadTfFiles(directory));

/// The parsed files of [directory], sorted by file name.
List<HclFile> loadTfFiles(Directory directory) {
  final files =
      directory
          .listSync()
          .whereType<File>()
          .where((f) => f.path.endsWith('.tf') || f.path.endsWith('.tf.json'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  return [
    for (final f in files)
      f.path.endsWith('.json')
          ? decodeTfJson(f.readAsStringSync(), fileName: f.path)
          : parseHcl(f.readAsStringSync(), fileName: f.path),
  ];
}
