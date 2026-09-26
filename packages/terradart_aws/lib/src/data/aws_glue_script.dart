// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_script`.
const Set<String> _awsGlueScriptSensitive = <String>{};

/// Typed helper for the `dag_edge` block of
/// `aws_glue_script` (derived from provider schema).
@immutable
final class DataGlueScriptDagEdge {
  const DataGlueScriptDagEdge({
    required this.source,
    required this.target,
    this.targetParameter,
  });

  final TfArg<String> source;

  final TfArg<String> target;

  final TfArg<String>? targetParameter;

  Map<String, Object?> encode() => {
    'source': source.toTfJson(),
    'target': target.toTfJson(),
    if (targetParameter != null)
      'target_parameter': targetParameter!.toTfJson(),
  };
}

/// Typed helper for the `dag_node` block of
/// `aws_glue_script` (derived from provider schema).
@immutable
final class DataGlueScriptDagNode {
  const DataGlueScriptDagNode({
    required this.id,
    this.lineNumber,
    required this.nodeType,
    required this.args,
  });

  final TfArg<String> id;

  final TfArg<num>? lineNumber;

  final TfArg<String> nodeType;

  final List<DataGlueScriptDagNodeArgs> args;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (lineNumber != null) 'line_number': lineNumber!.toTfJson(),
    'node_type': nodeType.toTfJson(),
    'args': [for (final e in args) e.encode()],
  };
}

/// Typed helper for the `dag_node.args` block of
/// `aws_glue_script` (derived from provider schema).
@immutable
final class DataGlueScriptDagNodeArgs {
  const DataGlueScriptDagNodeArgs({
    required this.name,
    this.param,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<bool>? param;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (param != null) 'param': param!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_script`.
final class DataAwsGlueScript extends Data {
  static const String tfType = 'aws_glue_script';

  DataAwsGlueScript({
    required super.localName,
    TfArg<String>? language,
    TfArg<String>? region,
    required List<DataGlueScriptDagEdge> dagEdge,
    required List<DataGlueScriptDagNode> dagNode,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (language != null) 'language': language,
           if (region != null) 'region': region,
           'dag_edge': TfArg.literal([for (final e in dagEdge) e.encode()]),
           'dag_node': TfArg.literal([for (final e in dagNode) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueScriptSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `python_script` attribute.
  TfRef<String> get pythonScript =>
      TfRef.attribute<String>(this, 'python_script');

  /// Reference to `scala_code` attribute.
  TfRef<String> get scalaCode => TfRef.attribute<String>(this, 'scala_code');
}
