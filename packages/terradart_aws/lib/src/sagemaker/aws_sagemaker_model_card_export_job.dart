// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_model_card_export_job`.
const Set<String> _awsSagemakerModelCardExportJobSensitive = <String>{};

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_model_card_export_job` (derived from provider schema).
@immutable
final class SagemakerModelCardExportJobOutputConfig {
  const SagemakerModelCardExportJobOutputConfig({required this.s3OutputPath});

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {'s3_output_path': s3OutputPath.toTfJson()};
}

/// Factory wrapper for `aws_sagemaker_model_card_export_job`.
final class AwsSagemakerModelCardExportJob extends Resource {
  static const String tfType = 'aws_sagemaker_model_card_export_job';

  AwsSagemakerModelCardExportJob({
    required super.localName,
    required TfArg<String> modelCardExportJobName,
    required TfArg<String> modelCardName,
    TfArg<num>? modelCardVersion,
    TfArg<String>? region,
    List<SagemakerModelCardExportJobOutputConfig>? outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'model_card_export_job_name': modelCardExportJobName,
           'model_card_name': modelCardName,
           if (modelCardVersion != null) 'model_card_version': modelCardVersion,
           if (region != null) 'region': region,
           if (outputConfig != null)
             'output_config': TfArg.literal([
               for (final e in outputConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerModelCardExportJobSensitive;

  /// Reference to `export_artifacts` attribute.
  TfRef<List<Map<String, Object?>>> get exportArtifacts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'export_artifacts');

  /// Reference to `model_card_export_job_arn` attribute.
  TfRef<String> get modelCardExportJobArn =>
      TfRef.attribute<String>(this, 'model_card_export_job_arn');
}
