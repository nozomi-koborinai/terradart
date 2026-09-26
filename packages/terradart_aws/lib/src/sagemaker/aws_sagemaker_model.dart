// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_model`.
const Set<String> _awsSagemakerModelSensitive = <String>{};

/// Typed helper for the `container` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainer {
  const SagemakerModelContainer({
    this.containerHostname,
    this.environment,
    this.image,
    this.inferenceSpecificationName,
    this.mode,
    this.modelDataUrl,
    this.modelPackageName,
    this.additionalModelDataSource,
    this.imageConfig,
    this.modelDataSource,
    this.multiModelConfig,
  });

  final TfArg<String>? containerHostname;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? image;

  final TfArg<String>? inferenceSpecificationName;

  final TfArg<String>? mode;

  final TfArg<String>? modelDataUrl;

  final TfArg<String>? modelPackageName;

  final List<SagemakerModelContainerAdditionalModelDataSource>?
  additionalModelDataSource;

  final SagemakerModelContainerImageConfig? imageConfig;

  final SagemakerModelContainerModelDataSource? modelDataSource;

  final SagemakerModelContainerMultiModelConfig? multiModelConfig;

  Map<String, Object?> encode() => {
    if (containerHostname != null)
      'container_hostname': containerHostname!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (image != null) 'image': image!.toTfJson(),
    if (inferenceSpecificationName != null)
      'inference_specification_name': inferenceSpecificationName!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (modelDataUrl != null) 'model_data_url': modelDataUrl!.toTfJson(),
    if (modelPackageName != null)
      'model_package_name': modelPackageName!.toTfJson(),
    if (additionalModelDataSource != null)
      'additional_model_data_source': [
        for (final e in additionalModelDataSource!) e.encode(),
      ],
    if (imageConfig != null) 'image_config': imageConfig!.encode(),
    if (modelDataSource != null) 'model_data_source': modelDataSource!.encode(),
    if (multiModelConfig != null)
      'multi_model_config': multiModelConfig!.encode(),
  };
}

/// Typed helper for the `container.additional_model_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerAdditionalModelDataSource {
  const SagemakerModelContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSource,
  });

  final TfArg<String> channelName;

  final List<SagemakerModelContainerAdditionalModelDataSourceS3DataSource>
  s3DataSource;

  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    's3_data_source': [for (final e in s3DataSource) e.encode()],
  };
}

/// Typed helper for the `container.additional_model_data_source.s3_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerAdditionalModelDataSourceS3DataSource {
  const SagemakerModelContainerAdditionalModelDataSourceS3DataSource({
    required this.compressionType,
    required this.s3DataType,
    required this.s3Uri,
    this.modelAccessConfig,
  });

  final TfArg<String> compressionType;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  final SagemakerModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (modelAccessConfig != null)
      'model_access_config': modelAccessConfig!.encode(),
  };
}

/// Typed helper for the `container.additional_model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig {
  const SagemakerModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `container.image_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerImageConfig {
  const SagemakerModelContainerImageConfig({
    required this.repositoryAccessMode,
    this.repositoryAuthConfig,
  });

  final TfArg<String> repositoryAccessMode;

  final SagemakerModelContainerImageConfigRepositoryAuthConfig?
  repositoryAuthConfig;

  Map<String, Object?> encode() => {
    'repository_access_mode': repositoryAccessMode.toTfJson(),
    if (repositoryAuthConfig != null)
      'repository_auth_config': repositoryAuthConfig!.encode(),
  };
}

/// Typed helper for the `container.image_config.repository_auth_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerImageConfigRepositoryAuthConfig {
  const SagemakerModelContainerImageConfigRepositoryAuthConfig({
    required this.repositoryCredentialsProviderArn,
  });

  final TfArg<String> repositoryCredentialsProviderArn;

  Map<String, Object?> encode() => {
    'repository_credentials_provider_arn': repositoryCredentialsProviderArn
        .toTfJson(),
  };
}

/// Typed helper for the `container.model_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerModelDataSource {
  const SagemakerModelContainerModelDataSource({required this.s3DataSource});

  final List<SagemakerModelContainerModelDataSourceS3DataSource> s3DataSource;

  Map<String, Object?> encode() => {
    's3_data_source': [for (final e in s3DataSource) e.encode()],
  };
}

/// Typed helper for the `container.model_data_source.s3_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerModelDataSourceS3DataSource {
  const SagemakerModelContainerModelDataSourceS3DataSource({
    required this.compressionType,
    required this.s3DataType,
    required this.s3Uri,
    this.modelAccessConfig,
  });

  final TfArg<String> compressionType;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  final SagemakerModelContainerModelDataSourceS3DataSourceModelAccessConfig?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (modelAccessConfig != null)
      'model_access_config': modelAccessConfig!.encode(),
  };
}

/// Typed helper for the `container.model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerModelDataSourceS3DataSourceModelAccessConfig {
  const SagemakerModelContainerModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `container.multi_model_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelContainerMultiModelConfig {
  const SagemakerModelContainerMultiModelConfig({this.modelCacheSetting});

  final TfArg<String>? modelCacheSetting;

  Map<String, Object?> encode() => {
    if (modelCacheSetting != null)
      'model_cache_setting': modelCacheSetting!.toTfJson(),
  };
}

/// Typed helper for the `inference_execution_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelInferenceExecutionConfig {
  const SagemakerModelInferenceExecutionConfig({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `primary_container` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainer {
  const SagemakerModelPrimaryContainer({
    this.containerHostname,
    this.environment,
    this.image,
    this.inferenceSpecificationName,
    this.mode,
    this.modelDataUrl,
    this.modelPackageName,
    this.additionalModelDataSource,
    this.imageConfig,
    this.modelDataSource,
    this.multiModelConfig,
  });

  final TfArg<String>? containerHostname;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? image;

  final TfArg<String>? inferenceSpecificationName;

  final TfArg<String>? mode;

  final TfArg<String>? modelDataUrl;

  final TfArg<String>? modelPackageName;

  final List<SagemakerModelPrimaryContainerAdditionalModelDataSource>?
  additionalModelDataSource;

  final SagemakerModelPrimaryContainerImageConfig? imageConfig;

  final SagemakerModelPrimaryContainerModelDataSource? modelDataSource;

  final SagemakerModelPrimaryContainerMultiModelConfig? multiModelConfig;

  Map<String, Object?> encode() => {
    if (containerHostname != null)
      'container_hostname': containerHostname!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (image != null) 'image': image!.toTfJson(),
    if (inferenceSpecificationName != null)
      'inference_specification_name': inferenceSpecificationName!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (modelDataUrl != null) 'model_data_url': modelDataUrl!.toTfJson(),
    if (modelPackageName != null)
      'model_package_name': modelPackageName!.toTfJson(),
    if (additionalModelDataSource != null)
      'additional_model_data_source': [
        for (final e in additionalModelDataSource!) e.encode(),
      ],
    if (imageConfig != null) 'image_config': imageConfig!.encode(),
    if (modelDataSource != null) 'model_data_source': modelDataSource!.encode(),
    if (multiModelConfig != null)
      'multi_model_config': multiModelConfig!.encode(),
  };
}

/// Typed helper for the `primary_container.additional_model_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerAdditionalModelDataSource {
  const SagemakerModelPrimaryContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSource,
  });

  final TfArg<String> channelName;

  final List<
    SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSource
  >
  s3DataSource;

  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    's3_data_source': [for (final e in s3DataSource) e.encode()],
  };
}

/// Typed helper for the `primary_container.additional_model_data_source.s3_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSource {
  const SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSource({
    required this.compressionType,
    required this.s3DataType,
    required this.s3Uri,
    this.modelAccessConfig,
  });

  final TfArg<String> compressionType;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  final SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (modelAccessConfig != null)
      'model_access_config': modelAccessConfig!.encode(),
  };
}

/// Typed helper for the `primary_container.additional_model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig {
  const SagemakerModelPrimaryContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `primary_container.image_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerImageConfig {
  const SagemakerModelPrimaryContainerImageConfig({
    required this.repositoryAccessMode,
    this.repositoryAuthConfig,
  });

  final TfArg<String> repositoryAccessMode;

  final SagemakerModelPrimaryContainerImageConfigRepositoryAuthConfig?
  repositoryAuthConfig;

  Map<String, Object?> encode() => {
    'repository_access_mode': repositoryAccessMode.toTfJson(),
    if (repositoryAuthConfig != null)
      'repository_auth_config': repositoryAuthConfig!.encode(),
  };
}

/// Typed helper for the `primary_container.image_config.repository_auth_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerImageConfigRepositoryAuthConfig {
  const SagemakerModelPrimaryContainerImageConfigRepositoryAuthConfig({
    required this.repositoryCredentialsProviderArn,
  });

  final TfArg<String> repositoryCredentialsProviderArn;

  Map<String, Object?> encode() => {
    'repository_credentials_provider_arn': repositoryCredentialsProviderArn
        .toTfJson(),
  };
}

/// Typed helper for the `primary_container.model_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerModelDataSource {
  const SagemakerModelPrimaryContainerModelDataSource({
    required this.s3DataSource,
  });

  final List<SagemakerModelPrimaryContainerModelDataSourceS3DataSource>
  s3DataSource;

  Map<String, Object?> encode() => {
    's3_data_source': [for (final e in s3DataSource) e.encode()],
  };
}

/// Typed helper for the `primary_container.model_data_source.s3_data_source` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerModelDataSourceS3DataSource {
  const SagemakerModelPrimaryContainerModelDataSourceS3DataSource({
    required this.compressionType,
    required this.s3DataType,
    required this.s3Uri,
    this.modelAccessConfig,
  });

  final TfArg<String> compressionType;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  final SagemakerModelPrimaryContainerModelDataSourceS3DataSourceModelAccessConfig?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (modelAccessConfig != null)
      'model_access_config': modelAccessConfig!.encode(),
  };
}

/// Typed helper for the `primary_container.model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerModelDataSourceS3DataSourceModelAccessConfig {
  const SagemakerModelPrimaryContainerModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `primary_container.multi_model_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelPrimaryContainerMultiModelConfig {
  const SagemakerModelPrimaryContainerMultiModelConfig({
    this.modelCacheSetting,
  });

  final TfArg<String>? modelCacheSetting;

  Map<String, Object?> encode() => {
    if (modelCacheSetting != null)
      'model_cache_setting': modelCacheSetting!.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_sagemaker_model` (derived from provider schema).
@immutable
final class SagemakerModelVpcConfig {
  const SagemakerModelVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_model`.
final class AwsSagemakerModel extends Resource {
  static const String tfType = 'aws_sagemaker_model';

  AwsSagemakerModel({
    required super.localName,
    TfArg<bool>? enableNetworkIsolation,
    required TfArg<String> executionRoleArn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SagemakerModelContainer>? container,
    SagemakerModelInferenceExecutionConfig? inferenceExecutionConfig,
    SagemakerModelPrimaryContainer? primaryContainer,
    SagemakerModelVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enableNetworkIsolation != null)
             'enable_network_isolation': enableNetworkIsolation,
           'execution_role_arn': executionRoleArn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (container != null)
             'container': TfArg.literal([
               for (final e in container) e.encode(),
             ]),
           if (inferenceExecutionConfig != null)
             'inference_execution_config': TfArg.literal(
               inferenceExecutionConfig.encode(),
             ),
           if (primaryContainer != null)
             'primary_container': TfArg.literal(primaryContainer.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerModelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
