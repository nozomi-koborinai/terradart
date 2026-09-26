// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy_target`.
const Set<String> _awsDbProxyTargetSensitive = <String>{};

/// Factory wrapper for `aws_db_proxy_target`.
final class AwsDbProxyTarget extends Resource {
  static const String tfType = 'aws_db_proxy_target';

  AwsDbProxyTarget({
    required super.localName,
    TfArg<String>? dbClusterIdentifier,
    TfArg<String>? dbInstanceIdentifier,
    required TfArg<String> dbProxyName,
    TfArg<String>? region,
    required TfArg<String> targetGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dbClusterIdentifier != null)
             'db_cluster_identifier': dbClusterIdentifier,
           if (dbInstanceIdentifier != null)
             'db_instance_identifier': dbInstanceIdentifier,
           'db_proxy_name': dbProxyName,
           if (region != null) 'region': region,
           'target_group_name': targetGroupName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxyTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `rds_resource_id` attribute.
  TfRef<String> get rdsResourceId =>
      TfRef.attribute<String>(this, 'rds_resource_id');

  /// Reference to `target_arn` attribute.
  TfRef<String> get targetArn => TfRef.attribute<String>(this, 'target_arn');

  /// Reference to `tracked_cluster_id` attribute.
  TfRef<String> get trackedClusterId =>
      TfRef.attribute<String>(this, 'tracked_cluster_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
