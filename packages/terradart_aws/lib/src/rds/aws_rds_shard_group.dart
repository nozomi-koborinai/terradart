// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_shard_group`.
const Set<String> _awsRdsShardGroupSensitive = <String>{};

/// Factory wrapper for `aws_rds_shard_group`.
final class AwsRdsShardGroup extends Resource {
  static const String tfType = 'aws_rds_shard_group';

  AwsRdsShardGroup({
    required super.localName,
    TfArg<num>? computeRedundancy,
    required TfArg<String> dbClusterIdentifier,
    required TfArg<String> dbShardGroupIdentifier,
    required TfArg<num> maxAcu,
    TfArg<num>? minAcu,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compute_redundancy': ?computeRedundancy,
           'db_cluster_identifier': dbClusterIdentifier,
           'db_shard_group_identifier': dbShardGroupIdentifier,
           'max_acu': maxAcu,
           'min_acu': ?minAcu,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsShardGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsShardGroup>`.
  RefTo<AwsRdsShardGroup> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `db_shard_group_resource_id` attribute.
  TfRef<String> get dbShardGroupResourceId =>
      TfRef.attribute<String>(this, 'db_shard_group_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
