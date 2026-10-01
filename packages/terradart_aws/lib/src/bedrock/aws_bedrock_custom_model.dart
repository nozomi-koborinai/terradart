// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_bedrock_custom_model`.
const Set<String> _awsBedrockCustomModelSensitive = <String>{};

/// Bedrock Custom Model Customization enum for `customization_type`.
extension type const BedrockCustomModelCustomizationType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockCustomModelCustomizationType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockCustomModelCustomizationType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockCustomModelCustomizationType.arg(TfArg<String> arg)
    : this._(arg);

  static const fineTuning = BedrockCustomModelCustomizationType._(
    TfArgLiteral('FINE_TUNING'),
  );
  static const continuedPreTraining = BedrockCustomModelCustomizationType._(
    TfArgLiteral('CONTINUED_PRE_TRAINING'),
  );
  static const distillation = BedrockCustomModelCustomizationType._(
    TfArgLiteral('DISTILLATION'),
  );
  static const reinforcementFineTuning = BedrockCustomModelCustomizationType._(
    TfArgLiteral('REINFORCEMENT_FINE_TUNING'),
  );
  static const imported = BedrockCustomModelCustomizationType._(
    TfArgLiteral('IMPORTED'),
  );

  static const List<BedrockCustomModelCustomizationType> values = [
    fineTuning,
    continuedPreTraining,
    distillation,
    reinforcementFineTuning,
    imported,
  ];
}

/// Typed helper for the `output_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelOutputDataConfig {
  const BedrockCustomModelOutputDataConfig({required this.s3Uri});

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `training_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelTrainingDataConfig {
  const BedrockCustomModelTrainingDataConfig({required this.s3Uri});

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `validation_data_config` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelValidationDataConfig {
  const BedrockCustomModelValidationDataConfig({this.validator});

  final List<BedrockCustomModelValidator>? validator;

  @internal
  Map<String, Object?> encode() => {
    if (validator != null)
      'validator': [for (final e in validator!) e.encode()],
  };
}

/// Typed helper for the `validation_data_config.validator` block of
/// `aws_bedrock_custom_model` (derived from provider schema).
@immutable
final class BedrockCustomModelValidator {
  const BedrockCustomModelValidator({required this.s3Uri});

  final TfArg<String> s3Uri;

  @internal
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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_custom_model`.
final class AwsBedrockCustomModel extends Resource {
  static const String tfType = 'aws_bedrock_custom_model';

  AwsBedrockCustomModel(
    super.localName, {
    required TfArg<String> baseModelIdentifier,
    TfArg<String>? customModelKmsKeyId,
    required TfArg<String> customModelName,
    BedrockCustomModelCustomizationType? customizationType,
    required TfArg<Map<String, String>> hyperparameters,
    required TfArg<String> jobName,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'custom_model_kms_key_id': ?customModelKmsKeyId,
           'custom_model_name': customModelName,
           'customization_type': ?customizationType,
           'hyperparameters': hyperparameters,
           'job_name': jobName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockCustomModel>`.
  RefTo<AwsBedrockCustomModel> get ref => RefTo.of(this);

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

  /// Reference to `base_model_identifier` attribute.
  TfRef<String> get baseModelIdentifier =>
      TfRef.attribute<String>(this, 'base_model_identifier');

  /// Reference to `custom_model_kms_key_id` attribute.
  TfRef<String> get customModelKmsKeyId =>
      TfRef.attribute<String>(this, 'custom_model_kms_key_id');

  /// Reference to `custom_model_name` attribute.
  TfRef<String> get customModelName =>
      TfRef.attribute<String>(this, 'custom_model_name');

  /// Reference to `customization_type` attribute.
  TfRef<String> get customizationType =>
      TfRef.attribute<String>(this, 'customization_type');

  /// Reference to `hyperparameters` attribute.
  TfRef<Map<String, String>> get hyperparameters =>
      TfRef.attribute<Map<String, String>>(this, 'hyperparameters');

  /// Reference to `job_name` attribute.
  TfRef<String> get jobName => TfRef.attribute<String>(this, 'job_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
