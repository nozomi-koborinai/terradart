// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datapipeline_pipeline_definition`.
const Set<String> _awsDatapipelinePipelineDefinitionSensitive = <String>{};

/// Typed helper for the `parameter_object` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DatapipelinePipelineDefinitionParameterObject {
  const DatapipelinePipelineDefinitionParameterObject({
    required this.id,
    this.attribute,
  });

  final TfArg<String> id;

  final List<DatapipelinePipelineDefinitionParameterObjectAttribute>? attribute;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (attribute != null)
      'attribute': [for (final e in attribute!) e.encode()],
  };
}

/// Typed helper for the `parameter_object.attribute` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DatapipelinePipelineDefinitionParameterObjectAttribute {
  const DatapipelinePipelineDefinitionParameterObjectAttribute({
    required this.key,
    required this.stringValue,
  });

  final TfArg<String> key;

  final TfArg<String> stringValue;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'string_value': stringValue.toTfJson(),
  };
}

/// Typed helper for the `parameter_value` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DatapipelinePipelineDefinitionParameterValue {
  const DatapipelinePipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  final TfArg<String> id;

  final TfArg<String> stringValue;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'string_value': stringValue.toTfJson(),
  };
}

/// Typed helper for the `pipeline_object` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DatapipelinePipelineDefinitionPipelineObject {
  const DatapipelinePipelineDefinitionPipelineObject({
    required this.id,
    required this.name,
    this.field,
  });

  final TfArg<String> id;

  final TfArg<String> name;

  final List<DatapipelinePipelineDefinitionPipelineObjectField>? field;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'name': name.toTfJson(),
    if (field != null) 'field': [for (final e in field!) e.encode()],
  };
}

/// Typed helper for the `pipeline_object.field` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DatapipelinePipelineDefinitionPipelineObjectField {
  const DatapipelinePipelineDefinitionPipelineObjectField({
    required this.key,
    this.refValue,
    this.stringValue,
  });

  final TfArg<String> key;

  final TfArg<String>? refValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (refValue != null) 'ref_value': refValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datapipeline_pipeline_definition`.
final class AwsDatapipelinePipelineDefinition extends Resource {
  static const String tfType = 'aws_datapipeline_pipeline_definition';

  AwsDatapipelinePipelineDefinition({
    required super.localName,
    required TfArg<String> pipelineId,
    TfArg<String>? region,
    List<DatapipelinePipelineDefinitionParameterObject>? parameterObject,
    List<DatapipelinePipelineDefinitionParameterValue>? parameterValue,
    required List<DatapipelinePipelineDefinitionPipelineObject> pipelineObject,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pipeline_id': pipelineId,
           if (region != null) 'region': region,
           if (parameterObject != null)
             'parameter_object': TfArg.literal([
               for (final e in parameterObject) e.encode(),
             ]),
           if (parameterValue != null)
             'parameter_value': TfArg.literal([
               for (final e in parameterValue) e.encode(),
             ]),
           'pipeline_object': TfArg.literal([
             for (final e in pipelineObject) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatapipelinePipelineDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
