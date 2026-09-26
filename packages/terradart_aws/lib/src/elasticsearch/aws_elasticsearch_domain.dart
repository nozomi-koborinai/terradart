// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticsearch_domain`.
const Set<String> _awsElasticsearchDomainSensitive = <String>{
  'advanced_security_options.master_user_options.master_user_password',
};

/// Typed helper for the `advanced_security_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAdvancedSecurityOptions {
  const ElasticsearchDomainAdvancedSecurityOptions({
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.masterUserOptions,
  });

  final TfArg<bool> enabled;

  final TfArg<bool>? internalUserDatabaseEnabled;

  final ElasticsearchDomainAdvancedSecurityOptionsMasterUserOptions?
  masterUserOptions;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (internalUserDatabaseEnabled != null)
      'internal_user_database_enabled': internalUserDatabaseEnabled!.toTfJson(),
    if (masterUserOptions != null)
      'master_user_options': masterUserOptions!.encode(),
  };
}

/// Typed helper for the `advanced_security_options.master_user_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAdvancedSecurityOptionsMasterUserOptions {
  const ElasticsearchDomainAdvancedSecurityOptionsMasterUserOptions({
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

/// Typed helper for the `auto_tune_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAutoTuneOptions {
  const ElasticsearchDomainAutoTuneOptions({
    required this.desiredState,
    this.rollbackOnDisable,
    this.maintenanceSchedule,
  });

  final TfArg<String> desiredState;

  final TfArg<String>? rollbackOnDisable;

  final List<ElasticsearchDomainAutoTuneOptionsMaintenanceSchedule>?
  maintenanceSchedule;

  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    if (rollbackOnDisable != null)
      'rollback_on_disable': rollbackOnDisable!.toTfJson(),
    if (maintenanceSchedule != null)
      'maintenance_schedule': [
        for (final e in maintenanceSchedule!) e.encode(),
      ],
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAutoTuneOptionsMaintenanceSchedule {
  const ElasticsearchDomainAutoTuneOptionsMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.startAt,
    required this.duration,
  });

  final TfArg<String> cronExpressionForRecurrence;

  final TfArg<String> startAt;

  final ElasticsearchDomainAutoTuneOptionsMaintenanceScheduleDuration duration;

  Map<String, Object?> encode() => {
    'cron_expression_for_recurrence': cronExpressionForRecurrence.toTfJson(),
    'start_at': startAt.toTfJson(),
    'duration': duration.encode(),
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule.duration` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAutoTuneOptionsMaintenanceScheduleDuration {
  const ElasticsearchDomainAutoTuneOptionsMaintenanceScheduleDuration({
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
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainClusterConfig {
  const ElasticsearchDomainClusterConfig({
    this.dedicatedMasterCount,
    this.dedicatedMasterEnabled,
    this.dedicatedMasterType,
    this.instanceCount,
    this.instanceType,
    this.warmCount,
    this.warmEnabled,
    this.warmType,
    this.zoneAwarenessEnabled,
    this.coldStorageOptions,
    this.zoneAwarenessConfig,
  });

  final TfArg<num>? dedicatedMasterCount;

  final TfArg<bool>? dedicatedMasterEnabled;

  final TfArg<String>? dedicatedMasterType;

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<num>? warmCount;

  final TfArg<bool>? warmEnabled;

  final TfArg<String>? warmType;

  final TfArg<bool>? zoneAwarenessEnabled;

  final ElasticsearchDomainClusterConfigColdStorageOptions? coldStorageOptions;

  final ElasticsearchDomainClusterConfigZoneAwarenessConfig?
  zoneAwarenessConfig;

  Map<String, Object?> encode() => {
    if (dedicatedMasterCount != null)
      'dedicated_master_count': dedicatedMasterCount!.toTfJson(),
    if (dedicatedMasterEnabled != null)
      'dedicated_master_enabled': dedicatedMasterEnabled!.toTfJson(),
    if (dedicatedMasterType != null)
      'dedicated_master_type': dedicatedMasterType!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (warmCount != null) 'warm_count': warmCount!.toTfJson(),
    if (warmEnabled != null) 'warm_enabled': warmEnabled!.toTfJson(),
    if (warmType != null) 'warm_type': warmType!.toTfJson(),
    if (zoneAwarenessEnabled != null)
      'zone_awareness_enabled': zoneAwarenessEnabled!.toTfJson(),
    if (coldStorageOptions != null)
      'cold_storage_options': coldStorageOptions!.encode(),
    if (zoneAwarenessConfig != null)
      'zone_awareness_config': zoneAwarenessConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.cold_storage_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainClusterConfigColdStorageOptions {
  const ElasticsearchDomainClusterConfigColdStorageOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.zone_awareness_config` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainClusterConfigZoneAwarenessConfig {
  const ElasticsearchDomainClusterConfigZoneAwarenessConfig({
    this.availabilityZoneCount,
  });

  final TfArg<num>? availabilityZoneCount;

  Map<String, Object?> encode() => {
    if (availabilityZoneCount != null)
      'availability_zone_count': availabilityZoneCount!.toTfJson(),
  };
}

/// Typed helper for the `cognito_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainCognitoOptions {
  const ElasticsearchDomainCognitoOptions({
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

/// Typed helper for the `domain_endpoint_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainDomainEndpointOptions {
  const ElasticsearchDomainDomainEndpointOptions({
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
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainEbsOptions {
  const ElasticsearchDomainEbsOptions({
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
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainEncryptAtRest {
  const ElasticsearchDomainEncryptAtRest({
    required this.enabled,
    this.kmsKeyId,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
  };
}

/// Typed helper for the `log_publishing_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainLogPublishingOptions {
  const ElasticsearchDomainLogPublishingOptions({
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
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainNodeToNodeEncryption {
  const ElasticsearchDomainNodeToNodeEncryption({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `snapshot_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainSnapshotOptions {
  const ElasticsearchDomainSnapshotOptions({
    required this.automatedSnapshotStartHour,
  });

  final TfArg<num> automatedSnapshotStartHour;

  Map<String, Object?> encode() => {
    'automated_snapshot_start_hour': automatedSnapshotStartHour.toTfJson(),
  };
}

/// Typed helper for the `vpc_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainVpcOptions {
  const ElasticsearchDomainVpcOptions({this.securityGroupIds, this.subnetIds});

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticsearch_domain`.
final class AwsElasticsearchDomain extends Resource {
  static const String tfType = 'aws_elasticsearch_domain';

  AwsElasticsearchDomain({
    required super.localName,
    TfArg<String>? accessPolicies,
    TfArg<Map<String, String>>? advancedOptions,
    required TfArg<String> domainName,
    TfArg<String>? elasticsearchVersion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ElasticsearchDomainAdvancedSecurityOptions? advancedSecurityOptions,
    ElasticsearchDomainAutoTuneOptions? autoTuneOptions,
    ElasticsearchDomainClusterConfig? clusterConfig,
    ElasticsearchDomainCognitoOptions? cognitoOptions,
    ElasticsearchDomainDomainEndpointOptions? domainEndpointOptions,
    ElasticsearchDomainEbsOptions? ebsOptions,
    ElasticsearchDomainEncryptAtRest? encryptAtRest,
    List<ElasticsearchDomainLogPublishingOptions>? logPublishingOptions,
    ElasticsearchDomainNodeToNodeEncryption? nodeToNodeEncryption,
    ElasticsearchDomainSnapshotOptions? snapshotOptions,
    ElasticsearchDomainVpcOptions? vpcOptions,
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
           if (elasticsearchVersion != null)
             'elasticsearch_version': elasticsearchVersion,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (advancedSecurityOptions != null)
             'advanced_security_options': TfArg.literal(
               advancedSecurityOptions.encode(),
             ),
           if (autoTuneOptions != null)
             'auto_tune_options': TfArg.literal(autoTuneOptions.encode()),
           if (clusterConfig != null)
             'cluster_config': TfArg.literal(clusterConfig.encode()),
           if (cognitoOptions != null)
             'cognito_options': TfArg.literal(cognitoOptions.encode()),
           if (domainEndpointOptions != null)
             'domain_endpoint_options': TfArg.literal(
               domainEndpointOptions.encode(),
             ),
           if (ebsOptions != null)
             'ebs_options': TfArg.literal(ebsOptions.encode()),
           if (encryptAtRest != null)
             'encrypt_at_rest': TfArg.literal(encryptAtRest.encode()),
           if (logPublishingOptions != null)
             'log_publishing_options': TfArg.literal([
               for (final e in logPublishingOptions) e.encode(),
             ]),
           if (nodeToNodeEncryption != null)
             'node_to_node_encryption': TfArg.literal(
               nodeToNodeEncryption.encode(),
             ),
           if (snapshotOptions != null)
             'snapshot_options': TfArg.literal(snapshotOptions.encode()),
           if (vpcOptions != null)
             'vpc_options': TfArg.literal(vpcOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticsearchDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `kibana_endpoint` attribute.
  TfRef<String> get kibanaEndpoint =>
      TfRef.attribute<String>(this, 'kibana_endpoint');
}
