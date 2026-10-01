// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dms/aws_dms_replication_subnet_group.dart';

/// Sensitive field paths for `aws_dms_replication_subnet_group`.
const Set<String> _awsDmsReplicationSubnetGroupSensitive = <String>{};

/// Factory wrapper for `aws_dms_replication_subnet_group`.
final class DataAwsDmsReplicationSubnetGroup extends Data {
  static const String tfType = 'aws_dms_replication_subnet_group';

  DataAwsDmsReplicationSubnetGroup({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationSubnetGroupId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'replication_subnet_group_id': replicationSubnetGroupId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationSubnetGroupSensitive;

  /// A reference to the `aws_dms_replication_subnet_group` this data source reads, for
  /// arguments typed `RefTo<AwsDmsReplicationSubnetGroup>`.
  RefTo<AwsDmsReplicationSubnetGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replication_subnet_group_arn` attribute.
  TfRef<String> get replicationSubnetGroupArn =>
      TfRef.attribute<String>(this, 'replication_subnet_group_arn');

  /// Reference to `replication_subnet_group_description` attribute.
  TfRef<String> get replicationSubnetGroupDescription =>
      TfRef.attribute<String>(this, 'replication_subnet_group_description');

  /// Reference to `subnet_group_status` attribute.
  TfRef<String> get subnetGroupStatus =>
      TfRef.attribute<String>(this, 'subnet_group_status');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_subnet_group_id` attribute.
  TfRef<String> get replicationSubnetGroupId =>
      TfRef.attribute<String>(this, 'replication_subnet_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
