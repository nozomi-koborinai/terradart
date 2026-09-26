// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_global_cluster`.
const Set<String> _awsRdsGlobalClusterSensitive = <String>{};

/// Factory wrapper for `aws_rds_global_cluster`.
final class AwsRdsGlobalCluster extends Resource {
  static const String tfType = 'aws_rds_global_cluster';

  AwsRdsGlobalCluster({
    required super.localName,
    TfArg<String>? databaseName,
    TfArg<bool>? deletionProtection,
    TfArg<String>? engine,
    TfArg<String>? engineLifecycleSupport,
    TfArg<String>? engineVersion,
    TfArg<bool>? forceDestroy,
    required TfArg<String> globalClusterIdentifier,
    TfArg<String>? region,
    TfArg<String>? sourceDbClusterIdentifier,
    TfArg<bool>? storageEncrypted,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (databaseName != null) 'database_name': databaseName,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (engine != null) 'engine': engine,
           if (engineLifecycleSupport != null)
             'engine_lifecycle_support': engineLifecycleSupport,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'global_cluster_identifier': globalClusterIdentifier,
           if (region != null) 'region': region,
           if (sourceDbClusterIdentifier != null)
             'source_db_cluster_identifier': sourceDbClusterIdentifier,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsGlobalClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `global_cluster_members` attribute.
  TfRef<List<Map<String, Object?>>> get globalClusterMembers =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'global_cluster_members',
      );

  /// Reference to `global_cluster_resource_id` attribute.
  TfRef<String> get globalClusterResourceId =>
      TfRef.attribute<String>(this, 'global_cluster_resource_id');
}
