// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_global_cluster`.
const Set<String> _awsDocdbGlobalClusterSensitive = <String>{};

/// Docdb Global Cluster enum for `engine`.
extension type const DocdbGlobalClusterEngine._(TfArg<String> _)
    implements TfArg<String> {
  DocdbGlobalClusterEngine.variable(String name) : this._(TfArg.variable(name));
  DocdbGlobalClusterEngine.expression(String template)
    : this._(TfArg.expression(template));
  const DocdbGlobalClusterEngine.arg(TfArg<String> arg) : this._(arg);

  static const docdb = DocdbGlobalClusterEngine._(TfArgLiteral('docdb'));

  static const List<DocdbGlobalClusterEngine> values = [docdb];
}

/// Exactly one of `engine`, `source_db_cluster_identifier` on `aws_docdb_global_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.engine(...)`.
sealed class DocdbGlobalClusterSource {
  const DocdbGlobalClusterSource();

  /// Sets `engine`.
  const factory DocdbGlobalClusterSource.engine(
    DocdbGlobalClusterEngine engine,
  ) = DocdbGlobalClusterSourceEngine;

  /// Sets `source_db_cluster_identifier`.
  const factory DocdbGlobalClusterSource.sourceDbClusterIdentifier(
    TfArg<String> sourceDbClusterIdentifier,
  ) = DocdbGlobalClusterSourceDbClusterIdentifier;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbGlobalClusterSource.engine] choice: sets `engine`.
final class DocdbGlobalClusterSourceEngine extends DocdbGlobalClusterSource {
  const DocdbGlobalClusterSourceEngine(this.engine);

  final DocdbGlobalClusterEngine engine;

  @internal
  @override
  String get blockKey => 'engine';

  @internal
  @override
  Map<String, Object?> encode() => {'engine': engine.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'engine': engine};
}

/// The [DocdbGlobalClusterSource.sourceDbClusterIdentifier] choice: sets `source_db_cluster_identifier`.
final class DocdbGlobalClusterSourceDbClusterIdentifier
    extends DocdbGlobalClusterSource {
  const DocdbGlobalClusterSourceDbClusterIdentifier(
    this.sourceDbClusterIdentifier,
  );

  final TfArg<String> sourceDbClusterIdentifier;

  @internal
  @override
  String get blockKey => 'source_db_cluster_identifier';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_db_cluster_identifier': sourceDbClusterIdentifier.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_db_cluster_identifier': sourceDbClusterIdentifier,
  };
}

/// Factory wrapper for `aws_docdb_global_cluster`.
final class AwsDocdbGlobalCluster extends Resource {
  static const String tfType = 'aws_docdb_global_cluster';

  AwsDocdbGlobalCluster(
    super.localName, {
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
           'database_name': ?databaseName,
           'deletion_protection': ?deletionProtection,
           ...source.argMap,
           'engine_version': ?engineVersion,
           'global_cluster_identifier': globalClusterIdentifier,
           'region': ?region,
           'storage_encrypted': ?storageEncrypted,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbGlobalClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbGlobalCluster>`.
  RefTo<AwsDocdbGlobalCluster> get ref => RefTo.of(this);

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

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

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
}
