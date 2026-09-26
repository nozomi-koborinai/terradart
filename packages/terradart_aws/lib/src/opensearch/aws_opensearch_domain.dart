// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_domain`.
const Set<String> _awsOpensearchDomainSensitive = <String>{
  'advanced_security_options.master_user_options.master_user_password',
};

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

  final OpensearchDomainAdvancedSecurityOptionsJwtOptions? jwtOptions;

  final OpensearchDomainAdvancedSecurityOptionsMasterUserOptions?
  masterUserOptions;

  Map<String, Object?> encode() => {
    if (anonymousAuthEnabled != null)
      'anonymous_auth_enabled': anonymousAuthEnabled!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (internalUserDatabaseEnabled != null)
      'internal_user_database_enabled': internalUserDatabaseEnabled!.toTfJson(),
    if (jwtOptions != null) 'jwt_options': jwtOptions!.encode(),
    if (masterUserOptions != null)
      'master_user_options': masterUserOptions!.encode(),
  };
}

/// Typed helper for the `advanced_security_options.jwt_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAdvancedSecurityOptionsJwtOptions {
  const OpensearchDomainAdvancedSecurityOptionsJwtOptions({
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (jwksUrl != null) 'jwks_url': jwksUrl!.toTfJson(),
    if (publicKey != null) 'public_key': publicKey!.toTfJson(),
    if (rolesKey != null) 'roles_key': rolesKey!.toTfJson(),
    if (subjectKey != null) 'subject_key': subjectKey!.toTfJson(),
  };
}

/// Typed helper for the `advanced_security_options.master_user_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAdvancedSecurityOptionsMasterUserOptions {
  const OpensearchDomainAdvancedSecurityOptionsMasterUserOptions({
    this.masterUserArn,
    this.masterUserName,
    this.masterUserPassword,
  });

  final TfArg<String>? masterUserArn;

  final TfArg<String>? masterUserName;

  final TfArg<String>? masterUserPassword;

  Map<String, Object?> encode() => {
    if (masterUserArn != null) 'master_user_arn': masterUserArn!.toTfJson(),
    if (masterUserName != null) 'master_user_name': masterUserName!.toTfJson(),
    if (masterUserPassword != null)
      'master_user_password': masterUserPassword!.toTfJson(),
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

  final OpensearchDomainAimlOptionsNaturalLanguageQueryGenerationOptions?
  naturalLanguageQueryGenerationOptions;

  final OpensearchDomainAimlOptionsS3VectorsEngine? s3VectorsEngine;

  final OpensearchDomainAimlOptionsServerlessVectorAcceleration?
  serverlessVectorAcceleration;

  Map<String, Object?> encode() => {
    if (naturalLanguageQueryGenerationOptions != null)
      'natural_language_query_generation_options':
          naturalLanguageQueryGenerationOptions!.encode(),
    if (s3VectorsEngine != null) 's3_vectors_engine': s3VectorsEngine!.encode(),
    if (serverlessVectorAcceleration != null)
      'serverless_vector_acceleration': serverlessVectorAcceleration!.encode(),
  };
}

/// Typed helper for the `aiml_options.natural_language_query_generation_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAimlOptionsNaturalLanguageQueryGenerationOptions {
  const OpensearchDomainAimlOptionsNaturalLanguageQueryGenerationOptions({
    this.desiredState,
  });

  final TfArg<String>? desiredState;

  Map<String, Object?> encode() => {
    if (desiredState != null) 'desired_state': desiredState!.toTfJson(),
  };
}

/// Typed helper for the `aiml_options.s3_vectors_engine` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAimlOptionsS3VectorsEngine {
  const OpensearchDomainAimlOptionsS3VectorsEngine({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `aiml_options.serverless_vector_acceleration` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAimlOptionsServerlessVectorAcceleration {
  const OpensearchDomainAimlOptionsServerlessVectorAcceleration({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
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

  final TfArg<String> desiredState;

  final TfArg<String>? rollbackOnDisable;

  final TfArg<bool>? useOffPeakWindow;

  final List<OpensearchDomainAutoTuneOptionsMaintenanceSchedule>?
  maintenanceSchedule;

  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    if (rollbackOnDisable != null)
      'rollback_on_disable': rollbackOnDisable!.toTfJson(),
    if (useOffPeakWindow != null)
      'use_off_peak_window': useOffPeakWindow!.toTfJson(),
    if (maintenanceSchedule != null)
      'maintenance_schedule': [
        for (final e in maintenanceSchedule!) e.encode(),
      ],
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAutoTuneOptionsMaintenanceSchedule {
  const OpensearchDomainAutoTuneOptionsMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.startAt,
    required this.duration,
  });

  final TfArg<String> cronExpressionForRecurrence;

  final TfArg<String> startAt;

  final OpensearchDomainAutoTuneOptionsMaintenanceScheduleDuration duration;

  Map<String, Object?> encode() => {
    'cron_expression_for_recurrence': cronExpressionForRecurrence.toTfJson(),
    'start_at': startAt.toTfJson(),
    'duration': duration.encode(),
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule.duration` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainAutoTuneOptionsMaintenanceScheduleDuration {
  const OpensearchDomainAutoTuneOptionsMaintenanceScheduleDuration({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
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

  final TfArg<String>? warmType;

  final TfArg<bool>? zoneAwarenessEnabled;

  final OpensearchDomainClusterConfigColdStorageOptions? coldStorageOptions;

  final List<OpensearchDomainClusterConfigNodeOptions>? nodeOptions;

  final OpensearchDomainClusterConfigZoneAwarenessConfig? zoneAwarenessConfig;

  Map<String, Object?> encode() => {
    if (dedicatedMasterCount != null)
      'dedicated_master_count': dedicatedMasterCount!.toTfJson(),
    if (dedicatedMasterEnabled != null)
      'dedicated_master_enabled': dedicatedMasterEnabled!.toTfJson(),
    if (dedicatedMasterType != null)
      'dedicated_master_type': dedicatedMasterType!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (multiAzWithStandbyEnabled != null)
      'multi_az_with_standby_enabled': multiAzWithStandbyEnabled!.toTfJson(),
    if (warmCount != null) 'warm_count': warmCount!.toTfJson(),
    if (warmEnabled != null) 'warm_enabled': warmEnabled!.toTfJson(),
    if (warmType != null) 'warm_type': warmType!.toTfJson(),
    if (zoneAwarenessEnabled != null)
      'zone_awareness_enabled': zoneAwarenessEnabled!.toTfJson(),
    if (coldStorageOptions != null)
      'cold_storage_options': coldStorageOptions!.encode(),
    if (nodeOptions != null)
      'node_options': [for (final e in nodeOptions!) e.encode()],
    if (zoneAwarenessConfig != null)
      'zone_awareness_config': zoneAwarenessConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.cold_storage_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainClusterConfigColdStorageOptions {
  const OpensearchDomainClusterConfigColdStorageOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.node_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainClusterConfigNodeOptions {
  const OpensearchDomainClusterConfigNodeOptions({
    this.nodeType,
    this.nodeConfig,
  });

  final TfArg<String>? nodeType;

  final OpensearchDomainClusterConfigNodeOptionsNodeConfig? nodeConfig;

  Map<String, Object?> encode() => {
    if (nodeType != null) 'node_type': nodeType!.toTfJson(),
    if (nodeConfig != null) 'node_config': nodeConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.node_options.node_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainClusterConfigNodeOptionsNodeConfig {
  const OpensearchDomainClusterConfigNodeOptionsNodeConfig({
    this.count,
    this.enabled,
    this.type,
  });

  final TfArg<num>? count;

  final TfArg<bool>? enabled;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.zone_awareness_config` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainClusterConfigZoneAwarenessConfig {
  const OpensearchDomainClusterConfigZoneAwarenessConfig({
    this.availabilityZoneCount,
  });

  final TfArg<num>? availabilityZoneCount;

  Map<String, Object?> encode() => {
    if (availabilityZoneCount != null)
      'availability_zone_count': availabilityZoneCount!.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<String> userPoolId;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'identity_pool_id': identityPoolId.toTfJson(),
    'role_arn': roleArn.toTfJson(),
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

  final TfArg<String> deploymentStrategy;

  Map<String, Object?> encode() => {
    'deployment_strategy': deploymentStrategy.toTfJson(),
  };
}

/// Typed helper for the `domain_endpoint_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainDomainEndpointOptions {
  const OpensearchDomainDomainEndpointOptions({
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

  final TfArg<String>? tlsSecurityPolicy;

  Map<String, Object?> encode() => {
    if (customEndpoint != null) 'custom_endpoint': customEndpoint!.toTfJson(),
    if (customEndpointCertificateArn != null)
      'custom_endpoint_certificate_arn': customEndpointCertificateArn!
          .toTfJson(),
    if (customEndpointEnabled != null)
      'custom_endpoint_enabled': customEndpointEnabled!.toTfJson(),
    if (enforceHttps != null) 'enforce_https': enforceHttps!.toTfJson(),
    if (tlsSecurityPolicy != null)
      'tls_security_policy': tlsSecurityPolicy!.toTfJson(),
  };
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

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    'ebs_enabled': ebsEnabled.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `encrypt_at_rest` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainEncryptAtRest {
  const OpensearchDomainEncryptAtRest({required this.enabled, this.kmsKeyId});

  final TfArg<bool> enabled;

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
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

  final TfArg<String>? rolesKey;

  final TfArg<String>? subjectKey;

  Map<String, Object?> encode() => {
    if (enabledApiAccess != null)
      'enabled_api_access': enabledApiAccess!.toTfJson(),
    if (identityCenterInstanceArn != null)
      'identity_center_instance_arn': identityCenterInstanceArn!.toTfJson(),
    if (rolesKey != null) 'roles_key': rolesKey!.toTfJson(),
    if (subjectKey != null) 'subject_key': subjectKey!.toTfJson(),
  };
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

  final TfArg<String> cloudwatchLogGroupArn;

  final TfArg<bool>? enabled;

  final TfArg<String> logType;

  Map<String, Object?> encode() => {
    'cloudwatch_log_group_arn': cloudwatchLogGroupArn.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'log_type': logType.toTfJson(),
  };
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

  final OpensearchDomainOffPeakWindowOptionsOffPeakWindow? offPeakWindow;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (offPeakWindow != null) 'off_peak_window': offPeakWindow!.encode(),
  };
}

/// Typed helper for the `off_peak_window_options.off_peak_window` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainOffPeakWindowOptionsOffPeakWindow {
  const OpensearchDomainOffPeakWindowOptionsOffPeakWindow({
    this.windowStartTime,
  });

  final OpensearchDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime?
  windowStartTime;

  Map<String, Object?> encode() => {
    if (windowStartTime != null) 'window_start_time': windowStartTime!.encode(),
  };
}

/// Typed helper for the `off_peak_window_options.off_peak_window.window_start_time` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  const OpensearchDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    this.hours,
    this.minutes,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  Map<String, Object?> encode() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
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
    if (autoSoftwareUpdateEnabled != null)
      'auto_software_update_enabled': autoSoftwareUpdateEnabled!.toTfJson(),
  };
}

/// Typed helper for the `vpc_options` block of
/// `aws_opensearch_domain` (derived from provider schema).
@immutable
final class OpensearchDomainVpcOptions {
  const OpensearchDomainVpcOptions({this.securityGroupIds, this.subnetIds});

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
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
    TfArg<String>? ipAddressType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    OpensearchDomainAdvancedSecurityOptions? advancedSecurityOptions,
    OpensearchDomainAimlOptions? aimlOptions,
    OpensearchDomainAutoTuneOptions? autoTuneOptions,
    OpensearchDomainClusterConfig? clusterConfig,
    OpensearchDomainCognitoOptions? cognitoOptions,
    OpensearchDomainDeploymentStrategyOptions? deploymentStrategyOptions,
    OpensearchDomainDomainEndpointOptions? domainEndpointOptions,
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
           if (accessPolicies != null) 'access_policies': accessPolicies,
           if (advancedOptions != null) 'advanced_options': advancedOptions,
           'domain_name': domainName,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
}
