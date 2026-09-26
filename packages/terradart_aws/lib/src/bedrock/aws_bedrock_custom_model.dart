// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_custom_model`.
const Set<String> _awsBedrockCustomModelSensitive = <String>{};

/// Typed helper for the `output_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelOutputDataConfig {
  const BedrockCustomModelOutputDataConfig({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `training_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelTrainingDataConfig {
  const BedrockCustomModelTrainingDataConfig({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `validation_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelValidationDataConfig {
  const BedrockCustomModelValidationDataConfig({this.validator});

  final List<BedrockCustomModelValidationDataConfigValidator>? validator;

  Map<String, Object?> encode() => {
    if (validator != null)
      'validator': [for (final e in validator!) e.encode()],
  };
}

/// Typed helper for the `validation_data_config.validator` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelValidationDataConfigValidator {
  const BedrockCustomModelValidationDataConfigValidator({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `vpc_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelVpcConfig {
  const BedrockCustomModelVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_custom_model`.
final class AwsBedrockCustomModel extends Resource {
  static const String tfType = 'aws_bedrock_custom_model';

  AwsBedrockCustomModel({
    required super.localName,
    required TfArg<String> baseModelIdentifier,
    TfArg<String>? customModelKmsKeyId,
    required TfArg<String> customModelName,
    TfArg<String>? customizationType,
    required TfArg<Map<String, String>> hyperparameters,
    required TfArg<String> jobName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockCustomModelOutputDataConfig>? outputDataConfig,
    List<BedrockCustomModelTrainingDataConfig>? trainingDataConfig,
    List<BedrockCustomModelValidationDataConfig>? validationDataConfig,
    List<BedrockCustomModelVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_model_identifier': baseModelIdentifier,
           if (customModelKmsKeyId != null)
             'custom_model_kms_key_id': customModelKmsKeyId,
           'custom_model_name': customModelName,
           if (customizationType != null)
             'customization_type': customizationType,
           'hyperparameters': hyperparameters,
           'job_name': jobName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal([
               for (final e in outputDataConfig) e.encode(),
             ]),
           if (trainingDataConfig != null)
             'training_data_config': TfArg.literal([
               for (final e in trainingDataConfig) e.encode(),
             ]),
           if (validationDataConfig != null)
             'validation_data_config': TfArg.literal([
               for (final e in validationDataConfig) e.encode(),
             ]),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockCustomModelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_model_arn` attribute.
  TfRef<String> get customModelArn =>
      TfRef.attribute<String>(this, 'custom_model_arn');

  /// Reference to `job_arn` attribute.
  TfRef<String> get jobArn => TfRef.attribute<String>(this, 'job_arn');

  /// Reference to `job_status` attribute.
  TfRef<String> get jobStatus => TfRef.attribute<String>(this, 'job_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `training_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get trainingMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'training_metrics');

  /// Reference to `validation_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get validationMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validation_metrics');
}
