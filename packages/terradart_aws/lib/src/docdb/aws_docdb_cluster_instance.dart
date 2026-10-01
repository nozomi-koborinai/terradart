// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_docdb_cluster_instance`.
const Set<String> _awsDocdbClusterInstanceSensitive = <String>{};

/// Docdb Cluster Instance enum for `engine`.
extension type const DocdbClusterInstanceEngine._(TfArg<String> _)
    implements TfArg<String> {
  DocdbClusterInstanceEngine.variable(String name)
    : this._(TfArg.variable(name));
  DocdbClusterInstanceEngine.expression(String template)
    : this._(TfArg.expression(template));
  const DocdbClusterInstanceEngine.arg(TfArg<String> arg) : this._(arg);

  static const docdb = DocdbClusterInstanceEngine._(TfArgLiteral('docdb'));

  static const List<DocdbClusterInstanceEngine> values = [docdb];
}

/// At most one of `identifier`, `identifier_prefix` on `aws_docdb_cluster_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifier();

  /// Sets `identifier`.
  const factory DocdbClusterInstanceIdentifier.identifier(
    TfArg<String> identifier,
  ) = DocdbClusterInstanceIdentifierChoice;

  /// Sets `identifier_prefix`.
  const factory DocdbClusterInstanceIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = DocdbClusterInstanceIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterInstanceIdentifier.identifier] choice: sets `identifier`.
final class DocdbClusterInstanceIdentifierChoice
    extends DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifierChoice(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [DocdbClusterInstanceIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class DocdbClusterInstanceIdentifierPrefix
    extends DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifierPrefix(this.identifierPrefix);

  final TfArg<String> identifierPrefix;

  @override
  String get blockKey => 'identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'identifier_prefix': identifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'identifier_prefix': identifierPrefix,
  };
}

/// Factory wrapper for `aws_docdb_cluster_instance`.
final class AwsDocdbClusterInstance extends Resource {
  static const String tfType = 'aws_docdb_cluster_instance';

  AwsDocdbClusterInstance(
    super.localName, {
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<String>? caCertIdentifier,
    TfArg<String>? certificateRotationRestart,
    required TfArg<String> clusterIdentifier,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<bool>? enablePerformanceInsights,
    DocdbClusterInstanceEngine? engine,
    DocdbClusterInstanceIdentifier? identifier,
    required TfArg<String> instanceClass,
    RefTo<AwsKmsKey>? performanceInsightsKmsKeyId,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<num>? promotionTier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zone': ?availabilityZone,
           'ca_cert_identifier': ?caCertIdentifier,
           'certificate_rotation_restart': ?certificateRotationRestart,
           'cluster_identifier': clusterIdentifier,
           'copy_tags_to_snapshot': ?copyTagsToSnapshot,
           'enable_performance_insights': ?enablePerformanceInsights,
           'engine': ?engine,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           'performance_insights_kms_key_id': ?performanceInsightsKmsKeyId
               ?.encodeAs('arn'),
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'promotion_tier': ?promotionTier,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbClusterInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbClusterInstance>`.
  RefTo<AwsDocdbClusterInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `db_subnet_group_name` attribute.
  TfRef<String> get dbSubnetGroupName =>
      TfRef.attribute<String>(this, 'db_subnet_group_name');

  /// Reference to `dbi_resource_id` attribute.
  TfRef<String> get dbiResourceId =>
      TfRef.attribute<String>(this, 'dbi_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindow =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `writer` attribute.
  TfRef<bool> get writer => TfRef.attribute<bool>(this, 'writer');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `ca_cert_identifier` attribute.
  TfRef<String> get caCertIdentifier =>
      TfRef.attribute<String>(this, 'ca_cert_identifier');

  /// Reference to `certificate_rotation_restart` attribute.
  TfRef<String> get certificateRotationRestart =>
      TfRef.attribute<String>(this, 'certificate_rotation_restart');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `copy_tags_to_snapshot` attribute.
  TfRef<bool> get copyTagsToSnapshot =>
      TfRef.attribute<bool>(this, 'copy_tags_to_snapshot');

  /// Reference to `enable_performance_insights` attribute.
  TfRef<bool> get enablePerformanceInsights =>
      TfRef.attribute<bool>(this, 'enable_performance_insights');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `identifier_prefix` attribute.
  TfRef<String> get identifierPrefix =>
      TfRef.attribute<String>(this, 'identifier_prefix');

  /// Reference to `instance_class` attribute.
  TfRef<String> get instanceClass =>
      TfRef.attribute<String>(this, 'instance_class');

  /// Reference to `performance_insights_kms_key_id` attribute.
  TfRef<String> get performanceInsightsKmsKeyId =>
      TfRef.attribute<String>(this, 'performance_insights_kms_key_id');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `promotion_tier` attribute.
  TfRef<num> get promotionTier => TfRef.attribute<num>(this, 'promotion_tier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
