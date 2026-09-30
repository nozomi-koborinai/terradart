// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_apprunner_service`.
const Set<String> _awsApprunnerServiceSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceEncryptionConfiguration {
  const ApprunnerServiceEncryptionConfiguration({required this.kmsKey});

  final RefTo<AwsKmsKey> kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': kmsKey.encodeAs('arn').toTfJson(),
  };
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

  final TfArg<ApprunnerServiceHealthCheckConfigurationProtocol>? protocol;

  final TfArg<num>? timeout;

  final TfArg<num>? unhealthyThreshold;

  Map<String, Object?> encode() => {
    'healthy_threshold': ?healthyThreshold?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'path': ?path?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'unhealthy_threshold': ?unhealthyThreshold?.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum ApprunnerServiceHealthCheckConfigurationProtocol implements TerraformEnum {
  tcp('TCP'),
  http('HTTP');

  const ApprunnerServiceHealthCheckConfigurationProtocol(this.terraformValue);
  @override
  final String terraformValue;
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
    'cpu': ?cpu?.toTfJson(),
    'instance_role_arn': ?instanceRoleArn?.toTfJson(),
    'memory': ?memory?.toTfJson(),
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

  final TfArg<ApprunnerServiceNetworkConfigurationIpAddressType>? ipAddressType;

  final ApprunnerServiceNetworkConfigurationEgressConfiguration?
  egressConfiguration;

  final ApprunnerServiceNetworkConfigurationIngressConfiguration?
  ingressConfiguration;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'egress_configuration': ?egressConfiguration?.encode(),
    'ingress_configuration': ?ingressConfiguration?.encode(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum ApprunnerServiceNetworkConfigurationIpAddressType
    implements TerraformEnum {
  ipv4('IPV4'),
  dualStack('DUAL_STACK');

  const ApprunnerServiceNetworkConfigurationIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_configuration.egress_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceNetworkConfigurationEgressConfiguration {
  const ApprunnerServiceNetworkConfigurationEgressConfiguration({
    this.egressType,
    this.vpcConnectorArn,
  });

  final TfArg<
    ApprunnerServiceNetworkConfigurationEgressConfigurationEgressType
  >?
  egressType;

  final TfArg<String>? vpcConnectorArn;

  Map<String, Object?> encode() => {
    'egress_type': ?egressType?.toTfJson(),
    'vpc_connector_arn': ?vpcConnectorArn?.toTfJson(),
  };
}

/// `egress_type` — derived from the provider schema description.
enum ApprunnerServiceNetworkConfigurationEgressConfigurationEgressType
    implements TerraformEnum {
  defaultCase('DEFAULT'),
  vpc('VPC');

  const ApprunnerServiceNetworkConfigurationEgressConfigurationEgressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'is_publicly_accessible': ?isPubliclyAccessible?.toTfJson(),
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
    'observability_configuration_arn': ?observabilityConfigurationArn
        ?.toTfJson(),
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
    required this.repository,
  });

  final TfArg<bool>? autoDeploymentsEnabled;

  final ApprunnerServiceSourceConfigurationAuthenticationConfiguration?
  authenticationConfiguration;

  final ApprunnerServiceSourceConfigurationRepository repository;

  Map<String, Object?> encode() => {
    'auto_deployments_enabled': ?autoDeploymentsEnabled?.toTfJson(),
    'authentication_configuration': ?authenticationConfiguration?.encode(),
    ...repository.encode(),
  };
}

/// Exactly one of `code_repository`, `image_repository` on the `source_configuration` block of `aws_apprunner_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.codeRepository(...)`.
sealed class ApprunnerServiceSourceConfigurationRepository {
  const ApprunnerServiceSourceConfigurationRepository();

  /// Sets `code_repository`.
  const factory ApprunnerServiceSourceConfigurationRepository.codeRepository(
    ApprunnerServiceSourceConfigurationCodeRepository codeRepository,
  ) = ApprunnerServiceSourceConfigurationRepositoryCodeRepository;

  /// Sets `image_repository`.
  const factory ApprunnerServiceSourceConfigurationRepository.imageRepository(
    ApprunnerServiceSourceConfigurationImageRepository imageRepository,
  ) = ApprunnerServiceSourceConfigurationRepositoryImageRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ApprunnerServiceSourceConfigurationRepository.codeRepository] choice: sets `code_repository`.
final class ApprunnerServiceSourceConfigurationRepositoryCodeRepository
    extends ApprunnerServiceSourceConfigurationRepository {
  const ApprunnerServiceSourceConfigurationRepositoryCodeRepository(
    this.codeRepository,
  );

  final ApprunnerServiceSourceConfigurationCodeRepository codeRepository;

  @override
  String get blockKey => 'code_repository';

  @override
  Map<String, Object?> encode() => {'code_repository': codeRepository.encode()};
}

/// The [ApprunnerServiceSourceConfigurationRepository.imageRepository] choice: sets `image_repository`.
final class ApprunnerServiceSourceConfigurationRepositoryImageRepository
    extends ApprunnerServiceSourceConfigurationRepository {
  const ApprunnerServiceSourceConfigurationRepositoryImageRepository(
    this.imageRepository,
  );

  final ApprunnerServiceSourceConfigurationImageRepository imageRepository;

  @override
  String get blockKey => 'image_repository';

  @override
  Map<String, Object?> encode() => {
    'image_repository': imageRepository.encode(),
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
    'access_role_arn': ?accessRoleArn?.toTfJson(),
    'connection_arn': ?connectionArn?.toTfJson(),
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
    'source_directory': ?sourceDirectory?.toTfJson(),
    'code_configuration': ?codeConfiguration?.encode(),
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

  final TfArg<
    ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationConfigurationSource
  >
  configurationSource;

  final ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues?
  codeConfigurationValues;

  Map<String, Object?> encode() => {
    'configuration_source': configurationSource.toTfJson(),
    'code_configuration_values': ?codeConfigurationValues?.encode(),
  };
}

/// `configuration_source` — derived from the provider schema description.
enum ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationConfigurationSource
    implements TerraformEnum {
  repository('REPOSITORY'),
  api('API');

  const ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationConfigurationSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesRuntime
  >
  runtime;

  final TfArg<Map<String, String>>? runtimeEnvironmentSecrets;

  final TfArg<Map<String, String>>? runtimeEnvironmentVariables;

  final TfArg<String>? startCommand;

  Map<String, Object?> encode() => {
    'build_command': ?buildCommand?.toTfJson(),
    'port': ?port?.toTfJson(),
    'runtime': runtime.toTfJson(),
    'runtime_environment_secrets': ?runtimeEnvironmentSecrets?.toTfJson(),
    'runtime_environment_variables': ?runtimeEnvironmentVariables?.toTfJson(),
    'start_command': ?startCommand?.toTfJson(),
  };
}

/// `runtime` — derived from the provider schema description.
enum ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesRuntime
    implements TerraformEnum {
  python3('PYTHON_3'),
  nodejs12('NODEJS_12'),
  nodejs14('NODEJS_14'),
  corretto8('CORRETTO_8'),
  corretto11('CORRETTO_11'),
  nodejs16('NODEJS_16'),
  go1('GO_1'),
  dotnet6('DOTNET_6'),
  php81('PHP_81'),
  ruby31('RUBY_31'),
  python311('PYTHON_311'),
  nodejs18('NODEJS_18'),
  nodejs22('NODEJS_22');

  const ApprunnerServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesRuntime(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_configuration.code_repository.source_code_version` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion {
  const ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion({
    required this.type,
    required this.value,
  });

  final TfArg<
    ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersionType
  >
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersionType
    implements TerraformEnum {
  branch('BRANCH');

  const ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    ApprunnerServiceSourceConfigurationImageRepositoryImageRepositoryType
  >
  imageRepositoryType;

  final ApprunnerServiceSourceConfigurationImageRepositoryImageConfiguration?
  imageConfiguration;

  Map<String, Object?> encode() => {
    'image_identifier': imageIdentifier.toTfJson(),
    'image_repository_type': imageRepositoryType.toTfJson(),
    'image_configuration': ?imageConfiguration?.encode(),
  };
}

/// `image_repository_type` — derived from the provider schema description.
enum ApprunnerServiceSourceConfigurationImageRepositoryImageRepositoryType
    implements TerraformEnum {
  ecr('ECR'),
  ecrPublic('ECR_PUBLIC');

  const ApprunnerServiceSourceConfigurationImageRepositoryImageRepositoryType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'port': ?port?.toTfJson(),
    'runtime_environment_secrets': ?runtimeEnvironmentSecrets?.toTfJson(),
    'runtime_environment_variables': ?runtimeEnvironmentVariables?.toTfJson(),
    'start_command': ?startCommand?.toTfJson(),
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
           'auto_scaling_configuration_arn': ?autoScalingConfigurationArn,
           'region': ?region,
           'service_name': serviceName,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerService>`.
  RefTo<AwsApprunnerService> get ref => RefTo.of(this);

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

  /// Reference to `auto_scaling_configuration_arn` attribute.
  TfRef<String> get autoScalingConfigurationArnRef =>
      TfRef.attribute<String>(this, 'auto_scaling_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceNameRef =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
