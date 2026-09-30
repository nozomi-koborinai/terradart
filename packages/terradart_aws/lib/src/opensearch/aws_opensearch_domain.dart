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
enum OpensearchDomainIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack');

  const OpensearchDomainIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<String>? masterUserPassword;

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

  final TfArg<OpensearchDomainDesiredState>? desiredState;

  Map<String, Object?> encode() => {'desired_state': ?desiredState?.toTfJson()};
}

/// `desired_state` — derived from the provider schema description.
enum OpensearchDomainDesiredState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const OpensearchDomainDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `aiml_options.s3_vectors_engine` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainS3VectorsEngine {
  const OpensearchDomainS3VectorsEngine({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `aiml_options.serverless_vector_acceleration` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainServerlessVectorAcceleration {
  const OpensearchDomainServerlessVectorAcceleration({this.enabled});

  final TfArg<bool>? enabled;

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

  final TfArg<OpensearchDomainDesiredState> desiredState;

  final TfArg<OpensearchDomainRollbackOnDisable>? rollbackOnDisable;

  final TfArg<bool>? useOffPeakWindow;

  final List<OpensearchDomainMaintenanceSchedule>? maintenanceSchedule;

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
enum OpensearchDomainRollbackOnDisable implements TerraformEnum {
  noRollback('NO_ROLLBACK'),
  defaultRollback('DEFAULT_ROLLBACK');

  const OpensearchDomainRollbackOnDisable(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<OpensearchDomainUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum OpensearchDomainUnit implements TerraformEnum {
  hours('HOURS');

  const OpensearchDomainUnit(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<OpensearchDomainWarmType>? warmType;

  final TfArg<bool>? zoneAwarenessEnabled;

  final OpensearchDomainColdStorageOptions? coldStorageOptions;

  final List<OpensearchDomainNodeOptions>? nodeOptions;

  final OpensearchDomainZoneAwarenessConfig? zoneAwarenessConfig;

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
enum OpensearchDomainWarmType implements TerraformEnum {
  ultrawarm1MediumSearch('ultrawarm1.medium.search'),
  ultrawarm1LargeSearch('ultrawarm1.large.search'),
  ultrawarm1XlargeSearch('ultrawarm1.xlarge.search');

  const OpensearchDomainWarmType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster_config.cold_storage_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainColdStorageOptions {
  const OpensearchDomainColdStorageOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `cluster_config.node_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeOptions {
  const OpensearchDomainNodeOptions({this.nodeType, this.nodeConfig});

  final TfArg<OpensearchDomainNodeType>? nodeType;

  final OpensearchDomainNodeConfig? nodeConfig;

  Map<String, Object?> encode() => {
    'node_type': ?nodeType?.toTfJson(),
    'node_config': ?nodeConfig?.encode(),
  };
}

/// `node_type` — derived from the provider schema description.
enum OpensearchDomainNodeType implements TerraformEnum {
  coordinator('coordinator');

  const OpensearchDomainNodeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster_config.node_options.node_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeConfig {
  const OpensearchDomainNodeConfig({this.count, this.enabled, this.type});

  final TfArg<num>? count;

  final TfArg<bool>? enabled;

  final TfArg<String>? type;

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

  final TfArg<OpensearchDomainDeploymentStrategy> deploymentStrategy;

  Map<String, Object?> encode() => {
    'deployment_strategy': deploymentStrategy.toTfJson(),
  };
}

/// `deployment_strategy` — derived from the provider schema description.
enum OpensearchDomainDeploymentStrategy implements TerraformEnum {
  defaultCase('Default'),
  capacityoptimized('CapacityOptimized');

  const OpensearchDomainDeploymentStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<OpensearchDomainTlsSecurityPolicy>? tlsSecurityPolicy;

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
enum OpensearchDomainTlsSecurityPolicy implements TerraformEnum {
  policyMinTls10201907('Policy-Min-TLS-1-0-2019-07'),
  policyMinTls12201907('Policy-Min-TLS-1-2-2019-07'),
  policyMinTls12Pfs202310('Policy-Min-TLS-1-2-PFS-2023-10'),
  policyMinTls12Rfc9151Fips202408('Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08');

  const OpensearchDomainTlsSecurityPolicy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<OpensearchDomainVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'ebs_enabled': ebsEnabled.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum OpensearchDomainVolumeType implements TerraformEnum {
  standard('standard'),
  gp2('gp2'),
  io1('io1'),
  gp3('gp3');

  const OpensearchDomainVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encrypt_at_rest` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainEncryptAtRest {
  const OpensearchDomainEncryptAtRest({required this.enabled, this.kmsKeyId});

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? kmsKeyId;

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

  final TfArg<OpensearchDomainRolesKey>? rolesKey;

  final TfArg<OpensearchDomainSubjectKey>? subjectKey;

  Map<String, Object?> encode() => {
    'enabled_api_access': ?enabledApiAccess?.toTfJson(),
    'identity_center_instance_arn': ?identityCenterInstanceArn?.toTfJson(),
    'roles_key': ?rolesKey?.toTfJson(),
    'subject_key': ?subjectKey?.toTfJson(),
  };
}

/// `roles_key` — derived from the provider schema description.
enum OpensearchDomainRolesKey implements TerraformEnum {
  groupname('GroupName'),
  groupid('GroupId');

  const OpensearchDomainRolesKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// `subject_key` — derived from the provider schema description.
enum OpensearchDomainSubjectKey implements TerraformEnum {
  username('UserName'),
  userid('UserId'),
  email('Email');

  const OpensearchDomainSubjectKey(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<OpensearchDomainLogType> logType;

  Map<String, Object?> encode() => {
    'cloudwatch_log_group_arn': cloudwatchLogGroupArn
        .encodeAs('arn')
        .toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `log_type` — derived from the provider schema description.
enum OpensearchDomainLogType implements TerraformEnum {
  indexSlowLogs('INDEX_SLOW_LOGS'),
  searchSlowLogs('SEARCH_SLOW_LOGS'),
  esApplicationLogs('ES_APPLICATION_LOGS'),
  auditLogs('AUDIT_LOGS');

  const OpensearchDomainLogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `node_to_node_encryption` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainNodeToNodeEncryption {
  const OpensearchDomainNodeToNodeEncryption({required this.enabled});

  final TfArg<bool> enabled;

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

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_domain`.
final class AwsOpensearchDomain extends Resource {
  static const String tfType = 'aws_opensearch_domain';

  AwsOpensearchDomain({
    required super.localName,
    TfArg<String>? accessPolicies,
    TfArg<Map<String, String>>? advancedOptions,
    required TfArg<String> domainName,
    TfArg<String>? engineVersion,
    TfArg<OpensearchDomainIpAddressType>? ipAddressType,
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
  TfRef<String> get accessPoliciesRef =>
      TfRef.attribute<String>(this, 'access_policies');

  /// Reference to `advanced_options` attribute.
  TfRef<Map<String, String>> get advancedOptionsRef =>
      TfRef.attribute<Map<String, String>>(this, 'advanced_options');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainNameRef =>
      TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressTypeRef =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
