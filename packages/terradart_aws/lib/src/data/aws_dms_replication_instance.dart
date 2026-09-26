// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_replication_instance`.
const Set<String> _awsDmsReplicationInstanceSensitive = <String>{};

/// Factory wrapper for `aws_dms_replication_instance`.
final class DataAwsDmsReplicationInstance extends Data {
  static const String tfType = 'aws_dms_replication_instance';

  DataAwsDmsReplicationInstance({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationInstanceId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'replication_instance_id': replicationInstanceId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `replication_instance_arn` attribute.
  TfRef<String> get replicationInstanceArn =>
      TfRef.attribute<String>(this, 'replication_instance_arn');

  /// Reference to `replication_instance_class` attribute.
  TfRef<String> get replicationInstanceClass =>
      TfRef.attribute<String>(this, 'replication_instance_class');

  /// Reference to `replication_instance_private_ips` attribute.
  TfRef<List<String>> get replicationInstancePrivateIps =>
      TfRef.attribute<List<String>>(this, 'replication_instance_private_ips');

  /// Reference to `replication_instance_public_ips` attribute.
  TfRef<List<String>> get replicationInstancePublicIps =>
      TfRef.attribute<List<String>>(this, 'replication_instance_public_ips');

  /// Reference to `replication_subnet_group_id` attribute.
  TfRef<String> get replicationSubnetGroupId =>
      TfRef.attribute<String>(this, 'replication_subnet_group_id');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
