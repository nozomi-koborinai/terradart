// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_replication_subnet_group`.
const Set<String> _awsDmsReplicationSubnetGroupSensitive = <String>{};

/// Factory wrapper for `aws_dms_replication_subnet_group`.
final class AwsDmsReplicationSubnetGroup extends Resource {
  static const String tfType = 'aws_dms_replication_subnet_group';

  AwsDmsReplicationSubnetGroup({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationSubnetGroupDescription,
    required TfArg<String> replicationSubnetGroupId,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'replication_subnet_group_description':
               replicationSubnetGroupDescription,
           'replication_subnet_group_id': replicationSubnetGroupId,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationSubnetGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replication_subnet_group_arn` attribute.
  TfRef<String> get replicationSubnetGroupArn =>
      TfRef.attribute<String>(this, 'replication_subnet_group_arn');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
