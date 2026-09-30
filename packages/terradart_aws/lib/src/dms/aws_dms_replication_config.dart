// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_dms_replication_config`.
const Set<String> _awsDmsReplicationConfigSensitive = <String>{};

/// Dms Replication Config Replication enum for `replication_type`.
enum DmsReplicationConfigReplicationType implements TerraformEnum {
  fullLoad('full-load'),
  cdc('cdc'),
  fullLoadAndCdc('full-load-and-cdc');

  const DmsReplicationConfigReplicationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_config` block of
/// `aws_dms_replication_config` (derived from provider schema).
@immutable
final class DmsReplicationConfigComputeConfig {
  const DmsReplicationConfigComputeConfig({
    this.availabilityZone,
    this.dnsNameServers,
    this.kmsKeyId,
    this.maxCapacityUnits,
    this.minCapacityUnits,
    this.multiAz,
    this.preferredMaintenanceWindow,
    required this.replicationSubnetGroupId,
    this.vpcSecurityGroupIds,
  });

  final TfArg<String>? availabilityZone;

  final TfArg<String>? dnsNameServers;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<num>? maxCapacityUnits;

  final TfArg<num>? minCapacityUnits;

  final TfArg<bool>? multiAz;

  final TfArg<String>? preferredMaintenanceWindow;

  final TfArg<String> replicationSubnetGroupId;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds;

  Map<String, Object?> encode() => {
    'availability_zone': ?availabilityZone?.toTfJson(),
    'dns_name_servers': ?dnsNameServers?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'max_capacity_units': ?maxCapacityUnits?.toTfJson(),
    'min_capacity_units': ?minCapacityUnits?.toTfJson(),
    'multi_az': ?multiAz?.toTfJson(),
    'preferred_maintenance_window': ?preferredMaintenanceWindow?.toTfJson(),
    'replication_subnet_group_id': replicationSubnetGroupId.toTfJson(),
    'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_dms_replication_config`.
final class AwsDmsReplicationConfig extends Resource {
  static const String tfType = 'aws_dms_replication_config';

  AwsDmsReplicationConfig({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationConfigIdentifier,
    TfArg<String>? replicationSettings,
    required TfArg<DmsReplicationConfigReplicationType> replicationType,
    TfArg<String>? resourceIdentifier,
    required TfArg<String> sourceEndpointArn,
    TfArg<bool>? startReplication,
    TfArg<String>? supplementalSettings,
    required TfArg<String> tableMappings,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetEndpointArn,
    required DmsReplicationConfigComputeConfig computeConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'replication_config_identifier': replicationConfigIdentifier,
           'replication_settings': ?replicationSettings,
           'replication_type': replicationType,
           'resource_identifier': ?resourceIdentifier,
           'source_endpoint_arn': sourceEndpointArn,
           'start_replication': ?startReplication,
           'supplemental_settings': ?supplementalSettings,
           'table_mappings': tableMappings,
           'tags': ?tags,
           'target_endpoint_arn': targetEndpointArn,
           'compute_config': TfArg.literal(computeConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsReplicationConfig>`.
  RefTo<AwsDmsReplicationConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_config_identifier` attribute.
  TfRef<String> get replicationConfigIdentifierRef =>
      TfRef.attribute<String>(this, 'replication_config_identifier');

  /// Reference to `replication_settings` attribute.
  TfRef<String> get replicationSettingsRef =>
      TfRef.attribute<String>(this, 'replication_settings');

  /// Reference to `replication_type` attribute.
  TfRef<String> get replicationTypeRef =>
      TfRef.attribute<String>(this, 'replication_type');

  /// Reference to `resource_identifier` attribute.
  TfRef<String> get resourceIdentifierRef =>
      TfRef.attribute<String>(this, 'resource_identifier');

  /// Reference to `source_endpoint_arn` attribute.
  TfRef<String> get sourceEndpointArnRef =>
      TfRef.attribute<String>(this, 'source_endpoint_arn');

  /// Reference to `start_replication` attribute.
  TfRef<bool> get startReplicationRef =>
      TfRef.attribute<bool>(this, 'start_replication');

  /// Reference to `supplemental_settings` attribute.
  TfRef<String> get supplementalSettingsRef =>
      TfRef.attribute<String>(this, 'supplemental_settings');

  /// Reference to `table_mappings` attribute.
  TfRef<String> get tableMappingsRef =>
      TfRef.attribute<String>(this, 'table_mappings');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_endpoint_arn` attribute.
  TfRef<String> get targetEndpointArnRef =>
      TfRef.attribute<String>(this, 'target_endpoint_arn');
}
