// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_service`.
const Set<String> _awsApprunnerServiceSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceEncryptionConfiguration {
  const ApprunnerServiceEncryptionConfiguration({required this.kmsKey});

  final TfArg<String> kmsKey;

  Map<String, Object?> encode() => {'kms_key': kmsKey.toTfJson()};
}

/// Typed helper for the `health_check_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceHealthCheckConfiguration {
  const ApprunnerServiceHealthCheckConfiguration({
    this.healthyThreshold,
    this.interval,
    this.path,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  final TfArg<num>? healthyThreshold;

  final TfArg<num>? interval;

  final TfArg<String>? path;

  final TfArg<String>? protocol;

  final TfArg<num>? timeout;

  final TfArg<num>? unhealthyThreshold;

  Map<String, Object?> encode() => {
    if (healthyThreshold != null)
      'healthy_threshold': healthyThreshold!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (unhealthyThreshold != null)
      'unhealthy_threshold': unhealthyThreshold!.toTfJson(),
  };
}

/// Typed helper for the `instance_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceInstanceConfiguration {
  const ApprunnerServiceInstanceConfiguration({
    this.cpu,
    this.instanceRoleArn,
    this.memory,
  });

  final TfArg<String>? cpu;

  final TfArg<String>? instanceRoleArn;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (instanceRoleArn != null)
      'instance_role_arn': instanceRoleArn!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceNetworkConfiguration {
  const ApprunnerServiceNetworkConfiguration({
    this.ipAddressType,
    this.egressConfiguration,
    this.ingressConfiguration,
  });

  final TfArg<String>? ipAddressType;

  final ApprunnerServiceNetworkConfigurationEgressConfiguration?
  egressConfiguration;

  final ApprunnerServiceNetworkConfigurationIngressConfiguration?
  ingressConfiguration;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    if (egressConfiguration != null)
      'egress_configuration': egressConfiguration!.encode(),
    if (ingressConfiguration != null)
      'ingress_configuration': ingressConfiguration!.encode(),
  };
}

/// Typed helper for the `network_configuration.egress_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceNetworkConfigurationEgressConfiguration {
  const ApprunnerServiceNetworkConfigurationEgressConfiguration({
    this.egressType,
    this.vpcConnectorArn,
  });

  final TfArg<String>? egressType;

  final TfArg<String>? vpcConnectorArn;

  Map<String, Object?> encode() => {
    if (egressType != null) 'egress_type': egressType!.toTfJson(),
    if (vpcConnectorArn != null)
      'vpc_connector_arn': vpcConnectorArn!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration.ingress_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceNetworkConfigurationIngressConfiguration {
  const ApprunnerServiceNetworkConfigurationIngressConfiguration({
    this.isPubliclyAccessible,
  });

  final TfArg<bool>? isPubliclyAccessible;

  Map<String, Object?> encode() => {
    if (isPubliclyAccessible != null)
      'is_publicly_accessible': isPubliclyAccessible!.toTfJson(),
  };
}

/// Typed helper for the `observability_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceObservabilityConfiguration {
  const ApprunnerServiceObservabilityConfiguration({
    this.observabilityConfigurationArn,
    required this.observabilityEnabled,
  });

  final TfArg<String>? observabilityConfigurationArn;

  final TfArg<bool> observabilityEnabled;

  Map<String, Object?> encode() => {
    if (observabilityConfigurationArn != null)
      'observability_configuration_arn': observabilityConfigurationArn!
          .toTfJson(),
    'observability_enabled': observabilityEnabled.toTfJson(),
  };
}

/// Typed helper for the `source_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfiguration {
  const ApprunnerServiceSourceConfiguration({
    this.autoDeploymentsEnabled,
    this.authenticationConfiguration,
    this.codeRepository,
    this.imageRepository,
  });

  final TfArg<bool>? autoDeploymentsEnabled;

  final ApprunnerServiceSourceConfigurationAuthenticationConfiguration?
  authenticationConfiguration;

  final ApprunnerServiceSourceConfigurationCodeRepository? codeRepository;

  final ApprunnerServiceSourceConfigurationImageRepository? imageRepository;

  Map<String, Object?> encode() => {
    if (autoDeploymentsEnabled != null)
      'auto_deployments_enabled': autoDeploymentsEnabled!.toTfJson(),
    if (authenticationConfiguration != null)
      'authentication_configuration': authenticationConfiguration!.encode(),
    if (codeRepository != null) 'code_repository': codeRepository!.encode(),
    if (imageRepository != null) 'image_repository': imageRepository!.encode(),
  };
}

/// Typed helper for the `source_configuration.authentication_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationAuthenticationConfiguration {
  const ApprunnerServiceSourceConfigurationAuthenticationConfiguration({
    this.accessRoleArn,
    this.connectionArn,
  });

  final TfArg<String>? accessRoleArn;

  final TfArg<String>? connectionArn;

  Map<String, Object?> encode() => {
    if (accessRoleArn != null) 'access_role_arn': accessRoleArn!.toTfJson(),
    if (connectionArn != null) 'connection_arn': connectionArn!.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.code_repository` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationCodeRepository {
  const ApprunnerServiceSourceConfigurationCodeRepository({
    required this.repositoryUrl,
    this.sourceDirectory,
    this.codeConfiguration,
    required this.sourceCodeVersion,
  });

  final TfArg<String> repositoryUrl;

  final TfArg<String>? sourceDirectory;

  final ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfiguration?
  codeConfiguration;

  final ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion
  sourceCodeVersion;

  Map<String, Object?> encode() => {
    'repository_url': repositoryUrl.toTfJson(),
    if (sourceDirectory != null)
      'source_directory': sourceDirectory!.toTfJson(),
    if (codeConfiguration != null)
      'code_configuration': codeConfiguration!.encode(),
    'source_code_version': sourceCodeVersion.encode(),
  };
}

/// Typed helper for the `source_configuration.code_repository.code_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfiguration {
  const ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfiguration({
    required this.configurationSource,
    this.codeConfigurationValues,
  });

  final TfArg<String> configurationSource;

  final ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues?
  codeConfigurationValues;

  Map<String, Object?> encode() => {
    'configuration_source': configurationSource.toTfJson(),
    if (codeConfigurationValues != null)
      'code_configuration_values': codeConfigurationValues!.encode(),
  };
}

/// Typed helper for the `source_configuration.code_repository.code_configuration.code_configuration_values` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues {
  const ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues({
    this.buildCommand,
    this.port,
    required this.runtime,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  final TfArg<String>? buildCommand;

  final TfArg<String>? port;

  final TfArg<String> runtime;

  final TfArg<Map<String, String>>? runtimeEnvironmentSecrets;

  final TfArg<Map<String, String>>? runtimeEnvironmentVariables;

  final TfArg<String>? startCommand;

  Map<String, Object?> encode() => {
    if (buildCommand != null) 'build_command': buildCommand!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    'runtime': runtime.toTfJson(),
    if (runtimeEnvironmentSecrets != null)
      'runtime_environment_secrets': runtimeEnvironmentSecrets!.toTfJson(),
    if (runtimeEnvironmentVariables != null)
      'runtime_environment_variables': runtimeEnvironmentVariables!.toTfJson(),
    if (startCommand != null) 'start_command': startCommand!.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.code_repository.source_code_version` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion {
  const ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.image_repository` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationImageRepository {
  const ApprunnerServiceSourceConfigurationImageRepository({
    required this.imageIdentifier,
    required this.imageRepositoryType,
    this.imageConfiguration,
  });

  final TfArg<String> imageIdentifier;

  final TfArg<String> imageRepositoryType;

  final ApprunnerServiceSourceConfigurationImageRepositoryImageConfiguration?
  imageConfiguration;

  Map<String, Object?> encode() => {
    'image_identifier': imageIdentifier.toTfJson(),
    'image_repository_type': imageRepositoryType.toTfJson(),
    if (imageConfiguration != null)
      'image_configuration': imageConfiguration!.encode(),
  };
}

/// Typed helper for the `source_configuration.image_repository.image_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationImageRepositoryImageConfiguration {
  const ApprunnerServiceSourceConfigurationImageRepositoryImageConfiguration({
    this.port,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  final TfArg<String>? port;

  final TfArg<Map<String, String>>? runtimeEnvironmentSecrets;

  final TfArg<Map<String, String>>? runtimeEnvironmentVariables;

  final TfArg<String>? startCommand;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (runtimeEnvironmentSecrets != null)
      'runtime_environment_secrets': runtimeEnvironmentSecrets!.toTfJson(),
    if (runtimeEnvironmentVariables != null)
      'runtime_environment_variables': runtimeEnvironmentVariables!.toTfJson(),
    if (startCommand != null) 'start_command': startCommand!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apprunner_service`.
final class AwsApprunnerService extends Resource {
  static const String tfType = 'aws_apprunner_service';

  AwsApprunnerService({
    required super.localName,
    TfArg<String>? autoScalingConfigurationArn,
    TfArg<String>? region,
    required TfArg<String> serviceName,
    TfArg<Map<String, String>>? tags,
    ApprunnerServiceEncryptionConfiguration? encryptionConfiguration,
    ApprunnerServiceHealthCheckConfiguration? healthCheckConfiguration,
    ApprunnerServiceInstanceConfiguration? instanceConfiguration,
    ApprunnerServiceNetworkConfiguration? networkConfiguration,
    ApprunnerServiceObservabilityConfiguration? observabilityConfiguration,
    required ApprunnerServiceSourceConfiguration sourceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoScalingConfigurationArn != null)
             'auto_scaling_configuration_arn': autoScalingConfigurationArn,
           if (region != null) 'region': region,
           'service_name': serviceName,
           if (tags != null) 'tags': tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (healthCheckConfiguration != null)
             'health_check_configuration': TfArg.literal(
               healthCheckConfiguration.encode(),
             ),
           if (instanceConfiguration != null)
             'instance_configuration': TfArg.literal(
               instanceConfiguration.encode(),
             ),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (observabilityConfiguration != null)
             'observability_configuration': TfArg.literal(
               observabilityConfiguration.encode(),
             ),
           'source_configuration': TfArg.literal(sourceConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `service_url` attribute.
  TfRef<String> get serviceUrl => TfRef.attribute<String>(this, 'service_url');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
