// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_instance`.
const Set<String> _awsNeptuneClusterInstanceSensitive = <String>{};

/// Neptune Cluster Instance enum for `engine`.
enum NeptuneClusterInstanceEngine implements TerraformEnum {
  neptune('neptune');

  const NeptuneClusterInstanceEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `identifier`, `identifier_prefix` on `aws_neptune_cluster_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class NeptuneClusterInstanceIdentifier {
  const NeptuneClusterInstanceIdentifier();

  /// Sets `identifier`.
  const factory NeptuneClusterInstanceIdentifier.identifier(
    TfArg<String> identifier,
  ) = NeptuneClusterInstanceIdentifierChoice;

  /// Sets `identifier_prefix`.
  const factory NeptuneClusterInstanceIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = NeptuneClusterInstanceIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneClusterInstanceIdentifier.identifier] choice: sets `identifier`.
final class NeptuneClusterInstanceIdentifierChoice
    extends NeptuneClusterInstanceIdentifier {
  const NeptuneClusterInstanceIdentifierChoice(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [NeptuneClusterInstanceIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class NeptuneClusterInstanceIdentifierPrefix
    extends NeptuneClusterInstanceIdentifier {
  const NeptuneClusterInstanceIdentifierPrefix(this.identifierPrefix);

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

/// Factory wrapper for `aws_neptune_cluster_instance`.
final class AwsNeptuneClusterInstance extends Resource {
  static const String tfType = 'aws_neptune_cluster_instance';

  AwsNeptuneClusterInstance({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    required TfArg<String> clusterIdentifier,
    TfArg<NeptuneClusterInstanceEngine>? engine,
    TfArg<String>? engineVersion,
    NeptuneClusterInstanceIdentifier? identifier,
    required TfArg<String> instanceClass,
    TfArg<String>? neptuneParameterGroupName,
    TfArg<String>? neptuneSubnetGroupName,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<num>? promotionTier,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
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
           'cluster_identifier': clusterIdentifier,
           'engine': ?engine,
           'engine_version': ?engineVersion,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           'neptune_parameter_group_name': ?neptuneParameterGroupName,
           'neptune_subnet_group_name': ?neptuneSubnetGroupName,
           'port': ?port,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'promotion_tier': ?promotionTier,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneClusterInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneClusterInstance>`.
  RefTo<AwsNeptuneClusterInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dbi_resource_id` attribute.
  TfRef<String> get dbiResourceId =>
      TfRef.attribute<String>(this, 'dbi_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `writer` attribute.
  TfRef<bool> get writer => TfRef.attribute<bool>(this, 'writer');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediatelyRef =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgradeRef =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZoneRef =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifierRef =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifierRef =>
      TfRef.attribute<String>(this, 'identifier');

  /// Reference to `identifier_prefix` attribute.
  TfRef<String> get identifierPrefixRef =>
      TfRef.attribute<String>(this, 'identifier_prefix');

  /// Reference to `instance_class` attribute.
  TfRef<String> get instanceClassRef =>
      TfRef.attribute<String>(this, 'instance_class');

  /// Reference to `neptune_parameter_group_name` attribute.
  TfRef<String> get neptuneParameterGroupNameRef =>
      TfRef.attribute<String>(this, 'neptune_parameter_group_name');

  /// Reference to `neptune_subnet_group_name` attribute.
  TfRef<String> get neptuneSubnetGroupNameRef =>
      TfRef.attribute<String>(this, 'neptune_subnet_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindowRef =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindowRef =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `promotion_tier` attribute.
  TfRef<num> get promotionTierRef =>
      TfRef.attribute<num>(this, 'promotion_tier');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessibleRef =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_final_snapshot` attribute.
  TfRef<bool> get skipFinalSnapshotRef =>
      TfRef.attribute<bool>(this, 'skip_final_snapshot');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
