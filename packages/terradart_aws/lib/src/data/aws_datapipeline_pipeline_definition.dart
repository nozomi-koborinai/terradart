// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datapipeline_pipeline_definition`.
const Set<String> _awsDatapipelinePipelineDefinitionSensitive = <String>{};

/// Typed helper for the `parameter_value` block of
/// `aws_datapipeline_pipeline_definition` (derived from provider schema).
@immutable
final class DataDatapipelinePipelineDefinitionParameterValue {
  const DataDatapipelinePipelineDefinitionParameterValue();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_datapipeline_pipeline_definition`.
final class DataAwsDatapipelinePipelineDefinition extends Data {
  static const String tfType = 'aws_datapipeline_pipeline_definition';

  DataAwsDatapipelinePipelineDefinition({
    required super.localName,
    required TfArg<String> pipelineId,
    TfArg<String>? region,
    List<DataDatapipelinePipelineDefinitionParameterValue>? parameterValue,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pipeline_id': pipelineId,
           if (region != null) 'region': region,
           if (parameterValue != null)
             'parameter_value': TfArg.literal([
               for (final e in parameterValue) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatapipelinePipelineDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `parameter_object` attribute.
  TfRef<List<Map<String, Object?>>> get parameterObject =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameter_object');

  /// Reference to `pipeline_object` attribute.
  TfRef<List<Map<String, Object?>>> get pipelineObject =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pipeline_object');
}
