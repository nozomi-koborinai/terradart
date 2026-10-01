// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_global_cluster`.
const Set<String> _awsRdsGlobalClusterSensitive = <String>{};

/// Rds Global Cluster enum for `engine`.
enum RdsGlobalClusterEngine implements TerraformEnum {
  aurora('aurora'),
  auroraMysql('aurora-mysql'),
  auroraPostgresql('aurora-postgresql');

  const RdsGlobalClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Global Cluster Engine Lifecycle enum for `engine_lifecycle_support`.
enum RdsGlobalClusterEngineLifecycleSupport implements TerraformEnum {
  openSourceRdsExtendedSupport('open-source-rds-extended-support'),
  openSourceRdsExtendedSupportDisabled(
    'open-source-rds-extended-support-disabled',
  );

  const RdsGlobalClusterEngineLifecycleSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rds_global_cluster`.
final class AwsRdsGlobalCluster extends Resource {
  static const String tfType = 'aws_rds_global_cluster';

  AwsRdsGlobalCluster({
    required super.localName,
    TfArg<String>? databaseName,
    TfArg<bool>? deletionProtection,
    TfArg<RdsGlobalClusterEngine>? engine,
    TfArg<RdsGlobalClusterEngineLifecycleSupport>? engineLifecycleSupport,
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
           'database_name': ?databaseName,
           'deletion_protection': ?deletionProtection,
           'engine': ?engine,
           'engine_lifecycle_support': ?engineLifecycleSupport,
           'engine_version': ?engineVersion,
           'force_destroy': ?forceDestroy,
           'global_cluster_identifier': globalClusterIdentifier,
           'region': ?region,
           'source_db_cluster_identifier': ?sourceDbClusterIdentifier,
           'storage_encrypted': ?storageEncrypted,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsGlobalClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsGlobalCluster>`.
  RefTo<AwsRdsGlobalCluster> get ref => RefTo.of(this);

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

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_lifecycle_support` attribute.
  TfRef<String> get engineLifecycleSupport =>
      TfRef.attribute<String>(this, 'engine_lifecycle_support');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `global_cluster_identifier` attribute.
  TfRef<String> get globalClusterIdentifier =>
      TfRef.attribute<String>(this, 'global_cluster_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_db_cluster_identifier` attribute.
  TfRef<String> get sourceDbClusterIdentifier =>
      TfRef.attribute<String>(this, 'source_db_cluster_identifier');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
