// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_opensearch_domain`.
const Set<String> _awsOpensearchDomainSensitive = <String>{
  'advanced_security_options.master_user_options.master_user_password',
};

/// Opensearch Domain Ip Address enum for `ip_address_type`.
extension type const OpensearchDomainIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = OpensearchDomainIpAddressType._(TfArgLiteral('ipv4'));
  static const dualstack = OpensearchDomainIpAddressType._(
    TfArgLiteral('dualstack'),
  );

  static const List<OpensearchDomainIpAddressType> values = [ipv4, dualstack];
}

/// Typed helper for the `advanced_security_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAdvancedSecurityOptions {
  const OpensearchDomainAdvancedSecurityOptions({
    this.anonymousAuthEnabled,
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.jwtOptions,
    this.masterUserOptions,
  });

  final TfArg<bool>? anonymousAuthEnabled;

  final TfArg<bool> enabled;

  final TfArg<bool>? internalUserDatabaseEnabled;

  final OpensearchDomainJwtOptions? jwtOptions;

  final OpensearchDomainMasterUserOptions? masterUserOptions;

  @internal
  Map<String, Object?> encode() => {
    'anonymous_auth_enabled': ?anonymousAuthEnabled?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'internal_user_database_enabled': ?internalUserDatabaseEnabled?.toTfJson(),
    'jwt_options': ?jwtOptions?.encode(),
    'master_user_options': ?masterUserOptions?.encode(),
  };
}

/// Typed helper for the `advanced_security_options.jwt_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainJwtOptions {
  const OpensearchDomainJwtOptions({
    this.enabled,
    this.jwksUrl,
    this.publicKey,
    this.rolesKey,
    this.subjectKey,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? jwksUrl;

  final TfArg<String>? publicKey;

  final TfArg<String>? rolesKey;

  final TfArg<String>? subjectKey;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'jwks_url': ?jwksUrl?.toTfJson(),
    'public_key': ?publicKey?.toTfJson(),
    'roles_key': ?rolesKey?.toTfJson(),
    'subject_key': ?subjectKey?.toTfJson(),
  };
}

/// Typed helper for the `advanced_security_options.master_user_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainMasterUserOptions {
  const OpensearchDomainMasterUserOptions({
    this.masterUserArn,
    this.masterUserName,
    this.masterUserPassword,
  });

  final TfArg<String>? masterUserArn;

  final TfArg<String>? masterUserName;

  final Sensitive<String>? masterUserPassword;

  @internal
  Map<String, Object?> encode() => {
    'master_user_arn': ?masterUserArn?.toTfJson(),
    'master_user_name': ?masterUserName?.toTfJson(),
    'master_user_password': ?masterUserPassword?.toTfJson(),
  };
}

/// Typed helper for the `aiml_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAimlOptions {
  const OpensearchDomainAimlOptions({
    this.naturalLanguageQueryGenerationOptions,
    this.s3VectorsEngine,
    this.serverlessVectorAcceleration,
  });

  final OpensearchDomainNaturalLanguageQueryGenerationOptions?
  naturalLanguageQueryGenerationOptions;

  final OpensearchDomainS3VectorsEngine? s3VectorsEngine;

  final OpensearchDomainServerlessVectorAcceleration?
  serverlessVectorAcceleration;

  @internal
  Map<String, Object?> encode() => {
    'natural_language_query_generation_options':
        ?naturalLanguageQueryGenerationOptions?.encode(),
    's3_vectors_engine': ?s3VectorsEngine?.encode(),
    'serverless_vector_acceleration': ?serverlessVectorAcceleration?.encode(),
  };
}

/// Typed helper for the `aiml_options.natural_language_query_generation_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNaturalLanguageQueryGenerationOptions {
  const OpensearchDomainNaturalLanguageQueryGenerationOptions({
    this.desiredState,
  });

  final OpensearchDomainDesiredState? desiredState;

  @internal
  Map<String, Object?> encode() => {'desired_state': ?desiredState?.toTfJson()};
}

/// `desired_state` — derived from the provider schema description.
extension type const OpensearchDomainDesiredState._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainDesiredState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = OpensearchDomainDesiredState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = OpensearchDomainDesiredState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<OpensearchDomainDesiredState> values = [enabled, disabled];
}

/// Typed helper for the `aiml_options.s3_vectors_engine` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainS3VectorsEngine {
  const OpensearchDomainS3VectorsEngine({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `aiml_options.serverless_vector_acceleration` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainServerlessVectorAcceleration {
  const OpensearchDomainServerlessVectorAcceleration({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `auto_tune_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAutoTuneOptions {
  const OpensearchDomainAutoTuneOptions({
    required this.desiredState,
    this.rollbackOnDisable,
    this.useOffPeakWindow,
    this.maintenanceSchedule,
  });

  final OpensearchDomainDesiredState desiredState;

  final OpensearchDomainRollbackOnDisable? rollbackOnDisable;

  final TfArg<bool>? useOffPeakWindow;

  final List<OpensearchDomainMaintenanceSchedule>? maintenanceSchedule;

  @internal
  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    'rollback_on_disable': ?rollbackOnDisable?.toTfJson(),
    'use_off_peak_window': ?useOffPeakWindow?.toTfJson(),
    if (maintenanceSchedule != null)
      'maintenance_schedule': [
        for (final e in maintenanceSchedule!) e.encode(),
      ],
  };
}

/// `rollback_on_disable` — derived from the provider schema description.
extension type const OpensearchDomainRollbackOnDisable._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainRollbackOnDisable.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainRollbackOnDisable.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainRollbackOnDisable.arg(TfArg<String> arg) : this._(arg);

  static const noRollback = OpensearchDomainRollbackOnDisable._(
    TfArgLiteral('NO_ROLLBACK'),
  );
  static const defaultRollback = OpensearchDomainRollbackOnDisable._(
    TfArgLiteral('DEFAULT_ROLLBACK'),
  );

  static const List<OpensearchDomainRollbackOnDisable> values = [
    noRollback,
    defaultRollback,
  ];
}

/// Typed helper for the `auto_tune_options.maintenance_schedule` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainMaintenanceSchedule {
  const OpensearchDomainMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.startAt,
    required this.duration,
  });

  final TfArg<String> cronExpressionForRecurrence;

  final TfArg<String> startAt;

  final OpensearchDomainDuration duration;

  @internal
  Map<String, Object?> encode() => {
    'cron_expression_for_recurrence': cronExpressionForRecurrence.toTfJson(),
    'start_at': startAt.toTfJson(),
    'duration': duration.encode(),
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule.duration` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainDuration {
  const OpensearchDomainDuration({required this.unit, required this.value});

  final OpensearchDomainUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
extension type const OpensearchDomainUnit._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainUnit.variable(String name) : this._(TfArg.variable(name));
  OpensearchDomainUnit.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainUnit.arg(TfArg<String> arg) : this._(arg);

  static const hours = OpensearchDomainUnit._(TfArgLiteral('HOURS'));

  static const List<OpensearchDomainUnit> values = [hours];
}

/// Typed helper for the `cluster_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainClusterConfig {
  const OpensearchDomainClusterConfig({
    this.dedicatedMasterCount,
    this.dedicatedMasterEnabled,
    this.dedicatedMasterType,
    this.instanceCount,
    this.instanceType,
    this.multiAzWithStandbyEnabled,
    this.warmCount,
    this.warmEnabled,
    this.warmType,
    this.zoneAwarenessEnabled,
    this.coldStorageOptions,
    this.nodeOptions,
    this.zoneAwarenessConfig,
  });

  final TfArg<num>? dedicatedMasterCount;

  final TfArg<bool>? dedicatedMasterEnabled;

  final TfArg<String>? dedicatedMasterType;

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<bool>? multiAzWithStandbyEnabled;

  final TfArg<num>? warmCount;

  final TfArg<bool>? warmEnabled;

  final OpensearchDomainWarmType? warmType;

  final TfArg<bool>? zoneAwarenessEnabled;

  final OpensearchDomainColdStorageOptions? coldStorageOptions;

  final List<OpensearchDomainNodeOptions>? nodeOptions;

  final OpensearchDomainZoneAwarenessConfig? zoneAwarenessConfig;

  @internal
  Map<String, Object?> encode() => {
    'dedicated_master_count': ?dedicatedMasterCount?.toTfJson(),
    'dedicated_master_enabled': ?dedicatedMasterEnabled?.toTfJson(),
    'dedicated_master_type': ?dedicatedMasterType?.toTfJson(),
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'multi_az_with_standby_enabled': ?multiAzWithStandbyEnabled?.toTfJson(),
    'warm_count': ?warmCount?.toTfJson(),
    'warm_enabled': ?warmEnabled?.toTfJson(),
    'warm_type': ?warmType?.toTfJson(),
    'zone_awareness_enabled': ?zoneAwarenessEnabled?.toTfJson(),
    'cold_storage_options': ?coldStorageOptions?.encode(),
    if (nodeOptions != null)
      'node_options': [for (final e in nodeOptions!) e.encode()],
    'zone_awareness_config': ?zoneAwarenessConfig?.encode(),
  };
}

/// `warm_type` — derived from the provider schema description.
extension type const OpensearchDomainWarmType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainWarmType.variable(String name) : this._(TfArg.variable(name));
  OpensearchDomainWarmType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainWarmType.arg(TfArg<String> arg) : this._(arg);

  static const ultrawarm1MediumSearch = OpensearchDomainWarmType._(
    TfArgLiteral('ultrawarm1.medium.search'),
  );
  static const ultrawarm1LargeSearch = OpensearchDomainWarmType._(
    TfArgLiteral('ultrawarm1.large.search'),
  );
  static const ultrawarm1XlargeSearch = OpensearchDomainWarmType._(
    TfArgLiteral('ultrawarm1.xlarge.search'),
  );

  static const List<OpensearchDomainWarmType> values = [
    ultrawarm1MediumSearch,
    ultrawarm1LargeSearch,
    ultrawarm1XlargeSearch,
  ];
}

/// Typed helper for the `cluster_config.cold_storage_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainColdStorageOptions {
  const OpensearchDomainColdStorageOptions({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `cluster_config.node_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeOptions {
  const OpensearchDomainNodeOptions({this.nodeType, this.nodeConfig});

  final OpensearchDomainNodeType? nodeType;

  final OpensearchDomainNodeConfig? nodeConfig;

  @internal
  Map<String, Object?> encode() => {
    'node_type': ?nodeType?.toTfJson(),
    'node_config': ?nodeConfig?.encode(),
  };
}

/// `node_type` — derived from the provider schema description.
extension type const OpensearchDomainNodeType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainNodeType.variable(String name) : this._(TfArg.variable(name));
  OpensearchDomainNodeType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainNodeType.arg(TfArg<String> arg) : this._(arg);

  static const coordinator = OpensearchDomainNodeType._(
    TfArgLiteral('coordinator'),
  );

  static const List<OpensearchDomainNodeType> values = [coordinator];
}

/// Typed helper for the `cluster_config.node_options.node_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeConfig {
  const OpensearchDomainNodeConfig({this.count, this.enabled, this.type});

  final TfArg<num>? count;

  final TfArg<bool>? enabled;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.zone_awareness_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainZoneAwarenessConfig {
  const OpensearchDomainZoneAwarenessConfig({this.availabilityZoneCount});

  final TfArg<num>? availabilityZoneCount;

  @internal
  Map<String, Object?> encode() => {
    'availability_zone_count': ?availabilityZoneCount?.toTfJson(),
  };
}

/// Typed helper for the `cognito_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainCognitoOptions {
  const OpensearchDomainCognitoOptions({
    this.enabled,
    required this.identityPoolId,
    required this.roleArn,
    required this.userPoolId,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> identityPoolId;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> userPoolId;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'identity_pool_id': identityPoolId.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// Typed helper for the `deployment_strategy_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainDeploymentStrategyOptions {
  const OpensearchDomainDeploymentStrategyOptions({
    required this.deploymentStrategy,
  });

  final OpensearchDomainDeploymentStrategy deploymentStrategy;

  @internal
  Map<String, Object?> encode() => {
    'deployment_strategy': deploymentStrategy.toTfJson(),
  };
}

/// `deployment_strategy` — derived from the provider schema description.
extension type const OpensearchDomainDeploymentStrategy._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainDeploymentStrategy.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainDeploymentStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainDeploymentStrategy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = OpensearchDomainDeploymentStrategy._(
    TfArgLiteral('Default'),
  );
  static const capacityoptimized = OpensearchDomainDeploymentStrategy._(
    TfArgLiteral('CapacityOptimized'),
  );

  static const List<OpensearchDomainDeploymentStrategy> values = [
    defaultCase,
    capacityoptimized,
  ];
}

/// Typed helper for the `domain_endpoint_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainEndpointOptions {
  const OpensearchDomainEndpointOptions({
    this.customEndpoint,
    this.customEndpointCertificateArn,
    this.customEndpointEnabled,
    this.enforceHttps,
    this.tlsSecurityPolicy,
  });

  final TfArg<String>? customEndpoint;

  final TfArg<String>? customEndpointCertificateArn;

  final TfArg<bool>? customEndpointEnabled;

  final TfArg<bool>? enforceHttps;

  final OpensearchDomainTlsSecurityPolicy? tlsSecurityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'custom_endpoint': ?customEndpoint?.toTfJson(),
    'custom_endpoint_certificate_arn': ?customEndpointCertificateArn
        ?.toTfJson(),
    'custom_endpoint_enabled': ?customEndpointEnabled?.toTfJson(),
    'enforce_https': ?enforceHttps?.toTfJson(),
    'tls_security_policy': ?tlsSecurityPolicy?.toTfJson(),
  };
}

/// `tls_security_policy` — derived from the provider schema description.
extension type const OpensearchDomainTlsSecurityPolicy._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainTlsSecurityPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainTlsSecurityPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainTlsSecurityPolicy.arg(TfArg<String> arg) : this._(arg);

  static const policyMinTls10201907 = OpensearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-0-2019-07'),
  );
  static const policyMinTls12201907 = OpensearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-2-2019-07'),
  );
  static const policyMinTls12Pfs202310 = OpensearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-2-PFS-2023-10'),
  );
  static const policyMinTls12Rfc9151Fips202408 =
      OpensearchDomainTlsSecurityPolicy._(
        TfArgLiteral('Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08'),
      );

  static const List<OpensearchDomainTlsSecurityPolicy> values = [
    policyMinTls10201907,
    policyMinTls12201907,
    policyMinTls12Pfs202310,
    policyMinTls12Rfc9151Fips202408,
  ];
}

/// Typed helper for the `ebs_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainEbsOptions {
  const OpensearchDomainEbsOptions({
    required this.ebsEnabled,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool> ebsEnabled;

  final TfArg<num>? iops;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final OpensearchDomainVolumeType? volumeType;

  @internal
  Map<String, Object?> encode() => {
    'ebs_enabled': ebsEnabled.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
extension type const OpensearchDomainVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = OpensearchDomainVolumeType._(
    TfArgLiteral('standard'),
  );
  static const gp2 = OpensearchDomainVolumeType._(TfArgLiteral('gp2'));
  static const io1 = OpensearchDomainVolumeType._(TfArgLiteral('io1'));
  static const gp3 = OpensearchDomainVolumeType._(TfArgLiteral('gp3'));

  static const List<OpensearchDomainVolumeType> values = [
    standard,
    gp2,
    io1,
    gp3,
  ];
}

/// Typed helper for the `encrypt_at_rest` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainEncryptAtRest {
  const OpensearchDomainEncryptAtRest({required this.enabled, this.kmsKeyId});

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `identity_center_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainIdentityCenterOptions {
  const OpensearchDomainIdentityCenterOptions({
    this.enabledApiAccess,
    this.identityCenterInstanceArn,
    this.rolesKey,
    this.subjectKey,
  });

  final TfArg<bool>? enabledApiAccess;

  final TfArg<String>? identityCenterInstanceArn;

  final OpensearchDomainRolesKey? rolesKey;

  final OpensearchDomainSubjectKey? subjectKey;

  @internal
  Map<String, Object?> encode() => {
    'enabled_api_access': ?enabledApiAccess?.toTfJson(),
    'identity_center_instance_arn': ?identityCenterInstanceArn?.toTfJson(),
    'roles_key': ?rolesKey?.toTfJson(),
    'subject_key': ?subjectKey?.toTfJson(),
  };
}

/// `roles_key` — derived from the provider schema description.
extension type const OpensearchDomainRolesKey._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainRolesKey.variable(String name) : this._(TfArg.variable(name));
  OpensearchDomainRolesKey.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainRolesKey.arg(TfArg<String> arg) : this._(arg);

  static const groupname = OpensearchDomainRolesKey._(
    TfArgLiteral('GroupName'),
  );
  static const groupid = OpensearchDomainRolesKey._(TfArgLiteral('GroupId'));

  static const List<OpensearchDomainRolesKey> values = [groupname, groupid];
}

/// `subject_key` — derived from the provider schema description.
extension type const OpensearchDomainSubjectKey._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainSubjectKey.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchDomainSubjectKey.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainSubjectKey.arg(TfArg<String> arg) : this._(arg);

  static const username = OpensearchDomainSubjectKey._(
    TfArgLiteral('UserName'),
  );
  static const userid = OpensearchDomainSubjectKey._(TfArgLiteral('UserId'));
  static const email = OpensearchDomainSubjectKey._(TfArgLiteral('Email'));

  static const List<OpensearchDomainSubjectKey> values = [
    username,
    userid,
    email,
  ];
}

/// Typed helper for the `log_publishing_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainLogPublishingOptions {
  const OpensearchDomainLogPublishingOptions({
    required this.cloudwatchLogGroupArn,
    this.enabled,
    required this.logType,
  });

  final RefTo<AwsCloudwatchLogGroup> cloudwatchLogGroupArn;

  final TfArg<bool>? enabled;

  final OpensearchDomainLogType logType;

  @internal
  Map<String, Object?> encode() => {
    'cloudwatch_log_group_arn': cloudwatchLogGroupArn
        .encodeAs('arn')
        .toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `log_type` — derived from the provider schema description.
extension type const OpensearchDomainLogType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchDomainLogType.variable(String name) : this._(TfArg.variable(name));
  OpensearchDomainLogType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchDomainLogType.arg(TfArg<String> arg) : this._(arg);

  static const indexSlowLogs = OpensearchDomainLogType._(
    TfArgLiteral('INDEX_SLOW_LOGS'),
  );
  static const searchSlowLogs = OpensearchDomainLogType._(
    TfArgLiteral('SEARCH_SLOW_LOGS'),
  );
  static const esApplicationLogs = OpensearchDomainLogType._(
    TfArgLiteral('ES_APPLICATION_LOGS'),
  );
  static const auditLogs = OpensearchDomainLogType._(
    TfArgLiteral('AUDIT_LOGS'),
  );

  static const List<OpensearchDomainLogType> values = [
    indexSlowLogs,
    searchSlowLogs,
    esApplicationLogs,
    auditLogs,
  ];
}

/// Typed helper for the `node_to_node_encryption` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeToNodeEncryption {
  const OpensearchDomainNodeToNodeEncryption({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `off_peak_window_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainOffPeakWindowOptions {
  const OpensearchDomainOffPeakWindowOptions({
    this.enabled,
    this.offPeakWindow,
  });

  final TfArg<bool>? enabled;

  final OpensearchDomainOffPeakWindow? offPeakWindow;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'off_peak_window': ?offPeakWindow?.encode(),
  };
}

/// Typed helper for the `off_peak_window_options.off_peak_window` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainOffPeakWindow {
  const OpensearchDomainOffPeakWindow({this.windowStartTime});

  final OpensearchDomainWindowStartTime? windowStartTime;

  @internal
  Map<String, Object?> encode() => {
    'window_start_time': ?windowStartTime?.encode(),
  };
}

/// Typed helper for the `off_peak_window_options.off_peak_window.window_start_time` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainWindowStartTime {
  const OpensearchDomainWindowStartTime({this.hours, this.minutes});

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  @internal
  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
  };
}

/// Typed helper for the `snapshot_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainSnapshotOptions {
  const OpensearchDomainSnapshotOptions({
    required this.automatedSnapshotStartHour,
  });

  final TfArg<num> automatedSnapshotStartHour;

  @internal
  Map<String, Object?> encode() => {
    'automated_snapshot_start_hour': automatedSnapshotStartHour.toTfJson(),
  };
}

/// Typed helper for the `software_update_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainSoftwareUpdateOptions {
  const OpensearchDomainSoftwareUpdateOptions({this.autoSoftwareUpdateEnabled});

  final TfArg<bool>? autoSoftwareUpdateEnabled;

  @internal
  Map<String, Object?> encode() => {
    'auto_software_update_enabled': ?autoSoftwareUpdateEnabled?.toTfJson(),
  };
}

/// Typed helper for the `vpc_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainVpcOptions {
  const OpensearchDomainVpcOptions({this.securityGroupIds, this.subnetIds});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_domain`.
final class AwsOpensearchDomain extends Resource {
  static const String tfType = 'aws_opensearch_domain';

  AwsOpensearchDomain(
    super.localName, {
    TfArg<String>? accessPolicies,
    TfArg<Map<String, String>>? advancedOptions,
    required TfArg<String> domainName,
    TfArg<String>? engineVersion,
    OpensearchDomainIpAddressType? ipAddressType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    OpensearchDomainAdvancedSecurityOptions? advancedSecurityOptions,
    OpensearchDomainAimlOptions? aimlOptions,
    OpensearchDomainAutoTuneOptions? autoTuneOptions,
    OpensearchDomainClusterConfig? clusterConfig,
    OpensearchDomainCognitoOptions? cognitoOptions,
    OpensearchDomainDeploymentStrategyOptions? deploymentStrategyOptions,
    OpensearchDomainEndpointOptions? domainEndpointOptions,
    OpensearchDomainEbsOptions? ebsOptions,
    OpensearchDomainEncryptAtRest? encryptAtRest,
    OpensearchDomainIdentityCenterOptions? identityCenterOptions,
    List<OpensearchDomainLogPublishingOptions>? logPublishingOptions,
    OpensearchDomainNodeToNodeEncryption? nodeToNodeEncryption,
    OpensearchDomainOffPeakWindowOptions? offPeakWindowOptions,
    OpensearchDomainSnapshotOptions? snapshotOptions,
    OpensearchDomainSoftwareUpdateOptions? softwareUpdateOptions,
    OpensearchDomainVpcOptions? vpcOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policies': ?accessPolicies,
           'advanced_options': ?advancedOptions,
           'domain_name': domainName,
           'engine_version': ?engineVersion,
           'ip_address_type': ?ipAddressType,
           'region': ?region,
           'tags': ?tags,
           if (advancedSecurityOptions != null)
             'advanced_security_options': TfArg.literal(
               advancedSecurityOptions.encode(),
             ),
           if (aimlOptions != null)
             'aiml_options': TfArg.literal(aimlOptions.encode()),
           if (autoTuneOptions != null)
             'auto_tune_options': TfArg.literal(autoTuneOptions.encode()),
           if (clusterConfig != null)
             'cluster_config': TfArg.literal(clusterConfig.encode()),
           if (cognitoOptions != null)
             'cognito_options': TfArg.literal(cognitoOptions.encode()),
           if (deploymentStrategyOptions != null)
             'deployment_strategy_options': TfArg.literal(
               deploymentStrategyOptions.encode(),
             ),
           if (domainEndpointOptions != null)
             'domain_endpoint_options': TfArg.literal(
               domainEndpointOptions.encode(),
             ),
           if (ebsOptions != null)
             'ebs_options': TfArg.literal(ebsOptions.encode()),
           if (encryptAtRest != null)
             'encrypt_at_rest': TfArg.literal(encryptAtRest.encode()),
           if (identityCenterOptions != null)
             'identity_center_options': TfArg.literal(
               identityCenterOptions.encode(),
             ),
           if (logPublishingOptions != null)
             'log_publishing_options': TfArg.literal([
               for (final e in logPublishingOptions) e.encode(),
             ]),
           if (nodeToNodeEncryption != null)
             'node_to_node_encryption': TfArg.literal(
               nodeToNodeEncryption.encode(),
             ),
           if (offPeakWindowOptions != null)
             'off_peak_window_options': TfArg.literal(
               offPeakWindowOptions.encode(),
             ),
           if (snapshotOptions != null)
             'snapshot_options': TfArg.literal(snapshotOptions.encode()),
           if (softwareUpdateOptions != null)
             'software_update_options': TfArg.literal(
               softwareUpdateOptions.encode(),
             ),
           if (vpcOptions != null)
             'vpc_options': TfArg.literal(vpcOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchDomain>`.
  RefTo<AwsOpensearchDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dashboard_endpoint` attribute.
  TfRef<String> get dashboardEndpoint =>
      TfRef.attribute<String>(this, 'dashboard_endpoint');

  /// Reference to `dashboard_endpoint_v2` attribute.
  TfRef<String> get dashboardEndpointV2 =>
      TfRef.attribute<String>(this, 'dashboard_endpoint_v2');

  /// Reference to `domain_endpoint_v2_hosted_zone_id` attribute.
  TfRef<String> get domainEndpointV2HostedZoneId =>
      TfRef.attribute<String>(this, 'domain_endpoint_v2_hosted_zone_id');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `endpoint_v2` attribute.
  TfRef<String> get endpointV2 => TfRef.attribute<String>(this, 'endpoint_v2');

  /// Reference to `access_policies` attribute.
  TfRef<String> get accessPolicies =>
      TfRef.attribute<String>(this, 'access_policies');

  /// Reference to `advanced_options` attribute.
  TfRef<Map<String, String>> get advancedOptions =>
      TfRef.attribute<Map<String, String>>(this, 'advanced_options');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
