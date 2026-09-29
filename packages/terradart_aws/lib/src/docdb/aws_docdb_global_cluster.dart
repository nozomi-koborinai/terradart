// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_global_cluster`.
const Set<String> _awsDocdbGlobalClusterSensitive = <String>{};

/// Docdb Global Cluster enum for `engine`.
enum DocdbGlobalClusterEngine implements TerraformEnum {
  docdb('docdb');

  const DocdbGlobalClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `engine`, `source_db_cluster_identifier` on `aws_docdb_global_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.engine(...)`.
sealed class DocdbGlobalClusterSource {
  const DocdbGlobalClusterSource();

  /// Sets `engine`.
  const factory DocdbGlobalClusterSource.engine(
    TfArg<DocdbGlobalClusterEngine> engine,
  ) = DocdbGlobalClusterSourceEngine;

  /// Sets `source_db_cluster_identifier`.
  const factory DocdbGlobalClusterSource.sourceDbClusterIdentifier(
    TfArg<String> sourceDbClusterIdentifier,
  ) = DocdbGlobalClusterSourceSourceDbClusterIdentifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbGlobalClusterSource.engine] choice: sets `engine`.
final class DocdbGlobalClusterSourceEngine extends DocdbGlobalClusterSource {
  const DocdbGlobalClusterSourceEngine(this.engine);

  final TfArg<DocdbGlobalClusterEngine> engine;

  @override
  String get blockKey => 'engine';

  @override
  Map<String, Object?> encode() => {'engine': engine.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'engine': engine};
}

/// The [DocdbGlobalClusterSource.sourceDbClusterIdentifier] choice: sets `source_db_cluster_identifier`.
final class DocdbGlobalClusterSourceSourceDbClusterIdentifier
    extends DocdbGlobalClusterSource {
  const DocdbGlobalClusterSourceSourceDbClusterIdentifier(
    this.sourceDbClusterIdentifier,
  );

  final TfArg<String> sourceDbClusterIdentifier;

  @override
  String get blockKey => 'source_db_cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'source_db_cluster_identifier': sourceDbClusterIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_db_cluster_identifier': sourceDbClusterIdentifier,
  };
}

/// Factory wrapper for `aws_docdb_global_cluster`.
final class AwsDocdbGlobalCluster extends Resource {
  static const String tfType = 'aws_docdb_global_cluster';

  AwsDocdbGlobalCluster({
    required super.localName,
    TfArg<String>? databaseName,
    TfArg<bool>? deletionProtection,
    required DocdbGlobalClusterSource source,
    TfArg<String>? engineVersion,
    required TfArg<String> globalClusterIdentifier,
    TfArg<String>? region,
    TfArg<bool>? storageEncrypted,
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
           ...source.argMap,
           if (engineVersion != null) 'engine_version': engineVersion,
           'global_cluster_identifier': globalClusterIdentifier,
           if (region != null) 'region': region,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbGlobalClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `global_cluster_members` attribute.
  TfRef<List<Map<String, Object?>>> get globalClusterMembers =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'global_cluster_members',
      );

  /// Reference to `global_cluster_resource_id` attribute.
  TfRef<String> get globalClusterResourceId =>
      TfRef.attribute<String>(this, 'global_cluster_resource_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
