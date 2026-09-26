// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_replication_config`.
const Set<String> _awsDmsReplicationConfigSensitive = <String>{};

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

  final TfArg<String>? kmsKeyId;

  final TfArg<num>? maxCapacityUnits;

  final TfArg<num>? minCapacityUnits;

  final TfArg<bool>? multiAz;

  final TfArg<String>? preferredMaintenanceWindow;

  final TfArg<String> replicationSubnetGroupId;

  final TfArg<List<Object?>>? vpcSecurityGroupIds;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (dnsNameServers != null) 'dns_name_servers': dnsNameServers!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (maxCapacityUnits != null)
      'max_capacity_units': maxCapacityUnits!.toTfJson(),
    if (minCapacityUnits != null)
      'min_capacity_units': minCapacityUnits!.toTfJson(),
    if (multiAz != null) 'multi_az': multiAz!.toTfJson(),
    if (preferredMaintenanceWindow != null)
      'preferred_maintenance_window': preferredMaintenanceWindow!.toTfJson(),
    'replication_subnet_group_id': replicationSubnetGroupId.toTfJson(),
    if (vpcSecurityGroupIds != null)
      'vpc_security_group_ids': vpcSecurityGroupIds!.toTfJson(),
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
    required TfArg<String> replicationType,
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
           if (region != null) 'region': region,
           'replication_config_identifier': replicationConfigIdentifier,
           if (replicationSettings != null)
             'replication_settings': replicationSettings,
           'replication_type': replicationType,
           if (resourceIdentifier != null)
             'resource_identifier': resourceIdentifier,
           'source_endpoint_arn': sourceEndpointArn,
           if (startReplication != null) 'start_replication': startReplication,
           if (supplementalSettings != null)
             'supplemental_settings': supplementalSettings,
           'table_mappings': tableMappings,
           if (tags != null) 'tags': tags,
           'target_endpoint_arn': targetEndpointArn,
           'compute_config': TfArg.literal(computeConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
