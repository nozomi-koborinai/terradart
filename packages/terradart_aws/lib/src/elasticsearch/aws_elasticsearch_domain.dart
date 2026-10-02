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

  final ElasticsearchDomainMasterUserOptions? masterUserOptions;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'internal_user_database_enabled': ?internalUserDatabaseEnabled?.toTfJson(),
    'master_user_options': ?masterUserOptions?.encode(),
  };
}

/// Typed helper for the `advanced_security_options.master_user_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainMasterUserOptions {
  const ElasticsearchDomainMasterUserOptions({
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

/// Typed helper for the `auto_tune_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainAutoTuneOptions {
  const ElasticsearchDomainAutoTuneOptions({
    required this.desiredState,
    this.rollbackOnDisable,
    this.maintenanceSchedule,
  });

  final ElasticsearchDomainDesiredState desiredState;

  final ElasticsearchDomainRollbackOnDisable? rollbackOnDisable;

  final List<ElasticsearchDomainMaintenanceSchedule>? maintenanceSchedule;

  @internal
  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    'rollback_on_disable': ?rollbackOnDisable?.toTfJson(),
    if (maintenanceSchedule != null)
      'maintenance_schedule': [
        for (final e in maintenanceSchedule!) e.encode(),
      ],
  };
}

/// `desired_state` — derived from the provider schema description.
extension type const ElasticsearchDomainDesiredState._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  ElasticsearchDomainDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainDesiredState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ElasticsearchDomainDesiredState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = ElasticsearchDomainDesiredState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<ElasticsearchDomainDesiredState> values = [
    enabled,
    disabled,
  ];
}

/// `rollback_on_disable` — derived from the provider schema description.
extension type const ElasticsearchDomainRollbackOnDisable._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainRollbackOnDisable.variable(String name)
    : this._(TfArg.variable(name));
  ElasticsearchDomainRollbackOnDisable.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainRollbackOnDisable.arg(TfArg<String> arg)
    : this._(arg);

  static const noRollback = ElasticsearchDomainRollbackOnDisable._(
    TfArgLiteral('NO_ROLLBACK'),
  );
  static const defaultRollback = ElasticsearchDomainRollbackOnDisable._(
    TfArgLiteral('DEFAULT_ROLLBACK'),
  );

  static const List<ElasticsearchDomainRollbackOnDisable> values = [
    noRollback,
    defaultRollback,
  ];
}

/// Typed helper for the `auto_tune_options.maintenance_schedule` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainMaintenanceSchedule {
  const ElasticsearchDomainMaintenanceSchedule({
    required this.cronExpressionForRecurrence,
    required this.startAt,
    required this.duration,
  });

  final TfArg<String> cronExpressionForRecurrence;

  final TfArg<String> startAt;

  final ElasticsearchDomainDuration duration;

  @internal
  Map<String, Object?> encode() => {
    'cron_expression_for_recurrence': cronExpressionForRecurrence.toTfJson(),
    'start_at': startAt.toTfJson(),
    'duration': duration.encode(),
  };
}

/// Typed helper for the `auto_tune_options.maintenance_schedule.duration` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainDuration {
  const ElasticsearchDomainDuration({required this.unit, required this.value});

  final ElasticsearchDomainUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
extension type const ElasticsearchDomainUnit._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainUnit.variable(String name) : this._(TfArg.variable(name));
  ElasticsearchDomainUnit.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainUnit.arg(TfArg<String> arg) : this._(arg);

  static const hours = ElasticsearchDomainUnit._(TfArgLiteral('HOURS'));

  static const List<ElasticsearchDomainUnit> values = [hours];
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

  final ElasticsearchDomainColdStorageOptions? coldStorageOptions;

  final ElasticsearchDomainZoneAwarenessConfig? zoneAwarenessConfig;

  @internal
  Map<String, Object?> encode() => {
    'dedicated_master_count': ?dedicatedMasterCount?.toTfJson(),
    'dedicated_master_enabled': ?dedicatedMasterEnabled?.toTfJson(),
    'dedicated_master_type': ?dedicatedMasterType?.toTfJson(),
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'warm_count': ?warmCount?.toTfJson(),
    'warm_enabled': ?warmEnabled?.toTfJson(),
    'warm_type': ?warmType?.toTfJson(),
    'zone_awareness_enabled': ?zoneAwarenessEnabled?.toTfJson(),
    'cold_storage_options': ?coldStorageOptions?.encode(),
    'zone_awareness_config': ?zoneAwarenessConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.cold_storage_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainColdStorageOptions {
  const ElasticsearchDomainColdStorageOptions({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `cluster_config.zone_awareness_config` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainZoneAwarenessConfig {
  const ElasticsearchDomainZoneAwarenessConfig({this.availabilityZoneCount});

  final TfArg<num>? availabilityZoneCount;

  @internal
  Map<String, Object?> encode() => {
    'availability_zone_count': ?availabilityZoneCount?.toTfJson(),
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

/// Typed helper for the `domain_endpoint_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainEndpointOptions {
  const ElasticsearchDomainEndpointOptions({
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

  final ElasticsearchDomainTlsSecurityPolicy? tlsSecurityPolicy;

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
extension type const ElasticsearchDomainTlsSecurityPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainTlsSecurityPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ElasticsearchDomainTlsSecurityPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainTlsSecurityPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const policyMinTls10201907 = ElasticsearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-0-2019-07'),
  );
  static const policyMinTls12201907 = ElasticsearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-2-2019-07'),
  );
  static const policyMinTls12Pfs202310 = ElasticsearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-2-PFS-2023-10'),
  );
  static const policyMinTls12Rfc9151Fips202408 =
      ElasticsearchDomainTlsSecurityPolicy._(
        TfArgLiteral('Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08'),
      );

  static const List<ElasticsearchDomainTlsSecurityPolicy> values = [
    policyMinTls10201907,
    policyMinTls12201907,
    policyMinTls12Pfs202310,
    policyMinTls12Rfc9151Fips202408,
  ];
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

  final ElasticsearchDomainVolumeType? volumeType;

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
extension type const ElasticsearchDomainVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  ElasticsearchDomainVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = ElasticsearchDomainVolumeType._(
    TfArgLiteral('standard'),
  );
  static const gp2 = ElasticsearchDomainVolumeType._(TfArgLiteral('gp2'));
  static const io1 = ElasticsearchDomainVolumeType._(TfArgLiteral('io1'));
  static const gp3 = ElasticsearchDomainVolumeType._(TfArgLiteral('gp3'));

  static const List<ElasticsearchDomainVolumeType> values = [
    standard,
    gp2,
    io1,
    gp3,
  ];
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
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

  final RefTo<AwsCloudwatchLogGroup> cloudwatchLogGroupArn;

  final TfArg<bool>? enabled;

  final ElasticsearchDomainLogType logType;

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
extension type const ElasticsearchDomainLogType._(TfArg<String> _)
    implements TfArg<String> {
  ElasticsearchDomainLogType.variable(String name)
    : this._(TfArg.variable(name));
  ElasticsearchDomainLogType.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticsearchDomainLogType.arg(TfArg<String> arg) : this._(arg);

  static const indexSlowLogs = ElasticsearchDomainLogType._(
    TfArgLiteral('INDEX_SLOW_LOGS'),
  );
  static const searchSlowLogs = ElasticsearchDomainLogType._(
    TfArgLiteral('SEARCH_SLOW_LOGS'),
  );
  static const esApplicationLogs = ElasticsearchDomainLogType._(
    TfArgLiteral('ES_APPLICATION_LOGS'),
  );
  static const auditLogs = ElasticsearchDomainLogType._(
    TfArgLiteral('AUDIT_LOGS'),
  );

  static const List<ElasticsearchDomainLogType> values = [
    indexSlowLogs,
    searchSlowLogs,
    esApplicationLogs,
    auditLogs,
  ];
}

/// Typed helper for the `node_to_node_encryption` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainNodeToNodeEncryption {
  const ElasticsearchDomainNodeToNodeEncryption({required this.enabled});

  final TfArg<bool> enabled;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'automated_snapshot_start_hour': automatedSnapshotStartHour.toTfJson(),
  };
}

/// Typed helper for the `vpc_options` block of
/// `aws_elasticsearch_domain` (derived from provider schema).
@immutable
final class ElasticsearchDomainVpcOptions {
  const ElasticsearchDomainVpcOptions({this.securityGroupIds, this.subnetIds});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticsearch_domain`.
final class AwsElasticsearchDomain extends Resource {
  static const String tfType = 'aws_elasticsearch_domain';

  AwsElasticsearchDomain(
    super.localName, {
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
    ElasticsearchDomainEndpointOptions? domainEndpointOptions,
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
           'access_policies': ?accessPolicies,
           'advanced_options': ?advancedOptions,
           'domain_name': domainName,
           'elasticsearch_version': ?elasticsearchVersion,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticsearchDomain>`.
  RefTo<AwsElasticsearchDomain> get ref => RefTo.of(this);

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

  /// Reference to `access_policies` attribute.
  TfRef<String> get accessPolicies =>
      TfRef.attribute<String>(this, 'access_policies');

  /// Reference to `advanced_options` attribute.
  TfRef<Map<String, String>> get advancedOptions =>
      TfRef.attribute<Map<String, String>>(this, 'advanced_options');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `elasticsearch_version` attribute.
  TfRef<String> get elasticsearchVersion =>
      TfRef.attribute<String>(this, 'elasticsearch_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
