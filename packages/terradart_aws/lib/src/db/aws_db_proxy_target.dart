// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy_target`.
const Set<String> _awsDbProxyTargetSensitive = <String>{};

/// Exactly one of `db_cluster_identifier`, `db_instance_identifier` on `aws_db_proxy_target`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dbClusterIdentifier(...)`.
sealed class DbProxyTargetDatabase {
  const DbProxyTargetDatabase();

  /// Sets `db_cluster_identifier`.
  const factory DbProxyTargetDatabase.dbClusterIdentifier(
    TfArg<String> dbClusterIdentifier,
  ) = DbProxyTargetDatabaseDbClusterIdentifier;

  /// Sets `db_instance_identifier`.
  const factory DbProxyTargetDatabase.dbInstanceIdentifier(
    TfArg<String> dbInstanceIdentifier,
  ) = DbProxyTargetDatabaseDbInstanceIdentifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbProxyTargetDatabase.dbClusterIdentifier] choice: sets `db_cluster_identifier`.
final class DbProxyTargetDatabaseDbClusterIdentifier
    extends DbProxyTargetDatabase {
  const DbProxyTargetDatabaseDbClusterIdentifier(this.dbClusterIdentifier);

  final TfArg<String> dbClusterIdentifier;

  @override
  String get blockKey => 'db_cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'db_cluster_identifier': dbClusterIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'db_cluster_identifier': dbClusterIdentifier,
  };
}

/// The [DbProxyTargetDatabase.dbInstanceIdentifier] choice: sets `db_instance_identifier`.
final class DbProxyTargetDatabaseDbInstanceIdentifier
    extends DbProxyTargetDatabase {
  const DbProxyTargetDatabaseDbInstanceIdentifier(this.dbInstanceIdentifier);

  final TfArg<String> dbInstanceIdentifier;

  @override
  String get blockKey => 'db_instance_identifier';

  @override
  Map<String, Object?> encode() => {
    'db_instance_identifier': dbInstanceIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'db_instance_identifier': dbInstanceIdentifier,
  };
}

/// Factory wrapper for `aws_db_proxy_target`.
final class AwsDbProxyTarget extends Resource {
  static const String tfType = 'aws_db_proxy_target';

  AwsDbProxyTarget({
    required super.localName,
    required DbProxyTargetDatabase database,
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
           ...database.argMap,
           'db_proxy_name': dbProxyName,
           'region': ?region,
           'target_group_name': targetGroupName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxyTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbProxyTarget>`.
  RefTo<AwsDbProxyTarget> get ref => RefTo.of(this);

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
