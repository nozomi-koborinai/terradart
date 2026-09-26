// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_custom_model`.
const Set<String> _awsBedrockCustomModelSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_custom_model`.
final class DataAwsBedrockCustomModel extends Data {
  static const String tfType = 'aws_bedrock_custom_model';

  DataAwsBedrockCustomModel({
    required super.localName,
    required TfArg<String> modelId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'model_id': modelId, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockCustomModelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_model_arn` attribute.
  TfRef<String> get baseModelArn =>
      TfRef.attribute<String>(this, 'base_model_arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `hyperparameters` attribute.
  TfRef<Map<String, String>> get hyperparameters =>
      TfRef.attribute<Map<String, String>>(this, 'hyperparameters');

  /// Reference to `job_arn` attribute.
  TfRef<String> get jobArn => TfRef.attribute<String>(this, 'job_arn');

  /// Reference to `job_name` attribute.
  TfRef<String> get jobName => TfRef.attribute<String>(this, 'job_name');

  /// Reference to `job_tags` attribute.
  TfRef<Map<String, String>> get jobTags =>
      TfRef.attribute<Map<String, String>>(this, 'job_tags');

  /// Reference to `model_arn` attribute.
  TfRef<String> get modelArn => TfRef.attribute<String>(this, 'model_arn');

  /// Reference to `model_kms_key_arn` attribute.
  TfRef<String> get modelKmsKeyArn =>
      TfRef.attribute<String>(this, 'model_kms_key_arn');

  /// Reference to `model_name` attribute.
  TfRef<String> get modelName => TfRef.attribute<String>(this, 'model_name');

  /// Reference to `model_tags` attribute.
  TfRef<Map<String, String>> get modelTags =>
      TfRef.attribute<Map<String, String>>(this, 'model_tags');

  /// Reference to `output_data_config` attribute.
  TfRef<List<Map<String, Object?>>> get outputDataConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_data_config');

  /// Reference to `training_data_config` attribute.
  TfRef<List<Map<String, Object?>>> get trainingDataConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'training_data_config');

  /// Reference to `training_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get trainingMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'training_metrics');

  /// Reference to `validation_data_config` attribute.
  TfRef<List<Map<String, Object?>>> get validationDataConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'validation_data_config',
      );

  /// Reference to `validation_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get validationMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validation_metrics');
}
