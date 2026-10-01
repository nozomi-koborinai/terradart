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

  @internal
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

  final ApprunnerServiceProtocol? protocol;

  final TfArg<num>? timeout;

  final TfArg<num>? unhealthyThreshold;

  @internal
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
extension type const ApprunnerServiceProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceProtocol.variable(String name) : this._(TfArg.variable(name));
  ApprunnerServiceProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = ApprunnerServiceProtocol._(TfArgLiteral('TCP'));
  static const http = ApprunnerServiceProtocol._(TfArgLiteral('HTTP'));

  static const List<ApprunnerServiceProtocol> values = [tcp, http];
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

  @internal
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

  final ApprunnerServiceIpAddressType? ipAddressType;

  final ApprunnerServiceEgressConfiguration? egressConfiguration;

  final ApprunnerServiceIngressConfiguration? ingressConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'egress_configuration': ?egressConfiguration?.encode(),
    'ingress_configuration': ?ingressConfiguration?.encode(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const ApprunnerServiceIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  ApprunnerServiceIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = ApprunnerServiceIpAddressType._(TfArgLiteral('IPV4'));
  static const dualStack = ApprunnerServiceIpAddressType._(
    TfArgLiteral('DUAL_STACK'),
  );

  static const List<ApprunnerServiceIpAddressType> values = [ipv4, dualStack];
}

/// Typed helper for the `network_configuration.egress_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceEgressConfiguration {
  const ApprunnerServiceEgressConfiguration({
    this.egressType,
    this.vpcConnectorArn,
  });

  final ApprunnerServiceEgressType? egressType;

  final TfArg<String>? vpcConnectorArn;

  @internal
  Map<String, Object?> encode() => {
    'egress_type': ?egressType?.toTfJson(),
    'vpc_connector_arn': ?vpcConnectorArn?.toTfJson(),
  };
}

/// `egress_type` — derived from the provider schema description.
extension type const ApprunnerServiceEgressType._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceEgressType.variable(String name)
    : this._(TfArg.variable(name));
  ApprunnerServiceEgressType.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceEgressType.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = ApprunnerServiceEgressType._(
    TfArgLiteral('DEFAULT'),
  );
  static const vpc = ApprunnerServiceEgressType._(TfArgLiteral('VPC'));

  static const List<ApprunnerServiceEgressType> values = [defaultCase, vpc];
}

/// Typed helper for the `network_configuration.ingress_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceIngressConfiguration {
  const ApprunnerServiceIngressConfiguration({this.isPubliclyAccessible});

  final TfArg<bool>? isPubliclyAccessible;

  @internal
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

  @internal
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

  final ApprunnerServiceAuthenticationConfiguration?
  authenticationConfiguration;

  final ApprunnerServiceRepository repository;

  @internal
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
sealed class ApprunnerServiceRepository {
  const ApprunnerServiceRepository();

  /// Sets `code_repository`.
  const factory ApprunnerServiceRepository.codeRepository(
    ApprunnerServiceCodeRepository codeRepository,
  ) = ApprunnerServiceCodeRepositoryChoice;

  /// Sets `image_repository`.
  const factory ApprunnerServiceRepository.imageRepository(
    ApprunnerServiceImageRepository imageRepository,
  ) = ApprunnerServiceImageRepositoryChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApprunnerServiceRepository.codeRepository] choice: sets `code_repository`.
final class ApprunnerServiceCodeRepositoryChoice
    extends ApprunnerServiceRepository {
  const ApprunnerServiceCodeRepositoryChoice(this.codeRepository);

  final ApprunnerServiceCodeRepository codeRepository;

  @internal
  @override
  String get blockKey => 'code_repository';

  @internal
  @override
  Map<String, Object?> encode() => {'code_repository': codeRepository.encode()};
}

/// The [ApprunnerServiceRepository.imageRepository] choice: sets `image_repository`.
final class ApprunnerServiceImageRepositoryChoice
    extends ApprunnerServiceRepository {
  const ApprunnerServiceImageRepositoryChoice(this.imageRepository);

  final ApprunnerServiceImageRepository imageRepository;

  @internal
  @override
  String get blockKey => 'image_repository';

  @internal
  @override
  Map<String, Object?> encode() => {
    'image_repository': imageRepository.encode(),
  };
}

/// Typed helper for the `source_configuration.authentication_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceAuthenticationConfiguration {
  const ApprunnerServiceAuthenticationConfiguration({
    this.accessRoleArn,
    this.connectionArn,
  });

  final TfArg<String>? accessRoleArn;

  final TfArg<String>? connectionArn;

  @internal
  Map<String, Object?> encode() => {
    'access_role_arn': ?accessRoleArn?.toTfJson(),
    'connection_arn': ?connectionArn?.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.code_repository` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceCodeRepository {
  const ApprunnerServiceCodeRepository({
    required this.repositoryUrl,
    this.sourceDirectory,
    this.codeConfiguration,
    required this.sourceCodeVersion,
  });

  final TfArg<String> repositoryUrl;

  final TfArg<String>? sourceDirectory;

  final ApprunnerServiceCodeConfiguration? codeConfiguration;

  final ApprunnerServiceSourceCodeVersion sourceCodeVersion;

  @internal
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
final class ApprunnerServiceCodeConfiguration {
  const ApprunnerServiceCodeConfiguration({
    required this.configurationSource,
    this.codeConfigurationValues,
  });

  final ApprunnerServiceConfigurationSource configurationSource;

  final ApprunnerServiceCodeConfigurationValues? codeConfigurationValues;

  @internal
  Map<String, Object?> encode() => {
    'configuration_source': configurationSource.toTfJson(),
    'code_configuration_values': ?codeConfigurationValues?.encode(),
  };
}

/// `configuration_source` — derived from the provider schema description.
extension type const ApprunnerServiceConfigurationSource._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceConfigurationSource.variable(String name)
    : this._(TfArg.variable(name));
  ApprunnerServiceConfigurationSource.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceConfigurationSource.arg(TfArg<String> arg)
    : this._(arg);

  static const repository = ApprunnerServiceConfigurationSource._(
    TfArgLiteral('REPOSITORY'),
  );
  static const api = ApprunnerServiceConfigurationSource._(TfArgLiteral('API'));

  static const List<ApprunnerServiceConfigurationSource> values = [
    repository,
    api,
  ];
}

/// Typed helper for the `source_configuration.code_repository.code_configuration.code_configuration_values` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceCodeConfigurationValues {
  const ApprunnerServiceCodeConfigurationValues({
    this.buildCommand,
    this.port,
    required this.runtime,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  final TfArg<String>? buildCommand;

  final TfArg<String>? port;

  final ApprunnerServiceRuntime runtime;

  final TfArg<Map<String, String>>? runtimeEnvironmentSecrets;

  final TfArg<Map<String, String>>? runtimeEnvironmentVariables;

  final TfArg<String>? startCommand;

  @internal
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
extension type const ApprunnerServiceRuntime._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceRuntime.variable(String name) : this._(TfArg.variable(name));
  ApprunnerServiceRuntime.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceRuntime.arg(TfArg<String> arg) : this._(arg);

  static const python3 = ApprunnerServiceRuntime._(TfArgLiteral('PYTHON_3'));
  static const nodejs12 = ApprunnerServiceRuntime._(TfArgLiteral('NODEJS_12'));
  static const nodejs14 = ApprunnerServiceRuntime._(TfArgLiteral('NODEJS_14'));
  static const corretto8 = ApprunnerServiceRuntime._(
    TfArgLiteral('CORRETTO_8'),
  );
  static const corretto11 = ApprunnerServiceRuntime._(
    TfArgLiteral('CORRETTO_11'),
  );
  static const nodejs16 = ApprunnerServiceRuntime._(TfArgLiteral('NODEJS_16'));
  static const go1 = ApprunnerServiceRuntime._(TfArgLiteral('GO_1'));
  static const dotnet6 = ApprunnerServiceRuntime._(TfArgLiteral('DOTNET_6'));
  static const php81 = ApprunnerServiceRuntime._(TfArgLiteral('PHP_81'));
  static const ruby31 = ApprunnerServiceRuntime._(TfArgLiteral('RUBY_31'));
  static const python311 = ApprunnerServiceRuntime._(
    TfArgLiteral('PYTHON_311'),
  );
  static const nodejs18 = ApprunnerServiceRuntime._(TfArgLiteral('NODEJS_18'));
  static const nodejs22 = ApprunnerServiceRuntime._(TfArgLiteral('NODEJS_22'));

  static const List<ApprunnerServiceRuntime> values = [
    python3,
    nodejs12,
    nodejs14,
    corretto8,
    corretto11,
    nodejs16,
    go1,
    dotnet6,
    php81,
    ruby31,
    python311,
    nodejs18,
    nodejs22,
  ];
}

/// Typed helper for the `source_configuration.code_repository.source_code_version` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceSourceCodeVersion {
  const ApprunnerServiceSourceCodeVersion({
    required this.type,
    required this.value,
  });

  final ApprunnerServiceType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ApprunnerServiceType._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceType.variable(String name) : this._(TfArg.variable(name));
  ApprunnerServiceType.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceType.arg(TfArg<String> arg) : this._(arg);

  static const branch = ApprunnerServiceType._(TfArgLiteral('BRANCH'));

  static const List<ApprunnerServiceType> values = [branch];
}

/// Typed helper for the `source_configuration.image_repository` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceImageRepository {
  const ApprunnerServiceImageRepository({
    required this.imageIdentifier,
    required this.imageRepositoryType,
    this.imageConfiguration,
  });

  final TfArg<String> imageIdentifier;

  final ApprunnerServiceImageRepositoryType imageRepositoryType;

  final ApprunnerServiceImageConfiguration? imageConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'image_identifier': imageIdentifier.toTfJson(),
    'image_repository_type': imageRepositoryType.toTfJson(),
    'image_configuration': ?imageConfiguration?.encode(),
  };
}

/// `image_repository_type` — derived from the provider schema description.
extension type const ApprunnerServiceImageRepositoryType._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerServiceImageRepositoryType.variable(String name)
    : this._(TfArg.variable(name));
  ApprunnerServiceImageRepositoryType.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerServiceImageRepositoryType.arg(TfArg<String> arg)
    : this._(arg);

  static const ecr = ApprunnerServiceImageRepositoryType._(TfArgLiteral('ECR'));
  static const ecrPublic = ApprunnerServiceImageRepositoryType._(
    TfArgLiteral('ECR_PUBLIC'),
  );

  static const List<ApprunnerServiceImageRepositoryType> values = [
    ecr,
    ecrPublic,
  ];
}

/// Typed helper for the `source_configuration.image_repository.image_configuration` block of
/// `aws_apprunner_service` (derived from provider schema).
@immutable
final class ApprunnerServiceImageConfiguration {
  const ApprunnerServiceImageConfiguration({
    this.port,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  final TfArg<String>? port;

  final TfArg<Map<String, String>>? runtimeEnvironmentSecrets;

  final TfArg<Map<String, String>>? runtimeEnvironmentVariables;

  final TfArg<String>? startCommand;

  @internal
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

  AwsApprunnerService(
    super.localName, {
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
  TfRef<String> get autoScalingConfigurationArn =>
      TfRef.attribute<String>(this, 'auto_scaling_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
