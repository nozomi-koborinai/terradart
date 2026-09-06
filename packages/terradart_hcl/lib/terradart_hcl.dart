/// Pure Dart HCL parser, `*.tf.json` decoder and Terraform module model —
/// the input side of `terradart-migrate`.
///
/// Entry points: [parseHcl], [decodeTfJson], [TfModule.fromFiles],
/// [loadTfModule], [HclWriter].
library;

export 'src/ast.dart';
export 'src/diagnostics.dart';
export 'src/loader.dart';
export 'src/parser.dart' show parseHcl, parseHclExpression;
export 'src/source.dart';
export 'src/tf_json.dart';
export 'src/tf_module.dart';
export 'src/writer.dart';
