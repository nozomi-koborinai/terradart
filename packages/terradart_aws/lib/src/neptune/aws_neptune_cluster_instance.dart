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
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           'cluster_identifier': clusterIdentifier,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           if (neptuneParameterGroupName != null)
             'neptune_parameter_group_name': neptuneParameterGroupName,
           if (neptuneSubnetGroupName != null)
             'neptune_subnet_group_name': neptuneSubnetGroupName,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (promotionTier != null) 'promotion_tier': promotionTier,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (tags != null) 'tags': tags,
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
}
